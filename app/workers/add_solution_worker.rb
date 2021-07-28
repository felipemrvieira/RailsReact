class AddSolutionWorker
  require 'csv'
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(csv_file)
    CSV.foreach(csv_file, headers: true) do |solution|
    Solution.create(title: solution[0], description: solution[1])
  end
 end
end