import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

renderInWindow displayFunction = do
    (progName,_) <- getArgsAndInitialize
    createWindow progName
    displayCallback $= displayFunction
    mainLoop

colorTriangle = do
    currentColor $= Color4 1 0 0 1
    vertex $ Vertex3 (-0.5) (-0.5) (0::GLfloat)
    currentColor $= Color4 0 1 0 1
    vertex $ Vertex3 (0.5) (-0.5) (0::GLfloat)
    currentColor $= Color4 0 0 1 1
    vertex $ Vertex3 (-0.5) (0.5) (0::GLfloat)

main = renderInWindow display

display = do
    clearColor $= Color4 1 1 1 1
    clear [ColorBuffer]
    renderPrimitive Triangles colorTriangle
    flush
