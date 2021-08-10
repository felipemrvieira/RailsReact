class Solution < ApplicationRecord
  enum solution_of:           { mitigation: 0, adaptation: 1, mitigation_and_adaptation: 2 }
  enum fundamental_sector:    { public_sector: 0, private_sector: 1, public_and_private_sectors: 2 }
  enum impact_on_emissions:   { reduction: 0, neutralization: 1, removal: 2 }
  enum sphere:                { state: 0, municipal: 1, cross: 2 }
end
