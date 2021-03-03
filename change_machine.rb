require "rspec"

class ChangeMachine
  def value_to_coins(value)
    types_of_coins = [25, 10, 5, 1]
    coins = []
    types_of_coins.each do |type_of_coin|
      while value >= type_of_coin
        value = value - type_of_coin
        coins << type_of_coin
      end
    end
    return coins

    # coins = []
    # while value > 0
    #   if value >= 25
    #     value = value - 25
    #     coins << 25
    #   elsif value >= 10
    #     value = value - 10
    #     coins << 10
    #   elsif value >= 5
    #     value = value - 5
    #     coins << 5
    #   elsif value >= 1
    #     value = value - 1
    #     coins << 1
    #   end
    # end
    # return coins
  end
end

RSpec.describe ChangeMachine do
  describe "#value_to_coins" do
    it "should return [1] when given 1" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(1)
      expect(result).to eq([1])
    end

    it "should return [1, 1] when given 2" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(2)
      expect(result).to eq([1, 1])
    end

    it "should return [5] when given 5" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(5)
      expect(result).to eq([5])
    end

    it "should return [10] when given 10" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(10)
      expect(result).to eq([10])
    end

    it "should return [25] when given 25" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(25)
      expect(result).to eq([25])
    end

    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119" do
      machine = ChangeMachine.new
      result = machine.value_to_coins(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
