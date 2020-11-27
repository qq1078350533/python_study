import socket


def main():
    #创建一个udp套接字（一个套接字可以收发数据）
    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # 获取对方的IP/port
    dest_ip = input("请输入对方的IP：")
    dest_port = int(input("请输入对方的port："))

    # 绑定端口
    udp_socket.bind(("", 3343))
    # 让用户不断发送信息
    while True:

        # 从键盘获取数据
        socket_data = input("请输入要发送的数据：")

        # 如果用户图输入exit就退出
        if socket_data == exit:
            break

        # 可以使用套接字收发数据
        # udp_socket.sendto("hahahah",("对方的IP",端口))，encode是发送的编码格式
        udp_socket.sendto(socket_data.encode("utf-8"), (dest_ip,dest_port))

        #接收送过来的数据
        recv_data = udp_socket.recvfrom(1024)

    # 关闭套接字
    udp_socket.close()


if __name__ == "__main__":
    main()