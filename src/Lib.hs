module Lib
    ( someFunc
    )
where

import Bindings
import Graphics.UI.GLUT

someFunc :: IO ()
someFunc = do
    (_progName, _args) <- getArgsAndInitialize
    _window            <- createWindow "Hello World"
    displayCallback $= display
    reshapeCallback $= Just reshape
    mainLoop

