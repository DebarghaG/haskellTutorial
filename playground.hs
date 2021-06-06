import Data.List
import System.IO


addMe :: Int -> Int -> Int

-- funcName param1 param2 = operations (returned value)

addMe x y = x + y

-- If we don't do type declarations
sumMe x y = x + y

-- Can we do this with tuples?
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y) (x2, y2) = (x+x2, y+y2)

-- Can we do this with accepted values?
whatAge :: Int -> String

whatAge 18 = "You can vote"
whatAge 16 = "You can drive"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing important"

-- What are the different things we can do
-- Recursive function calls
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Let's try factorial in another way
prodFact n = product [1..n]

-- Try checking for odd or even with Guards
isOdd :: Int -> Bool

isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven n = n `mod` 2 == 0

-- Trying something more complex

whatGrade :: Int -> String
whatGrade age
  | (age >= 5) && (age <= 6) = "Kindergarten"
  | (age > 6)  && (age <= 10)= "Elementary School"
  | (age > 10) && (age <= 14)= "Middle School"
  | otherwise = "I'm tired of writing more conditions"

-- let's try with a sport
batAvgRating :: Double -> Double -> String
batAvgRating hits atRate
  | avg <= 0.200 = "Terrible"
  | avg <= 0.250 = "Average"
  | avg <= 0.250 = "Good"
  | otherwise = "Amazing"
  where avg = hits / atRate

-- Accessing list items in interesting ways
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with" ++ show x
getListItems (x:y:[]) = "Your list contains" ++ show x ++ show y
getListItems (x:xs) = "The 1st item is "++ show x ++ "andn the rest are "++ show xs

-- Using the as pattern
getFirstItems :: String -> String
getFirstItems all@(x:xs) = "The first letter in " ++ all ++ " is "

-- Functions
times4 :: Int -> Int
times4 x = x*4

-- Map allows us to work with the entire list
listTime4 = map times4 [1,2,3,4,5]

-- What else can be done?
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

-- 46 mins in
