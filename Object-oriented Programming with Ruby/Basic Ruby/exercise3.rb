class Parkir

    attr_accessor :biaya_masuk

    def initialize(biaya_masuk)
        self.biaya_masuk = biaya_masuk
    end

end


class ParkirMotor < Parkir

    attr_accessor :nama

    def initialize(nama)
        super(100)
        self.nama = nama
    end

    def totalBiaya()
        puts "Biaya Parkir Motor #{nama}: $#{biaya_masuk}"
    end

end


class ParkirMotorBiasa < ParkirMotor

    attr_accessor :lama
    attr_accessor :total_biaya

    def initialize(nama,lama)
        super(nama)
        self.lama = lama
    end

    def totalBiaya()
        total_biaya = (biaya_masuk)+((lama*60)*0.05)
        puts "Biaya Parkir Motor #{nama}: $#{total_biaya}"
    end

end


class ParkirMotorBesar < ParkirMotor

    attr_accessor :lama
    attr_accessor :total_biaya

    def initialize(nama,lama)
        super(nama)
        self.lama = lama
    end

    def totalBiaya()
        total_biaya = (biaya_masuk)+((lama*60)*8)
        puts "Biaya Parkir Motor #{nama}: $#{total_biaya}"
    end

end


class ParkirMobil < Parkir

    attr_accessor :nama

    def initialize(nama)
        super(200)
        self.nama = nama
    end

    def totalBiaya()
        puts "Biaya Parkir Mobil #{nama}: $#{biaya_masuk}"
    end

end


class ParkirMobilBiasa < ParkirMobil

    attr_accessor :lama
    attr_accessor :total_biaya

    def initialize(nama,lama)
        super(nama)
        self.lama = lama
    end

    def totalBiaya()
        total_biaya = (biaya_masuk)+((lama*60)*0.1)
        puts "Biaya Parkir Mobil #{nama}: $#{total_biaya}"
    end

end


class ParkirMobilSport < ParkirMobil

    attr_accessor :lama
    attr_accessor :total_biaya

    def initialize(nama,lama)
        super(nama)
        self.lama = lama
    end

    def totalBiaya()
        total_biaya = (biaya_masuk)+((lama*60)*10)
        puts "Biaya Parkir Mobil #{nama}: $#{total_biaya}"
    end

end


puts("+====================================+")
puts("|         Biaya Parkir Mobil         |")
puts("+====================================+")
mobil1 = ParkirMobilSport.new("Ferrari",7)
mobil1.totalBiaya()

mobil2 = ParkirMobilSport.new("Lamborghini",10)
mobil2.totalBiaya()

mobil2 = ParkirMobilBiasa.new("Avanza",20)
mobil2.totalBiaya()
puts("======================================")

puts("")

puts("+====================================+")
puts("|         Biaya Parkir Motor         |")
puts("+====================================+")
motor1 = ParkirMotorBesar.new("Harley Davidson",21)
motor1.totalBiaya()

motor1 = ParkirMotorBesar.new("Ducati Panigale V4",2)
motor1.totalBiaya()

motor1 = ParkirMotorBiasa.new("Vario",10)
motor1.totalBiaya()
puts("======================================")