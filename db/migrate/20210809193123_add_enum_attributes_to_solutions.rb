class AddEnumAttributesToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :solution_of, :integer, default: 0
    add_column :solutions, :fundamental_sector, :integer, default: 0
    add_column :solutions, :impact_on_emissions, :integer, default: 0
    add_column :solutions, :sphere, :integer, default: 0
  end
end
