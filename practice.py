# using for and if loop
l=[i for i in range(1,10) if i == 5]
print(l)

#reverse and the display 5
a=[1,2,3,4,5,6]
s=a[::-1]
for i in s[0:5]:
    print(i)

#vowels find

w={'a','e','i','o','u'}
sd={'a','e','i','o','u','U','A','w'}
w.issubset(sd)

# using for loop

for i in w:
	if i in sd:
		print(i)

#using filter
wd={'a','e','i','o','u'}
#sorting
def cc(s):
	if s in wd:
		print(s)
#filter option
l=filter(cc,w)
#print
for i in l:
	print(i)

tables = [lambda x=x: x*10 for x in range(1, 11)] 
for table in tables:
    print(table())


