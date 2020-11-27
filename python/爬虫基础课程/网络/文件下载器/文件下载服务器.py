import socket

def send_file_2_client(new_client_socket, client_addr):
    # 1.接收客户端需要下载的文件名
    # 接收客户端发送过来的要下载的文件名
    file_name = new_client_socket.recv(1024).decode("utf-8")
    print("客户端（{}）需要下载的文件是{}".format(str(client_addr), file_name))

    file_content =None
    # 2.打开这个文件，读取数据
    try:
        f = open(file_name,"rb")
        file_content = f.read()
    except Exception as ret:
        print("没有下载的文件（{}）".format(file_name))


    # 3. 发送文件的数据给客户端
    # new_client_socket.send("hhhhh".encode("utf_8"))
    if file_content:
        new_client_socket.send(file_content)

def main():
    # 1.买个手机（创建套接字  socket）
    tcp_server_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

    # 2.插入电话卡（绑定本地信息 bind）
    tcp_server_socket.bind("",44444)

    # 3.将手机设置为正常的响铃模式（让默认的套接字由主动变为被动 listen）
    tcp_server_socket.listen(128)

    while True:
        # 4.等待别人的电话过来（等待客户端的链接 accept）
        new_client_socket,client_addr = tcp_server_socket.accept()

        # 5.调用发送文件函数，完成为客户端服务
        send_file_2_client(new_client_socket, client_addr)

        # 关闭套接字
        new_client_socket.close()
    tcp_server_socket.close()


if __name__ == "__main__":
    main()