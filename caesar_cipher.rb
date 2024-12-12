def caesar_cipher(string, shift)
  str_arr = string.split("")
  new_arr = []

  str_arr.each do |char|
    unless char.between?("a", "z") 
      new_arr << char.chr
      next
    end

    shift.times do
      char.succ!
    end
    new_arr << char.chr
  end

  new_arr.join
end

puts caesar_cipher("I'll mail you a grilled cheese sandwich!", 10)