class Parkir
    attr_accessor :biaya_masuk
    def initialize(biaya_masuk)
        self.biaya_masuk = biaya_masuk
    end
end

class ParkirMotor < Parkir
    def initialize()
        super(100)
    end

    def totalBiaya()
        puts "Biaya Parkir Motor : $#{biaya_masuk}"
    end

end

class ParkirMotorBiasa < ParkirMotor
    attr_accessor :nama
    attr_accessor :lama
    attr_accessor :total_biaya
    def initialize(nama,lama)
        super()
        self.nama = nama
        self.lama = lama
    end

    def totalBiaya()
        total_biaya = (biaya_masuk)+((lama*60)*0.05)
        puts "Biaya Parkir Motor #{nama}: $#{total_biaya}"
    end
end

class ParkirMotorBesar < ParkirMotor
    attr_accessor :nama
    attr_accessor :lama
    attr_accessor :total_biaya
    def initialize(nama,lama)
        super()
        self.nama = nama
        self.lama = lama
    end

    def totalBiaya()
        total_biaya = (biaya_masuk)+((lama*60)*8)
        puts "Biaya Parkir Motor #{nama}: $#{total_biaya}"
    end
end




puts("==========Biaya Parkir Motor==========")
motor = ParkirMotor.new()
motor.totalBiaya()

motor1 = ParkirMotorBesar.new("Harley Davidson",21)
motor1.totalBiaya()

motor1 = ParkirMotorBesar.new("Ducati Panigale V4",2)
motor1.totalBiaya()

motor1 = ParkirMotorBiasa.new("Vario",10)
motor1.totalBiaya()

