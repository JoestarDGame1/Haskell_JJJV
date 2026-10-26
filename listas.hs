x :: [Int]
x = [5,4,2,3,2,1,1]

print x
print (head x)
print (tail x)
print (last x)
print (init x)
print (length x)
print (null x)
print (drop 3 x)
print (maximum x)
print (minimum x)
print (9 `elem` x)
print (take 10 (cycle [1,2,3]))
print ([x*2 | x <- [1..10]])
print (removeDuplicates x)
