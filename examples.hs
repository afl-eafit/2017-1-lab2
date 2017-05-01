module Examples where

import DFA
import RegExp
import qualified Data.Map as Map
import qualified Data.Set as Set

dfa :: DFA
dfa = DFA
    { states = Set.fromList [1, 2]
    , symbols = Set.fromList ['0', '1']
    , delta = Map.fromList
            [ ((1, '1'), 1)
            , ((1, '0'), 2)
            , ((2, '1'), 2)
            , ((2, '0'), 2) ]
    , start = 1
    , accepting = Set.fromList [2] }

_0 :: RegExp
_0 = Symbol '0'

_1 :: RegExp
_1 = Symbol '1'

reg :: RegExp 
reg = Plus Epsilon (Plus _0 _1)

