def calculate(expression)

    operatorIndex = expression.index(/[*\/+-]/)
    if operatorIndex == nil
        return expression.to_f
    end

    operand1 = expression[0, operatorIndex]
    operand2 = expression[operatorIndex+1..]
    operator = expression[operatorIndex]
    if (operator == '+')
        return operand1.to_f + operand2.to_f
    elsif (operator == '-')
        return operand1.to_f - operand2.to_f
    elsif (operator == '*')
        return operand1.to_f * operand2.to_f
    elsif (operator == '/')
        return operand1.to_f / operand2.to_f
    end

end

puts "Input any arithmetic expression"
expression = gets.chomp
result = calculate(expression)
puts "Result = #{result}"