class Restaurant():
    def __init__(self,restaurant_name ,cuisine_type):
        self.restaurant_name = restaurant_name
        self.cuisine_type = cuisine_type

    def describe_restaurant(self):
        print(self.restaurant_name)
        print(self.cuisine_type)

    def open_restaurant(self):
        print('菜馆正在营业')


user1 = Restaurant('snack','2')
user2 = Restaurant('deng','3')
user3 = Restaurant('hui','5')
print(user1.restaurant_name)
print(user1.cuisine_type)
user1.describe_restaurant()
user1.open_restaurant()

print(user2.restaurant_name)
print(user2.cuisine_type)
user2.describe_restaurant()
user2.open_restaurant()

print(user3.restaurant_name)
print(user3.cuisine_type)
user3.describe_restaurant()
user3.open_restaurant()