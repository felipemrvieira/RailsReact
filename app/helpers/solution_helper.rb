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

end
