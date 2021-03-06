require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20

    attr_reader :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @bikes = []
        @capacity = capacity
    end

    def dock(bike)
      fail 'Docking station full' if full?
      bikes << bike
    end

    def release_bike
        fail 'No bikes available' if empty? 
        fail 'No bikes available' if  bikes.last.broken?
        bikes.pop
    end

    private

    attr_reader :bikes

    def full?
        bikes.count >= capacity
    end

    def empty?
        bikes.empty?
    end

end