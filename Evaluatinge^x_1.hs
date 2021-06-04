{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

-- 秦九韶公式
fun :: Double -> Int -> Int -> Double
fun x nterms i | i == nterms = 1.0
               | i /= nterms = 1.0 + x / (fromIntegral i) * (fun x nterms (i+1))

main :: IO()
main = do
    n <- readLn :: IO Int

    forM_ [1..n] $ \n_itr -> do
        x <- readLn :: IO Double
        print $ fun x 10 1
        
        

