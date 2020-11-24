from redis import StrictRedis

# 创建redis连接对象
redis = StrictRedis(host='192.168.80.128', port=6379, decode_responses=True)

# 存储string对象
redis.set('name', 'Bob')

# 读取
print(redis.get('name'))

# 删除
print(redis.delete('name'))
