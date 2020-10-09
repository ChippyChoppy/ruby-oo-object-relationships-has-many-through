#this will be our joining model between our waiter & customer classes.
#waiters have many customers through meals
#customers have many waiters through meals
#Meal class will be our single source of truth

class Meal

    attr_accessor :waiter, :customer, :total, :tip

    @@all = []

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self 
    end

    def self.all
        @@all
    end
    
end