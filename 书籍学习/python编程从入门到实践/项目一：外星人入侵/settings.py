class Setting():
    """存储（外星人入侵）的所以设置的类"""

    def __init__(self):
        """初始化游戏的设置"""
        # 屏幕的设置
        self.screen_width = 1200
        self.screen_height = 650

        # 游戏背景的颜色
        self.bg_color = (230,230,230)

        # 飞船速度的设置
        self.ship_speed_factor = 1.5

        # 子弹设置
        self.bullet_speed_factor = 1
        self.bullet_width = 3
        self.bullet_height = 15
        self.bullet_color = 60, 60, 60
        # 子弹的数量
        self.bullets_allowed = 3

        # 外星人设置
        self.alien_speed_factor = 1
        self.fleet_drop_speed = 10
        # fleet_direction为1表示向右移，-1为左移
        self.fleet_direction = 1