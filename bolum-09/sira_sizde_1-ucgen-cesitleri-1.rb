# encoding: utf-8

def ucgen_turu(*kenarlar)
  case kenarlar.uniq.length
  when 1 then 'Eşkenar üçgen'
  when 2 then 'İkizkenar üçgen'
  else 'Çeşitkenar üçgen'
  end
end

puts ucgen_turu(3,3,3)
puts ucgen_turu(3,5,5)
puts ucgen_turu(3,4,5)
