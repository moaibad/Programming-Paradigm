class Vehicle
    attr_accessor :year

    def initialize(year)
        @year = year
    end

    def printStats()
        puts "#{year}"
    end
end


class Car < Vehicle
    attr_accessor :model
    attr_accessor :brand

    def initialize(year,model,brand)
        super(year)
        @model = model
        @brand = brand
    end

    def printStats()
        puts "#{model}"
        puts "#{brand}"
        super
    end
end


mobil = Car.new("2022","Model","Yamaha")
mobil.printStats()


