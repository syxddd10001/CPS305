def binary_search(array, target):
    lg = int(len(array))
    
    if lg == 0:
        return False
    if lg == 1 and array[int(lg/2)] != target:
        return False

    if array[int(lg/2)] == target:
        return True
    
    if target > array[int(lg/2)]:
        return binary_search(array[int(lg/2):],target)
    elif target < array[int(lg/2)]:
        return binary_search(array[:int(lg/2)],target)    

    return False
    

if __name__ == "__main__":
    array = []
    for i in range(0,100,2):
        array.append(i)
    print(array)
    if not binary_search(array, 8):
        print("not found!")
    else:
        print("found!")
