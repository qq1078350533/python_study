import socket
import threading

def recv_msg(udp_socket):
    """接受数据"""
    # 接收数据
    while True:
        recv_data = udp_socket.recvfrom(1024)
        print(recv_data)


def send_msg(udp_socket,dest_ip,dest_port):
    while True:
    # 发送数据
        send_data = input("请输入您的数据：")
        udp_socket.sendto(send_data.encode("utf-8"),(dest_ip,dest_port))

def main():
    """完成udp聊天器的整体控制"""
    # 1.创建套接字
    udp_socket = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)

    # 2.绑定本地信息
    udp_socket.bind(("",3333))

    # 3.获取对方的IP
    dest_ip = input("请输入对方的IP：")
    dest_port = int(input("请输入对方的端口："))

    # 4.创建两个线程去执行相应功能
    t1 = threading.Thread(target=recv_msg, args=(udp_socket))
    t2 = threading.Thread(target=send_msg, args=(udp_socket, dest_ip, dest_port))
    t1.start()
    t2.start()
    



if __name__ == "__main__":
    main()
