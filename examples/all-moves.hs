module Main (main) where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
import Diagrams.RubiksCube.Move
import Diagrams.RubiksCube.Draw
import Diagrams.RubiksCube.Model

diag :: Diagram B
diag = vsep 1 [hsep 1 [text (show m) # fc red, drawMove m red def solvedRubiksCube] | m <- allMoves]

main :: IO ()
main = mainWith diag