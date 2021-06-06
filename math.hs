import Data.List
import System.IO

-- Lists are pretty cool
sumOfNums = sum [1..1000]

-- Do basic arithmetic
addEx = 5+4
subEx = 5-4

-- Weird stuff
negNumEx = 5+(-4)

-- Prefix Operator example
modEx = mod 5 4

-- Backtext or Infix Operator
modEx2 = 5 `mod` 4

-- Understand functions you can use ghci
-- :t sqrt
-- sqrt :: Floating a => a -> a

num9 = 9::Int
-- fromIntegral helps us go from int to float
sqrtOf9 = sqrt(fromIntegral num9)

-- sin, cost, tan, asin, acos etc all exist

-- Built in math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9**2
truncateVal = truncate 9.9999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999


-- Logical Operators
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- Addition Operator
-- :t (+)
-- (+) :: Num a => a -> a -> a

-- For truncate
-- truncate :: (RealFrac a, Integral b) => a -> b
