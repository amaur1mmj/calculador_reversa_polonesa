#require_relative 'stack'
require_relative 'CP/posfix'
require_relative 'CP/calc_posfix'

puts "Entra com a expressão infixa! ex: (2+3)^5"
puts "ps: Tente respietar a escrita :)"

input = gets.chomp

posfix = posfixa(input)


result = valid_calc_posfix(posfix)

puts "infixa: #{input}\n posfixa: #{posfix} "


puts "O resultado é =  #{result}"









