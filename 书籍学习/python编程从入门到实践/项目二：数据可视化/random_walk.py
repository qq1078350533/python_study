from random import choice

class RandomWalk():
    """一个生成随机漫步的属性"""
    def __init__(self,num_points):
        self.num_points = num_points

        # 所有随机漫步都始于（0，0）
        self.x_value = [0]
        self.y_value = [0]

    def fill_walk(self):
        """计算机漫步包含的所有点"""
        # 不断漫步。直到列表到达指定的长度
        while len(self.x_value) < self.num_points:
            # 决定前进的方向以及沿这个方向前进的距离
            x_direction = choice([1,-11])
            x_dirstance = choice([0,1,2,3,4])
            x_step = x_direction * x_dirstance

            y_direction = choice([1,-11])
            y_dirstance = choice([0,1,2,3,4])
            y_step = y_direction * y_dirstance

            # 拒绝原地踏步
            if x_step == 0 and y_step == 0:
                continue

            # 计算下一个点的x和y值
            next_x = self.x_value[-1] + x_step
            next_y = self.y_value[-1] + y_step

            self.x_value.append(next_x)
            self.y_value.append(next_y)