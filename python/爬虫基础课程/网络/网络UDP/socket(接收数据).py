import socket


def main():

    # 1. 创建套接字
    udp_socket = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)

    # 2.绑定一个本地信息
    localaddr = ("",7788)  #必须绑定自己电脑的IP以及port，其他的不行
    udp_socket.bind(localaddr)

    while True:
        # 3.接受数据最大字节为1024
        recv_socket = udp_socket.recvfrom(1024)
        #recv_socket这个变量存储的是一个元组（接收到的数据，（发送方的IP和端口））
        recv_msg = recv_socket[0]  #存储接收的数据
        send_addr = recv_socket[1]  #存储发送方的IP和port

        #4.打印接收的数据   gbk是来接收window发的数据类型    decode是解析数据
        print("{}:{}".format((str(send_addr),recv_msg.decode("gbk"))))

    #5.关闭套接字
    udp_socket.close()

if __name__ == "__main__":
    main()