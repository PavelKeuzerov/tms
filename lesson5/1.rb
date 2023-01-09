
# array = [1]
# array.push(3)
# array.pop

def valid?(str)
  bracket_mapping = { ')' => '(', ']' => '[', '}' => '{' }
  stack = []

  str.each_char do |bracket|
    if ['(', '[', '{'].include?(bracket)
      stack.push(bracket)
    elsif [')', ']', '}'].include?(bracket)
      return false if stack.size == 0
      return false if bracket_mapping [bracket] != stack.last

      stack.pop
    end
  end

    stack.size == 0 
end

p valid?('([{}])')
