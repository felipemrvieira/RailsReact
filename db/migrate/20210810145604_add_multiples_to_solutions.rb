class AddMultiplesToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :applicable_regions, :integer, null: false, default: 0, limit: 8
    add_column :solutions, :applicable_population_ranges, :integer, null: false, default: 0, limit: 8
    add_column :solutions, :sustainable_development_goals, :integer, null: false, default: 0, limit: 8
  end
end
