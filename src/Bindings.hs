module Bindings (display,reshape) where

import Graphics.UI.GLUT
import Display


reshape :: ReshapeCallback
reshape size =
  viewport $= (Position 0 0, size)
 
keyboardMouse :: KeyboardMouseCallback
keyboardMouse _key _state _modifiers _position = return ()
