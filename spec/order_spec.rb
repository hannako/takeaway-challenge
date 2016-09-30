# require 'order'
#
# describe Order do
#
# let(:order) { Order.new }
# # As a customer
# # So that I can order the meal I want
# # I would like to be able to select some number of several available dishes
#
#   it 'allows single dishes to be placed' do
#     order.add("chicken", 2)
#     expect(order.basket).to eq({"chicken" => 2})
#   end
#
#   it 'allows multiple dishes to be selected' do
#     order.add("chicken",2)
#     order.add("Noodles",4)
#     expect(order.basket).to eq({"chicken" => 2, "Noodles" => 4})
#   end
#
#   # As a customer
#   # So that I can verify that my order is correct
#   # I would like to check that the total
#   # I have been given matches the sum of the various dishes
#   # in my order
#
#
#     it "they can check what's in their basket, and see total" do
#       order.add("Noodles", 4)
#       order.add("chicken", 2)
#       expect(order.view_basket).to eq "Noodles x 4 = £14.00 chicken x 2 = £7.00"
#       expect(order.total).to eq "Total: £21.00"
#     end
#
#
#     it 'will generate a message confirming order' do
#       order.add("Noodles",4)
#       sms = "Thank you! Your order was placed and will be delivered before 18:52"
#       expect(order.pay(14.00)).to eq sms
#     end
#
#     it 'will raise an error if the incorrect amount is paid' do
#       order.add("Noodles", 4)
#       expect{ order.pay(15.00) }.to raise_error 'Cannot place order: Incorrect amount entered. Please try again'
#     end
#
# end
