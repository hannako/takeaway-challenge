require_relative 'menu'
require_relative 'message'

class Restaurant

  attr_reader :message, :menu, :order, :basket, :subtotals


  def initialize(menu = Menu.new, message = Message.new)
    @menu = menu
    @message = message
    @order = {}
    @basket = []

  end

  def show_menu
    menu.print_menu
  end

  def order_dish(dish:, quantity:)
    order.store(dish,quantity)
    "#{quantity} x #{dish} ordered."
  end

  def display_basket
    strings = []
    order.each do |dish,quantity|
      strings << "#{dish} x #{quantity} = £#{"%.2f" % (subtotal(dish,quantity))}"
    end
    strings.join(", ")
  end

  def display_total
    "Total: £#{calculate_total}"
  end

  def checkout(payment)
    raise 'Cannot place order: Incorrect amount entered. Please try again' unless payment == calculate_total
    message.send_confirmation
  end




  def subtotal(dish,quantity)
    menu.find_cost(dish) * quantity
  end

  def calculate_total
    subtotals = []
      order.each do |dish,quantity|
        subtotals << (subtotal(dish,quantity))
      end
    sum_and_round(subtotals)
  end

  def sum_and_round(subtotal)
    "%.2f" % (subtotal.reduce(:+))
  end

end
