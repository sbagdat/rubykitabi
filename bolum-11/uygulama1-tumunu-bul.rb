#encoding: utf-8
class Array
  def tumunu_bul
    dizi = []
    each { |i| dizi.push(i) if yield(i) }
    dizi
  end
end

sayilar = [3, 5, 8, 10, 15, 25]

p sayilar.tumunu_bul { |i| i > 5 }		#=> [8, 10, 15, 25]
p sayilar.tumunu_bul { |i| i <10 }		#=> [3, 5, 8]
