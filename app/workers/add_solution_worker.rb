class AddSolutionWorker
  require 'csv'
  require 'roo'
  include Sidekiq::Worker
  include SolutionHelper
  sidekiq_options retry: false

  # def perform(csv_file)
  #   CSV.foreach(csv_file, headers: true) do |solution|
  #     Solution.create(title: solution[0], description: solution[1])
  #   end
  # end

  def perform(xlsx_file)
    Solution.destroy_all

    xlsx = Roo::Spreadsheet.open(xlsx_file)
    xlsx.default_sheet = xlsx.sheets[1]

    (3..xlsx.last_row).each do |row|
      record = xlsx.row(row)

      # attributes with _ are pending
      solution = Solution.create(
        number: record[0],
        # _sector: record[1],
        # _subsector: record[2],
        title: record[3],
        description: record[4],
        solution_of: solution_of_helper(record[5]),
        guiding_public_policies: record[6],
        technical_references: record[7],
        examples_of_municipal_application: record[8],
        # _: record[9],
        # _: record[10],
        fundamental_sector: fundamental_sector_helper(record[11]),
        impact_on_emissions: impact_on_emissions_helper(record[12]),
        action_category: record[13],
        # _: record[14],
        environmental_cobenefits: record[15],
        social_cobenefits: record[16],
        economic_cobenefits: record[17],
        sphere: sphere_helper(record[18]),
        municipal_operating_mode: record[19],
        alignment_with_ndc: record[20],
        necessary_investment: record[21],
        financing: record[22],
        key_actors: record[23],
        challenges: record[24],
        implementation_time: record[25]
      )
    end
  end
end