class Train
  attr_accessor :speed, :station, :amount 
  attr_reader :type, :number, :route

  def initialize(number, type, amount)
    @number = number
    @type = type
    @amount = amount
    @speed = 0
  end

  def boost_speed(speed)
    self.speed += speed
  end

  def stop
    self.speed = 0
  end

  def add_wagons
    if self.speed == 0
      self.amount += 1
    else
      puts "You must stop"
    end
  end

  def delete_wagons
    if self.speed == 0
      self.amount -= 1
    else
      puts "You must stop"
    end
  end

  def route=(route)
    @route = route
    self.station = self.route.stations.first
  end

  def move_next_station
    self.station = self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def move_previous_station
    self.station = self.route.stations[self.route.stations.index(self.station) - 1]
  end

  def next_station
    self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def previous_station
    self.route.stations[self.route.stations.index(self.station) - 1]
  end
end


