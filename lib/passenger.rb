require_relative 'csv_record'

module RideShare
  class Passenger < CsvRecord
    attr_reader :name, :phone_number, :trips

    def initialize(id:, name:, phone_number:, trips: nil)
      super(id)

      @name = name
      @phone_number = phone_number
      @trips = trips || []
    end

    def add_trip(trip)
      @trips << trip
    end

    private

    def self.from_csv(record)
      return new(
        id: record[:id],
        name: record[:name],
        phone_number: record[:phone_num]
      )
    end

    # Wave 1: Add an instance method, net_expenditures, to Passenger that will return the total amount of money that passenger has spent on their trips
    # Wave 1: Add an instance method, total_time_spent to Passenger that will return the total amount of time that passenger has spent on their trips
    # Each of these methods must have tests. What happens if the passenger has no trips?
  end
end
