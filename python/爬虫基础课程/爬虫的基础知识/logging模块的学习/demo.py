import logging, time
import os.path

# 创建一个logger对象
logger = logging.getLogger()

# # logging.basicConfig函数对日志的输出格式及方式做相关配置
logger.setLevel(logging.INFO)

# 第二步，创建一个handler，用于写入日志文件
rq = time.strftime('%Y%m%d%H%M', time.localtime(time.time()))
log_path = os.path.dirname(os.getcwd()) + '/Logs/'    # 目录路劲
log_name = log_path + rq + '.log'     # 文件名
logfile = log_name
fh = logging.FileHandler(logfile, mode='w')
fh.setLevel(logging.DEBUG)  # 输出到file的log等级的开关

# 第三步，定义handler的输出格式
formatter = logging.Formatter("%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s")
fh.setFormatter(formatter)

# 第四步，将logger添加到handler里面
logger.addHandler(fh)

logging.debug("ss")
logging.info("aa")
logging.warning("wwww")
logging.error("saa")
logging.critical("sdad")

