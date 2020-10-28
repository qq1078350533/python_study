import socket


def main():
    # 1.买个手机（创建套接字  socket）
    tcp_server_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

    # 2.插入电话卡（绑定本地信息 bind）
    tcp_server_socket.bind("",7890)

    # 3.将手机设置为正常的响铃模式（让默认的套接字由主动变为被动 listen）
    tcp_server_socket.listen(128)

    # 为多个客户端服务
    while True:
        print("等待一个新的客户端到来！")
        # 4.等待别人的电话过来（等待客户端的链接 accept）返回一个元组（客户端的套接字，客户端的IP地址及port）
        new_client_socket,client_addr = tcp_server_socket.accept()
        print("一个新的客户端已经到来{}".format(str(client_addr)))

        # 为一个客户端服务多次
        while True:
            #接收数据
            recv_data = new_client_socket.recv(1024)
            print("客户端发过来的请求是：{}".format(recv_data.decode("utf_8")))

            # 如果recv_data解堵塞，那么有两种方式：
            # 1.客户端发送过来数据
            # 2.客户端调用了close导致这里recv——data解堵塞
            if recv_data :  #这个表示recv_data里面有内容
                # 回送一部分数据给客户端
                new_client_socket.send("hhhhh".encode("utf_8"))
            else:
                break
        # 关闭套接字
        # 关闭accpet返回的套接字意味着不会为这个客户端服务
        new_client_socket.close()
        print("已经为这个客户端服务完毕！")

    # 如果将监听套接字关闭了，那么会导致不能再次等待新客户端的到来，即xxx.accept就会失败
    tcp_server_socket.close()


if __name__ == "__main__":
    main()