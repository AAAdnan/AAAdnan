def calculator (operation, first_number, second_number)
  case operation
  when '+' then result = (first_number + second_number)
  when '-' then result = (first_number - second_number)
  when 'x' then result = (first_number * second_number)
  when '/' then result = (first_number / second_number)
  else result == "Error"
  end

  p result
end
