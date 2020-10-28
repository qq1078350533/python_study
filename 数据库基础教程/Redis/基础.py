from redis import StrictRedis,ConnectionPool
# pool = ConnectionPool(host='localhost',port=6379,db=0,password='snackdeng')
#redis = StrictRedis(connection_pool=pool)
redis = StrictRedis(host='localhost',port=6379,db=0,password='snackdeng')
redis.set('name','Bob')
print(redis.get('name'))