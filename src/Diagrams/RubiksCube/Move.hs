module Diagrams.RubiksCube.Move
  ( Move (..)
  , mirror
  , invert
  , allMoves
  ) where

-- | A move in <http://ruwix.com/the-rubiks-cube/notation/ standard notation>.
data Move = D | D' | U | U' | L | L' | R | R' | F | F' | B | B'
          | M | M' | E | E' | S | S' | X | X' | Y | Y' | Z | Z'
  deriving (Eq, Show, Read, Enum)

allMoves :: [Move]
allMoves = enumFrom D

-- | The opposite move.
invert :: Move -> Move
invert D  = D'
invert D' = D
invert U  = U'
invert U' = U
invert L  = L'
invert L' = L
invert R  = R'
invert R' = R
invert F  = F'
invert F' = F
invert B  = B'
invert B' = B
invert M  = M'
invert M' = M
invert E  = E'
invert E' = E
invert S  = S'
invert S' = S
invert X  = X'
invert X' = X
invert Y  = Y'
invert Y' = Y
invert Z  = Z'
invert Z' = Z

-- | Swaps left and right.
mirror :: Move -> Move
mirror D  = D'
mirror D' = D
mirror U  = U'
mirror U' = U
mirror L  = R'
mirror L' = R
mirror R  = L'
mirror R' = L
mirror F  = F'
mirror F' = F
mirror B  = B'
mirror B' = B
mirror M  = M'
mirror M' = M
mirror E  = E'
mirror E' = E
mirror S  = S'
mirror S' = S
mirror X  = X'
mirror X' = X
mirror Y  = Y'
mirror Y' = Y
mirror Z  = Z'
mirror Z' = Z
