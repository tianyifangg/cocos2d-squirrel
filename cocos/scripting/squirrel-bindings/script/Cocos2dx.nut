class Callback {

    func = null
    params = null

    constructor(func, ...) {
        this.func = func
        this.params = vargv
    }

    function invoke() {
        local len = this.params.len()

        switch (len) {
            case 0:
                func()
                break
            case 1:
                func(this.params[0])
                break
            case 2:
                func(this.params[0], this.params[1])
                break
        }
    }
}
