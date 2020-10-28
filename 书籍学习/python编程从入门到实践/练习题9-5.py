class User():
    def __init__(self,first_name,last_name):
        self.first_name = first_name
        self.last_name = last_name
        self.login_attempts = 0

    def describe_user(self):
        print("您的名字是 " + self.first_name.title() + ' ' + self.last_name.title())

    def greet_user(self):
        print("欢迎光临" + self.first_name.title() + ' ' +  self.last_name.title())

    def increment_login_attempts(self):
        self.login_attempts += 1

    def reset_login_attempts(self):
        self.login_attempts = 0

user1 = User('deng','hui')
user1.increment_login_attempts()
user1.increment_login_attempts()
print(user1.login_attempts)
user1.reset_login_attempts()
print(user1.login_attempts)