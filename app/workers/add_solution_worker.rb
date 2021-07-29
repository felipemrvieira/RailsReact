class AddSolutionWorker
  require 'csv'
  require 'roo'
  include Sidekiq::Worker
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
      solution = Solution.create(number: record[0], title: record[3], description: record[4])
    end

  end


end