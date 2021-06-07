import Data.List
import System.IO

main = do
  putStrLn "What's your name"
  name <- getLine
  putStrLn ("Hello " ++ name)

sayHello = do
  putStrLn "What's your name"
  name <- getLine
  putStrLn $ "Hello" ++ name

writeToFile = do
  theFile <- openFile "test.txt" WriteMode
  hPutStrLn theFile ("Random Line of Text")
  hClose theFile

readFromFile = do
  theFile2 <- openFile "test.txt" ReadMode
  contents <- hGetContents theFile2
  putStr contents
  hClose theFile2
