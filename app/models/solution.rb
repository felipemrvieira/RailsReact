class Solution < ApplicationRecord
  enum solution_of:           { mitigation: 0, adaptation: 1, mitigation_and_adaptation: 2 }
  enum fundamental_sector:    { public_sector: 0, private_sector: 1, public_and_private_sectors: 2 }
  enum impact_on_emissions:   { reduction: 0, neutralization: 1, removal: 2 }
  enum sphere:                { state: 0, municipal: 1, cross: 2 }

  # active flag gem implements bitwise operation to select multiple values
  flag :applicable_regions, [:north, :north_east, :midwest, :southeast, :south]
  flag :applicable_population_ranges, [:range_1, :range_2, :range_3, :range_4, 
    :range_5, :range_6, :range_7]
  flag :sustainable_development_goals, [:ods_01, :ods_02, :ods_03, :ods_04, 
    :ods_05, :ods_06, :ods_07, :ods_08, :ods_09, :ods_10, :ods_11, :ods_12, 
    :ods_13, :ods_14, :ods_15, :ods_16, :ods_17]
end