module Display (display) where

import Graphics.UI.GLUT

display :: DisplayCallback
display = do
        clear [ColorBuffer]
        let color3f r g b = color $ Color3 r g (b :: GLfloat)
            vertex3f x y z = vertex $ Vertex3 x y (z :: GLfloat)
        clear [ColorBuffer]
        renderPrimitive Quads $ do
            color3f 1 0 0
            vertex3f 0   0      0
            vertex3f 0.2 0.2    0
            vertex3f 0.4 0      0
            vertex3f 0.2 (-0.2) 0
    
            color3f 0 1 0
            vertex3f 0      0   0
            vertex3f 0.2    0.2 0
            vertex3f 0      0.4 0
            vertex3f (-0.2) 0.2 0
    
            color3f 0 0 1
            vertex3f 0      0      0
            vertex3f 0.2    (-0.2) 0
            vertex3f 0      (-0.4) 0
            vertex3f (-0.2) (-0.2) 0
    
            color3f 1 0 1
            vertex3f 0      0      0
            vertex3f (-0.2) (-0.2) 0
            vertex3f (-0.4) 0      0
            vertex3f (-0.2) 0.2    0
        flush
    