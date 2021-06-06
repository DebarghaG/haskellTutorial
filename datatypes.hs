import Data.List
import System.IO

-- Int -2^63 to 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer - Unbounded Whole Number
-- Floats - Single precision floating point
-- Double - Precision upto 11 points, so below won't work
bigFloat = 3.99999999999999 + 0.000000000000005


-- Bool True False
-- Char '
-- Tuples

-- Can declare a permanent value on a variable
always5 :: Int
always5 = 5
