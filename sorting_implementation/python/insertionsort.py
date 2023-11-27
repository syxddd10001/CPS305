def insertionsort(ls):
    # [3,6,5,4,1]
    for i in range(0,len(ls)-1): 
        for j in range(i,-1,-1):
            if ls[j+1] < ls[j]:
                temp = ls[j]
                ls[j] = ls[j+1]
                ls[j+1] = temp
               
                
    return ls
list = [6,4,1,9,2,10]
print(list)
print(insertionsort(list))
