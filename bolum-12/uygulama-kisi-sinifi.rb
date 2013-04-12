#encoding: utf-8
class Kisi
  def initialize(parametre)
    @ad = parametre[:ad]
    @soyad = parametre[:soyad]
    @cinsiyet = parametre[:cinsiyet]
  end

  def tanis
    "Merhaba, ben #{@ad.capitalize} #{@soyad.upcase}."
  end

  def calis
    "Çalışmayı çok isterdim, ama yapacak bir işim yok!"
  end
end

class Doktor < Kisi
  def initialize(parametre)
    super(parametre)
    @dal = parametre[:dal]
  end

  def tanis
    mesaj = super
    mesaj += " #{@dal.capitalize} dalında uzman bir hekimim."
  end

  def calis
    "By-pass ameliyatı yapıyorum."
  end
end

class Avukat < Kisi
  def initialize(parametre)
    super(parametre)
    @uzmanlik = parametre[:uzmanlik]
  end

  def tanis
    mesaj = super
    mesaj += " #{@uzmanlik.capitalize} alanında uzman bir avukatım."
  end

  def calis
    "Duruşmada, müvekkilimin haklarını savunuyorum."
  end
end

kisi = Kisi.new( ad: 'Eren',
                 soyad: 'Bagdat',
                 cinsiyet: 'erkek')

doktor = Doktor.new( ad: 'Mehmet',
                     soyad: 'Öz',
                     cinsiyet: 'erkek',
                     dal: 'kardiyoloji')

avukat = Avukat.new( ad: 'Ayten',
                     soyad: 'Kara',
                     cinsiyet: 'kadın',
                     uzmanlik: 'icra hukuku')

puts kisi.tanis
puts kisi.calis

puts doktor.tanis
puts doktor.calis

puts avukat.tanis
puts avukat.calis
