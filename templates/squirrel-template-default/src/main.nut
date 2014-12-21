// initialize director
local director = cc.Director.getInstance()

//local glview = director.getOpenGLView()
//glview.setDesignResolutionSize(480, 320, 1)

// turn on display FPS
director.setDisplayStats(true)
// set FPS. the default value is 1.0/60 if you don't call this
director.setAnimationInterval(1.0 / 60)
// create a scene. it's an autorelease object
dofile("src/HelloWorld.nut")
local scene = HelloWorld.createScene()
// run
director.runWithScene(scene)
