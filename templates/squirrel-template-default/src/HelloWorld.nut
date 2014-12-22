class HelloWorld extends cc.Layer {

    static function createScene() {
        // 'scene' is an autorelease object
        local scene = cc.Scene.create()
        // 'layer' is an autorelease object
        local layer = HelloWorld.create()
        // add layer as a child to scene
        scene.addChild(layer)
        // return the scene
        return scene
    }

    function init() {

        local visibleSize = cc.Director.getInstance().getVisibleSize()
        local origin = cc.Director.getInstance().getVisibleOrigin()

        /////////////////////////////
        // 2. add a menu item with "X" image, which is clicked to quit the program
        //    you may modify it.

        // add a "close" icon to exit the progress. it's an autorelease object
        local closeItem = cc.MenuItemImage.create("res/CloseNormal.png",
                                                  "res/CloseSelected.png",
                                                  HelloWorld.menuCloseCallback)
        closeItem.setPosition(cc.Vec2(origin.x + visibleSize.width - closeItem.getContentSize().width / 2,
                              origin.y + closeItem.getContentSize().height / 2))

        // create menu, it's an autorelease object
        local menu = cc.Menu.create(closeItem)
        menu.setPosition(cc.Vec2.ZERO)
        this.addChild(menu, 1)

        /////////////////////////////
        // 3. add your codes below...

        // add a label shows "Hello World"
        // create and initialize a label
        local label = cc.Label.createWithTTF("Hello World", "res/fonts/Marker Felt.ttf", 24)
        // position the label on the center of the screen
        label.setPosition(cc.Vec2(origin.x + visibleSize.width / 2,
                               origin.y + visibleSize.height - label.getContentSize().height))
        // add the label as a child to this layer
        this.addChild(label, 1)
        // add "HelloWorld" splash screen"
        local sprite = cc.Sprite.create("res/HelloWorld.png")
        // position the sprite on the center of the screen
        sprite.setPosition(cc.Vec2(visibleSize.width / 2 + origin.x, visibleSize.height / 2 + origin.y))
        // add the sprite as a child to this layer
        this.addChild(sprite, 0)
    }

    function menuCloseCallback(pSender) {
        cc.Director.getInstance().end()
        exit(0)
    }
}
