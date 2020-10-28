#word为玩家二要猜的单词
def hangman(word):
    #玩家二猜错多少个字母
    wrong = 0
    #游戏程序的内容
    stages = ["",
              "_______         ",
              "|               ",
              "|       |       ",
              "|       o       ",
              "|      /|\      ",
              "|      / \      ",
              "                "
              ]
    #word每个字母用——表示
    rletters = list(word)
    board = ["__"] * len(word)
    win = False
    print("Welconme to Hangman")

    #游戏代码运行程序
    while wrong < len(stages) - 1:
        print("\n")
        char = input("Guess a letter:")
        #如果字母是单词中的一个
        if char in rletters:
            #则查询在列表中的位置
            cind = rletters.index(char)
            #用输入的字母替换“——”
            board[cind] = char
            #用$替换单词中的字母，以防一个单词中出现两个相同的字母
            rletters[cind] = "$"
        #如果不是
        else :
            wrong += 1
        #输出间隔为空格的board列表
        print((" ".join(board)))
        e = wrong + 1
        #就表示列表不会在一行，而在每一行
        print("\n".join(stages[0:e]))
        #如果board不再列表中，即表示字母都猜对了
        if "__" not in board:
            print("you win")
            print(" ".join(board))
            win = True
            break
    if not win:
        print("\n".join(stages[0:wrong]))
        print("you lose！ it was {}.".format(word))
hangman("mothon")