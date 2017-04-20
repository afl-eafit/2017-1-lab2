{-|
Module      : RegExp
Description : A RegExp module adapted from:
              www1.eafit.edu.co/asr/courses/automata-CM0081/src/RegExp.html
Maintainer  : asr@eafit.edu.co, shinca12@eafit.edu.co
-}
module RegExp where

data RegExp = Empty
            | Epsilon
            | Symbol Char
            | Star RegExp
            | Plus RegExp RegExp
            | Dot  RegExp RegExp
