-- CHAPTER ONE

test a b = a +b 
doubleMe a b = a + test a b
 
goodNumber num = if num > 100 then num else num  - 1

-- lists

testList = [1,2,3]
firstIndexOfTestList = testList !! 2

aCycleExampleA = take 10 (cycle [1,2,3])
aCycleExampleB = take 10 (cycle "aziz")

{-|
	head, 
	init, 
	tail,
	last,
	length, 
	null (check null),
	reverse
	take x (take x number of elements from the beginning)
	drop x (opposite of take)
	maximum
	minimum
	sum
	product
	x `elem` (check if x exists in the list, similar to .contains())  
-}

-- ranges

{-|
	replicate (replicate 2 10  >> [10,10,10]
	repeat (take 3 (repeat 5) >> [5,5,5]
	cycle (see above)
-}

-- comprehension 

boomBangs xs = [ if x < 10 then "OKAY" else "ERROR!" | x <- xs, odd x] 
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- tuples and triples

{-| tuples are fixed-sized and each tuple element in a array must have the same types.

	zip:    zip generates a new list of pairs (triples). example:
			zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]
				result:  [(5,"im"),(3,"a"),(2,"turtle")]

		
-}

triplesExample total  = [ (a,b,c) | c <- [1..15], b <- [1..15], a <- [1..15], a^2 + b^2 == c^2, a+b+c==total  ]

