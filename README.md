[![Build Status](https://travis-ci.org/hannako/takeaway-challenge.svg?branch=master)](https://travis-ci.org/hannako/takeaway-challenge)

[![Coverage Status](https://coveralls.io/repos/github/makersacademy/takeaway-challenge/badge.svg?branch=mohamedIssaq)](https://coveralls.io/github/makersacademy/takeaway-challenge?branch=mohamedIssaq)



Takeaway Challenge
==================

Makers Academy week two challenge, to write a takeaway program with the following user stories:
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```
-----

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```

## Requirements
  * Text sending functionality implemented using Twilio API. www.twilio.com

## How to use

```
2.3.1 :001 > require './lib/restaurant.rb'
2.3.1 :003 > r= Restaurant.new
 => #<Restaurant:0x007fcab48f88c0 @menu=#<Menu:0x007fcab48f8870 @menu={:Chicken=>3.5, :Noodles=>3.5, :Salad=>4.0, :Cake=>2.5}, @printed_menu=[]>, @message=#<Message:0x007fcab48f87f8 @client=<Twilio::REST::Client @account_sid=AC9b03bcfa6a4bb3deadfd13d6ec46358c>>, @order={}, @basket=[]>
2.3.1 :004 > r.show_menu
 => "Chicken: £3.50, Noodles: £3.50, Salad: £4.00, Cake: £2.50"
 2.3.1 :005 > r.order_dish(dish:'Noodles',quantity:2)
 => "2 x Noodles ordered."
2.3.1 :006 > r.display_basket
 => "Noodles x 2 = £7.00"
2.3.1 :007 > r.dis
r.display         r.display_basket  r.display_total
2.3.1 :007 > r.display_total
 => "Total: £7.00"
2.3.1 :008 > r.checkout("7.00")
```


------------------
