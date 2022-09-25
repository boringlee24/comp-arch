for i in range(1):
    address = [None] * 7
    a = 0
    b = (2 ** 9) * 32
    c = b * 2
    d = b * 3
    e = b * 4
    address[0] = a
    address[1] = b 
    address[2] = a
    address[3] = c
    address[4] = d
    address[5] = e
    address[6] = a
    for j in range(len(address)):
        print('1 ' + hex(address[j]).split('x')[1])
    

