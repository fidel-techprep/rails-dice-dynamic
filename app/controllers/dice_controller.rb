class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home"})
  end

  def dice
    @quantity = params.fetch("quantity").to_i
    @value = params.fetch("value").to_i
    
    @dice = []

    @quantity.times {
      num = rand(1..@value)
      @dice << num
    }

    render({ :template => "dice_templates/dice"})
  end
end
