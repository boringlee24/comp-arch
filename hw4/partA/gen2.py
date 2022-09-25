for i in range(512):
    address = [None] * 7
    address[0] = i * 64
    address[1] = i * 64 + (2 ** 9) * 64
    address[2] = address[0]
    address[3] = address[1]
    address[4] = address[0]
    address[5] = address[1]
    address[6] = i * 64 + (2 ** 10) * 64
    for j in range(len(address)):
        print('2 ' + hex(address[j]).split('x')[1])
    

