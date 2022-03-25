class st:
    def __init__(self):
         self.list1=[]
    def initial(self):
        for i in range(0,2):
            e=int(input("enter number"))
            self.list1.append(e)
        return(self.list1)
    def __gt__(self,other):
        n=[]
        for i in range(0,len(other.list1)):
            n.append(self.list1[i] > other.list1[i])
        return n
