class Vehicle
    attr_accessor :year

    def initialize(year)
        @year = year
    end

    def printStats()
        puts "#{year}"
    end
end


module OldtimerCheck
    def isOldTimer?(year)
        (2022-year) > 30
    end
end


class Car < Vehicle
    attr_accessor :model
    attr_accessor :brand

    include OldtimerCheck

    def initialize(year,model,brand)
        super(year)
        @model = model
        @brand = brand
    end

    def printStats()
        puts "#{model}"
        puts "#{brand}"
        super
        puts isOldTimer?(year)
    end

end


mobil = Car.new(1990,"Model","Yamaha")
mobil.printStats()