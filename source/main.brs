sub Main()
    ' 1. Create the modern SceneGraph screen canvas
    screen = CreateObject("roSGScreen")
    port = CreateObject("roMessagePort")
    screen.SetMessagePort(port)

    ' 2. Create the root scene component using your XML file name
    scene = screen.CreateScene("MainScene")
    screen.Show()

    ' 3. Standard event loop to keep the application running
    while true
        msg = wait(0, port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub