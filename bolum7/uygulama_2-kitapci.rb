# encoding: utf-8

yazarlar = [
    'Ertuğrul Haskan',
    'Mustafa Başer',
    'Fatih Kadir Akın',
    'Sinan İşler',
    'Muharrem Taç'
]
kitaplar = [
    'HTML5 CSS3',
    'Python',
    'Modern JavaScript',
    'WordPress Tema Tasarımı ve Programlama',
    'Android Programlama'
]
fiyatlar = [22.5, 35.0, 25.0, 20.0, 26.50]

print "Hangi yazara ait kitap hakkında bilgi istiyorsunuz?.. "
yazar = gets.chomp.encode('UTF-8')

if yazarlar.any? {|y| y.downcase == yazar.downcase}
  indis = yazarlar.index(yazar)
  puts "#{kitaplar[indis]} - #{fiyatlar[indis]} TL"
else
  puts "Bu yazara ait kitap bulunamadı!"
end
