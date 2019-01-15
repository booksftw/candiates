# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
  # Your code Here
  @candidates.each do |el|
    # logic to check if id match else null
    if el[:id] == id
      puts 'found match'
      return el
    end
  end
  return nil
end

def experienced?(candidate)
  # Your code Here
  yearExp = candidate[:years_of_experience]
  if yearExp > 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates)

  arry = []
  # Your code Here
  candidates.each do |el|
    if experienced? (el)
      arry.push(el)
    elsif el[:github_points] > 100
      arry.push(el)
    elsif el[:languages].include?("Ruby") || el[:languages].include?("JavaScript")
      arry.push(el)
    elsif Date.today - el[:date_applied] < 16
      arry.push(el)
    elsif el[:age > 17]
      arry.push(el)
    end
  end
  return arry
end

# More methods will go below

def ordered_by_qualifications(candiates)
  # Candidates with the most experience are at the top
  return candiates.sort_by { | obj | [obj[:years_of_experience], obj[:github_points]] }
  # return candiates.sort! { |a, b| b[:years_of_experience] <=> a[:years_of_experience] }

  # return candiates.sort_by {|:years_of_experience, :github_points|[ :github_points, :years_of_experience]}

  # return candiates.sort { | a, b |  }
  # array.sort { |a,b| [ a[1], a[0] ] <=> [ b[1], b[0] ] }


  # For Candidates that have the same years of experience, 
  #they are further sorted by their number of Github points (highest first)
end