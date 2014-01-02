# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Seller.destroy_all
Product.destroy_all
User.destroy_all
Billing.destroy_all
BillingProduct.destroy_all

seller = Seller.create(name: 'Samsung', tel: '0233223342', address: '2 That ST, CBD, NSW 2000')

10.times do |i|
    product = Product.create(name: "Product ##{i}", price: 100.00, inStock: 133, seller_id: seller,
                   product_category_id: 1 )
    user = User.create(userId: "testUser#{i}", firstName: "test#{i}", lastName: 'me',
                password: '123456', password_confirmation: '123456', email: "test#{i}@test.com" )
    billing = Billing.create(orderNo: 10000, amount: 2000,
                             address: ' 1 This Road, CBD, NSW 2000', user_id: user)
    BillingProduct.create(productName: 'LCD TV', quantity: 2, price: 1000, sub_total: 2000, billing_id: billing)

end






