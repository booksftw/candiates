# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
  # Your code Here
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
  # Your code Here
end

# More methods will go below

def test?(something)
  # Your code Here
  nzTest = yield
  puts 'run experiencedzzz'
  return true
end
