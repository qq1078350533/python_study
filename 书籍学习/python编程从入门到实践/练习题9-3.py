class User():
    def __init__(self,first_name,last_name):
        self.first_name = first_name
        self.last_name = last_name

    def describe_user(self):
        print("您的名字是 " + self.first_name.title() + ' ' + self.last_name.title())

    def greet_user(self):
        print("欢迎光临" + self.first_name.title() + ' ' +  self.last_name.title())

user1 = User('deng','hui')
user1.describe_user()
user1.greet_user()