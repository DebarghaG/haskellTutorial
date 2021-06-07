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
-- So what's happening here? (This is quite confusing, really)

-- Haskell is amazing with recursion, writing program to do recursive string cehcking
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [][] = True
areStringsEq (x:xs)(y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- Something more, we can recieve functions
doMult :: (Int -> Int) -> Int
doMult func = func 3
num3Times4 = doMult times4

-- We can receieve an integer, and return a function?
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4
threePlusList = map adds3 [1,2,3,4,5]

--  Lambdas are just functions that don't have a name
dbl1To10 = map (\x -> x*2) [1..10]

-- Something more, an example of conditionals
doubleEvenNumber y =
  if (y `mod` 2 /= 0)
    then y
    else y*2

getClass :: Int -> String
getClass n = case n of
  5 -> "Go to Kindergarten"
  6 -> "Go to elementary School"
  _ -> "Go Away"

-- module SampFunctions (getClass, doubleEvenNumbers) where
-- import SampFunctions

-- An enumerated type
data BaseballPlayer = Pitcher
        | Catcher
        | Infielder
        | Outfield
    deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True
barryInOf = print(barryBonds Outfield)


-- Custom Data types
data Customer = Customer String String Double
  deriving Show

iomSmith :: Customer
iomSmith = Customer "Tom Smith" "123 Main" 20.50

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

-- Creating a new data type, for Rock paper Scissors
data RPS = Rock | Paper | Scissors
shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot _ _ = "Error"
-- Make all the alternatives of this

-- Something more complex
-- data Shape = Circle Float Float Float | Rectangle Float Float
--     deriving Show

-- area :: Shape -> Float

-- area (Circle _ _ r) = pi * r ^ 2
-- area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 - y)

-- sumValue = putStrLn ( show (1+2))
-- sumValue2 = putStrLn . show $ 1 + 2
-- areaOfCircle = area (Circle 50 60 20)



-- TypeClasses inside haskell
-- (+) Num means as long as typeClass num, it will work

-- data Employee = Employee ( name :: String,
--                           position :: String,
--                         idNum :: Int) deriving (Eq, Show)

-- We couldn't type functions starting with capital letters because that is for TypeClasses....

-- data ShirtSize S | M | L

-- instance Eq ShirtSize where
--   S == S = True
--   M == M = True
--   L == L == True
--   _ == + = False

-- instance Show ShirtSize where
--   show S = "Small"
--   show M = "Medium"
--   show L = "Large"

-- smallAvail = S `elem` [S,M,L]
-- theSize = show S
