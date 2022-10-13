import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

renderInWindow displayFunction = do
    (progName,_) <- getArgsAndInitialize
    createWindow progName
    displayCallback $= displayFunction
    mainLoop

muka = do
    currentColor $= Color4 1 0.5 0 0
    vertex $ Vertex3 (-0.4) (0.4) (0::GLfloat)
    vertex $ Vertex3 (-0.4) (-0.1) (0::GLfloat)
    vertex $ Vertex3 (-0.2) (-0.3) (0::GLfloat)
    vertex $ Vertex3 (0.2) (-0.3) (0::GLfloat)
    vertex $ Vertex3 (0.4) (-0.1) (0::GLfloat)
    vertex $ Vertex3 (0.4) (0.1) (0::GLfloat)
    vertex $ Vertex3 (0.4) (0.4) (0::GLfloat)
    vertex $ Vertex3 (0.2) (0.3) (0::GLfloat)
    vertex $ Vertex3 (-0.2) (0.3) (0::GLfloat)

mataKiri = do
    currentColor $= Color4 0 0 0 0
    vertex $ Vertex3 (-0.2) (0.2) (0::GLfloat)
    vertex $ Vertex3 (-0.2) (0.1) (0::GLfloat)
    vertex $ Vertex3 (-0.1) (0.1) (0::GLfloat)
    vertex $ Vertex3 (-0.1) (0.2) (0::GLfloat)

mataKanan = do
    currentColor $= Color4 0 0 0 0
    vertex $ Vertex3 (0.2) (0.2) (0::GLfloat)
    vertex $ Vertex3 (0.2) (0.1) (0::GLfloat)
    vertex $ Vertex3 (0.1) (0.1) (0::GLfloat)
    vertex $ Vertex3 (0.1) (0.2) (0::GLfloat)

mulut = do
    currentColor $= Color4 1 0 0 0
    vertex $ Vertex3 (-0.2) (-0.1) (0::GLfloat)
    vertex $ Vertex3 (-0.1) (-0.2) (0::GLfloat)
    vertex $ Vertex3 (0.1) (-0.2) (0::GLfloat)
    vertex $ Vertex3 (0.2) (-0.1) (0::GLfloat)

main = renderInWindow display

display = do
    clearColor $= Color4 1 1 1 1
    clear [ColorBuffer]
    renderPrimitive Polygon muka
    renderPrimitive Polygon mataKiri
    renderPrimitive Polygon mataKanan
    renderPrimitive Polygon mulut
    flush