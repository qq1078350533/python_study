import json

filename = "eq_data_1_day_m1.json"
with open(filename) as f:
    pop_data = json.load(f)
print(pop_data)
# 打印每个国家2010年的人口数量
for pop_dict in pop_data:
    print(pop_dict)
    if pop_dict["id"] == "uu60312957":
        properties = pop_dict["properties"]
        type = pop_dict['type']
        print(properties + ": " + type)