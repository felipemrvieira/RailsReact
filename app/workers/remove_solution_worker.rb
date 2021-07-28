class RemoveSolutionWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    Solution.destroy_all
  end

end