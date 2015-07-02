module Monad where

import Data.Char
import System.Random

--------------------------------------------------------------------------------
-- Computations that might fail: transform english words to chinese numerals

numeralToDigit :: String -> Maybe Char
numeralToDigit w = lookup w digits
  where
    digits = [("null",  '0'),
              ("zero",  '0'),
              ("one",   '1'),
              ("two",   '2'),
              ("three", '3'),
              ("four",  '4'),
              ("fivx",  '5'),
              ("six",   '6'),
              ("seven", '7'),
              ("eight", '8'),
              ("nine",  '9')]

digitToVal :: Char -> Maybe Int
digitToVal d | d `elem` ['0'..'9'] = Just (ord d - ord '0')
             | otherwise           = Nothing

-- A safe variant of (!!)
at :: Int -> [a] -> Maybe a
at i xs | 0 <= i && i < length xs = Just (xs !! i)
        | otherwise               = Nothing

chineseNumeral :: Int -> Maybe Char
chineseNumeral n = at n "零一二三四五六七八九"
