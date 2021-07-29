class AddAttributesToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :number, :string
  end
end
