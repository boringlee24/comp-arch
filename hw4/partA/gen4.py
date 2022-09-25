for i in range(1):
    address = [None] * 8
    address[0] = 0
    address[1] = 32 
    address[2] = 64
    address[3] = 1
    address[4] = 2
    address[5] = 3
    address[6] = 4
    address[7] = 5
    for j in range(len(address)):
        print('2 ' + hex(address[j]).split('x')[1])
    

