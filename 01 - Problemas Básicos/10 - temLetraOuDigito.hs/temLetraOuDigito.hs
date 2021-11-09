import Data.Char
temLetraOuDigito xs = or[(isLetter(x) || isDigit(x)) | x <- xs]
