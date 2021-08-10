module SolutionHelper
  
  def solution_of_helper(solution)
    case solution
    when "mitigação"
      0
    when "adaptação"
      1
    when "mitigação e adaptação"
      2
    else
      0
    end

  end

  def fundamental_sector_helper(solution)
    case solution
    when "Setor público"
      0
    when "Setor privado"
      1
    when "Setor público e setor privado"
      2
    else
      0
    end
  end
  
  def impact_on_emissions_helper(solution)
    case solution
    when "1 - Redução"
      0
    when "2 - Neutraliza"
      1
    when "3 - De fonte de emissão para fonte de remoção"
      2
    else
      0
    end
  end
  
  def sphere_helper(solution)
    case solution
    when "Estadual"
      0
    when "Municipal"
      1
    when "Transversal"
      2
    else
      0
    end
  end

  def applicable_regions_helper(solution)
    
    regions = []

    regions << :north if solution.include?("Norte")
    regions << :north_east if solution.include?("Nordeste")
    regions << :midwest if solution.include?("Centro-Oeste")
    regions << :southeast if solution.include?("Sudeste")
    regions << :south if solution.include?("Sul")
    
    regions
  end

  def applicable_population_ranges_helper(solution)
    ranges = []

    ranges << :range_1 if solution.include?("Faixa I (0 a 10 mil)")
    ranges << :range_2 if solution.include?("Faixa II (10 mil a 50 mil)")
    ranges << :range_3 if solution.include?("Faixa III (50 mil a 100 mil)")
    ranges << :range_4 if solution.include?("Faixa IV (100 mil a 500 mil)")
    ranges << :range_5 if solution.include?("Faixa V (500 mil a 1 milhão)")
    ranges << :range_6 if solution.include?("Faixa VI (1 milhão a 5 milhões)")
    ranges << :range_7 if solution.include?("Faixa VII (>5 milhões)")
    
    ranges
  end
  
  def sustainable_development_goals_helper(solution)
    goals = []

    goals << :ods_01 if solution.include?("ODS 01")
    goals << :ods_02 if solution.include?("ODS 02")
    goals << :ods_03 if solution.include?("ODS 03")
    goals << :ods_04 if solution.include?("ODS 04")
    goals << :ods_05 if solution.include?("ODS 05")
    goals << :ods_06 if solution.include?("ODS 06")
    goals << :ods_07 if solution.include?("ODS 07")
    goals << :ods_08 if solution.include?("ODS 08")
    goals << :ods_09 if solution.include?("ODS 09")
    goals << :ods_10 if solution.include?("ODS 10")
    goals << :ods_11 if solution.include?("ODS 11")
    goals << :ods_12 if solution.include?("ODS 12")
    goals << :ods_13 if solution.include?("ODS 13")
    goals << :ods_14 if solution.include?("ODS 14")
    goals << :ods_15 if solution.include?("ODS 15")
    goals << :ods_16 if solution.include?("ODS 16")
    goals << :ods_17 if solution.include?("ODS 17")
    
    goals
  end

end
