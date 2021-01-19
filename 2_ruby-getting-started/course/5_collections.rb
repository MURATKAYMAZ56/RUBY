

# array is a collection

array=[1,2,3,4,5,6,7,8,9,10,11]

array[-1] #  11  / last elemet of array
array[-2] # 10 /last second of array
array[2..4] # 3,4,5  /range  from 2 index till 4 index  (4index is included)
array[2...4] # 3,4  /range  from 2 index till 4 index  (4index is exculisive)
puts array[2..4]
puts array[2...4]

#Hash is a collection  Key -value pairs uses {}

#h is sample for hash
h={
    "key1"=>"value1",
    "key2"=>"value2",
    10=>9,9
}
