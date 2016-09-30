class Order

  attr_accessor :basket, :total, :menu, :message

  def initialize(menu = Menu.new, message = Message.new)
    @basket = {}
    @total = 0
    @menu = menu
    @message = message
  end

def add(dish, quantity)
  basket.store(dish,quantity)
end

def view_basket
  contents = []
  basket.each do |dish,quantity|
    subtotal = subtotal(dish,quantity)
    contents <<  "#{quantity} x #{dish} = £#{subtotal}"
  end
  contents.join(", ")

end

def display_total
  calculate_total
  "Total: £#{total}"
end

def subtotal(dish,quantity)
  menu.find_cost(dish) * quantity
end

def calculate_total
  subtotals = []
  basket.each do |dish,quantity|
    subtotals << (subtotal(dish,quantity))
  end
  total = sum_and_round(subtotals)
end

def sum_and_round(subtotal)
  "%.2f" % (subtotal.reduce(:+))
end

def pay(payment)
  calculate_total
  message.send_confirmation
end


end
