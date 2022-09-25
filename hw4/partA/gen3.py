for i in range(512):
    address = [None] * 10
    a = i * 64
    b = i * 64 + (2 ** 9) * 64
    c = i * 64 + (2 ** 10) * 64
    address[0] = a
    address[1] = a 
    address[2] = b
    address[3] = b
    address[4] = c
    address[5] = c
    address[6] = a
    address[7] = a
    address[8] = b
    address[9] = b
    for j in range(len(address)):
        print('2 ' + hex(address[j]).split('x')[1])
    

