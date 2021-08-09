class AddTextAttributesToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :guiding_public_policies, :text
    add_column :solutions, :technical_references, :text
    add_column :solutions, :examples_of_municipal_application, :text
    add_column :solutions, :action_category, :text
    add_column :solutions, :environmental_cobenefits, :text
    add_column :solutions, :social_cobenefits, :text
    add_column :solutions, :economic_cobenefits, :text
    add_column :solutions, :municipal_operating_mode, :text
    add_column :solutions, :alignment_with_ndc, :text
    add_column :solutions, :necessary_investment, :text
    add_column :solutions, :financing, :text
    add_column :solutions, :key_actors, :text
    add_column :solutions, :challenges, :text
    add_column :solutions, :implementation_time, :text
  end
end
