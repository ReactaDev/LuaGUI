
--UI Libs

--Adds fonts
function love.load()
    poppins = love.graphics.newFont("Poppins-SemiBold.ttf", 27)
    poppinsSmall = love.graphics.newFont("Poppins-SemiBold.ttf", 17)
    editIcon = love.graphics.newImage("editIcon.png")
end

-- Button Styles
-- Button Style One

function ButtonStyleOne(x, y)
    love.graphics.setFont(poppins)
    love.graphics.setColor(love.math.colorFromBytes(35, 35, 35))
    love.graphics.rectangle("fill",x,y,155,60)

    love.graphics.setColor(255, 255, 255)
    love.graphics.printf("Button", x, y+(60/5), 155, "center")
end

-- Button Style Two
function ButtonStyleTwo(x1, y1)
    love.graphics.setFont(poppins)
    love.graphics.setColor(love.math.colorFromBytes(35, 35, 35))
    love.graphics.rectangle("fill",x1,y1,155, 155)
    love.graphics.setColor(love.math.colorFromBytes(188, 134, 235))
    love.graphics.draw(editIcon, x1+(97.52/2), y1+30)
    love.graphics.printf("Example", x1, y1+(155-(155/3)), 155, "center")
end

-- Text Entry Box
function TextEntryBox(x, y, placeholder)
    love.graphics.setFont(poppins)
    love.graphics.setColor(love.math.colorFromBytes(35, 35, 35))
    love.graphics.rectangle("fill", x, y, 440, 60)
    love.graphics.setColor(love.math.colorFromBytes(255, 255, 255))
    love.graphics.print(placeholder, x+10, y+10)
end


-- Toggle Button
function ToggleButton(x, y, title, descirption, defaultState)
    local state = defaultState or false

    love.graphics.setColor(love.math.colorFromBytes(35, 35, 35))
    love.graphics.rectangle("fill", x, y, 440, 80)

    love.graphics.setColor(255, 255, 255)
    love.graphics.setFont(poppins)
    love.graphics.printf(title, x+10, y, 440, "left")
    love.graphics.setColor(love.math.colorFromBytes(132, 132, 132))
    love.graphics.setFont(poppinsSmall)
    love.graphics.printf(descirption, x+10, y+35, 440, "left")

    if state == true then
        love.graphics.setColor(love.math.colorFromBytes(117, 205, 103))
        love.graphics.rectangle("fill", x+340, y+45/2, 90, 35)
        love.graphics.setColor(love.math.colorFromBytes(80, 80, 80))
        love.graphics.rectangle("fill", x+395, y+45/2, 35, 35)
    end
    if state == false then
        love.graphics.setColor(love.math.colorFromBytes(244, 105, 105))
        love.graphics.rectangle("fill", x+340, y+45/2, 90, 35)
        love.graphics.setColor(love.math.colorFromBytes(80, 80, 80))
        love.graphics.rectangle("fill", x+395, y+45/2, 35, 35)
    end
end


-- Sets Window Title
function windowTitle(title)
    love.window.setTitle(title)
end


-- Sets Window Size
function windwoSize(width, height)
    love.window.setMode(width, height)
end


-- Sets Background Color
function backgroundColor(r, g, b)
    love.graphics.setBackgroundColor(love.math.colorFromBytes(r, g, b))
end

-- Gets Clipboard
function getClipboardText()
    return love.system.getClipboardText()
end


-- Sets the Window Icon
function windowIcon(Icon)
    love.window.setIcon(imagedata)
end
--Rendering

function love.draw()
    ButtonStyleTwo(10, 10)
    ButtonStyleTwo(10, 175)

    ButtonStyleOne(10, 350)

    TextEntryBox(10, 420, "Example")

    ToggleButton(10, 500, "Example", "Example", false)
end

function love.update()
    windowTitle("Example LuaUI")
end