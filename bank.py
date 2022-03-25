class distance:
    def __init__(self,a,b):
        self.coord1=(a,b)
    def dis(self,others):
        print( ((others.coord1[0]-self.coord1[0]) ^ 2 ) + ( (others.coord1[1]-self.coord1[1]) ^ 2))
        print('wdsd')

d=distance(3,2)
s=distance(4,3)
d.dis(s)


class bank:
    def __init__(self,anem,val):
        self.name=anem
        self.amt=val
    def deposit(s,val):
        amt=50
        s.amt+= val
        print('deposited',s.amt)
    def withdrawn(q,val):
        if val > q.amt:
            print('not posiible')
        else:
            q.amt -=val
            print('amount',q.amt)
b=bank('ram',1000)
b.deposit(200)
b.withdrawn(11111)
b.withdrawn(1)

