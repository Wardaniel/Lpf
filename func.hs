--func :: Int-> Int
--func a = a*a

--fat:: Int -> Int
--fat 0 = 1
--fat a = a*fat (a-1)

--plusOne:: [Int] -> [Int]
--plusOne [] = []
--plusOne (h:t) = (h+1):plusOne t

--fatlist:: [Int] -> [Int]
--fatlist [] = []
--fatlist (h:t) = fat (h):fatlist t

--indexOf:: [Int] -> Int -> Int
--indexOf [] a = 0
--indexOf (h:t) a = if(a>1) then indexOf t (a-1) else h

--reverseT:: [Int] -> [Int]
--reverseT [] = []
--reverseT (h:t) = reverseT  t ++ [h]

--insert:: Ord a => a -> [a] -> [a]
--insert n [a] = if ([a]<[n]) then [a]++[n] else [n]++[a]
--insert a (h:t)|(a<h) = a:h:t
--              |(a==h) = h:t
--              |otherwise = h:insert a t

--insertSort :: Ord a => [a] -> [a]
--insertSort [a] = [a]
--insertSort (h:t) = insert (h) (insertSort (t))

--raizT:: Int-> Int -> Int
--raizT a  b = if (b*b>=a) then b else raizT (a) (b+1) 

--raiz:: Int->Int
--raiz a = raizT (a) (1)

--cript:: Int -> [Int]
--cript a = criptL a [2..a]

--criptL:: Int-> [Int] -> [Int]
--criptL n (h:t) = if(h>raiz n) then(h:t)else h:(criptL (n) (filter (\x -> (not ((mod x h) == 0))) t)) 

--repetida :: Int -> [Int] -> [Int]
--repetida a [] = []
--repetida a (h:t)  |(h==a) = repetida (a) (t)
--                  |True = h:repetida (a) (t)

--removeR :: [Int] ->[Int]
--removeR [] = []
--removeR (h:t) = h:(removeR (repetida (h) (t)))

--uniao :: [Int] -> [Int] -> [Int]
--uniao l r = removeR(l++r)

--multi:: [Int] -> Int ->[Int]
--multi [] a = []
--multi (h:t) a = (h*a):multi (t) (a)

--uglyNumber::[Int] -> Int ->[Int]
--uglyNumber a 0 = (multi (a) (2)) ++ (multi (a) (3)) ++ (multi (a) (5))
--uglyNumber a x = (multi (a) (2))++(multi (a) (3))++(multi (a) (5))++(uglyNumber (multi (a) (2)) (x-1))++(uglyNumber (multi (a) (3)) (x-1)) ++ (uglyNumber (multi (a) (5)) (x-1))

--ugly:: Int -> [Int]
--ugly a = insertSort( [1,2,3,5]++(uglyNumber ([2,3,5]) (a)) )
