#encoding: utf-8
require_relative 'urun'
require_relative 'kitap'
require_relative 'cd'

kitap = Kitap.new('Denemeler',
                  yazar: 'Montaigne',
                  stok: 100)

kitap.al(10)
kitap.sat(20)
kitap.sat(40)
puts kitap.stok_ogren
puts kitap.oku

cd = Cd.new('Vaveyla',
            sanatci: 'Sıla',
            stok: 20)

cd.al(30)
cd.sat(55)
cd.sat(25)
puts cd.stok_ogren
puts cd.dinle

kitap2 = Kitap.new('Ruby')
kitap2.al(100)
kitap2.sat(80)
puts kitap2.stok_ogren
puts kitap2.oku

cd2 = Cd.new('Unutulmayanlar')
cd2.al(30)
cd2.sat(15)
puts cd2.stok_ogren
puts cd2.dinle