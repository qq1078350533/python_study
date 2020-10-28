class Restaurant():
    def __init__(self,restaurant_name ,cuisine_type):
        self.restaurant_name = restaurant_name
        self.cuisine_type = cuisine_type
        self.number_served = 0

    def describe_restaurant(self):
        print(self.restaurant_name)
        print(self.cuisine_type)

    def open_restaurant(self):
        print('菜馆正在营业')

    def set_number_served(self,number):
        print('就餐人数是{}'.format(number))

    def increment_number_served(self,nubber):
        self.number_served += nubber


restaurant = Restaurant('deng','2')
print(restaurant.number_served)
print(restaurant.set_number_served(3))
restaurant.increment_number_served(3)
print(restaurant.number_served)