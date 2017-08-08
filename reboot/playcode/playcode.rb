class String
  def camelcase(string)
    @string = string
    array = string.split
    array.map! do |word|
      word.capitalize
    end
  array.join
  end
end

p 'hello case'.camelcase
