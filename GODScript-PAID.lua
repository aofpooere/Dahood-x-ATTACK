
print("HavenRBX Is a qt")
game:GetService("StarterGui"):SetCore("SendNotification",{     
Title = "CREDITS",     
Text = "Made by Eren Yeaker",
Button1 = "I Subscribed.",
Duration = 30
})

-- Scripting is at the bottom --

if game.CoreGui:FindFirstChild("Library") then
    game.CoreGui:FindFirstChild("Library"):Destroy()
  end   
  local VLib = {RainbowColorValue = 0, HueSelectionPosition = 0}
  local UserInputService = game:GetService("UserInputService")
  local TweenService = game:GetService("TweenService")
  local RunService = game:GetService("RunService")
  local LocalPlayer = game:GetService("Players").LocalPlayer
  local Mouse = LocalPlayer:GetMouse()
  
  
  coroutine.wrap(
   function()
      while wait() do
         VLib.RainbowColorValue = VLib.RainbowColorValue + 1 / 255
         VLib.HueSelectionPosition = VLib.HueSelectionPosition + 1
  
         if VLib.RainbowColorValue >= 1 then
            VLib.RainbowColorValue = 0
         end
  
         if VLib.HueSelectionPosition == 80 then
            VLib.HueSelectionPosition = 0
         end
      end
   end
  )()
  
  local function MakeDraggable(topbarobject, object)
   local Dragging = nil
   local DragInput = nil
   local DragStart = nil
   local StartPosition = nil
  
   local function Update(input)
      local Delta = input.Position - DragStart
      local pos =
         UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
         )
      local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
      Tween:Play()
   end
  
   topbarobject.InputBegan:Connect(
      function(input)
         if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position
  
            input.Changed:Connect(
               function()
                  if input.UserInputState == Enum.UserInputState.End then
                     Dragging = false
                  end
               end
            )
         end
      end
   )
  
   topbarobject.InputChanged:Connect(
      function(input)
         if
            input.UserInputType == Enum.UserInputType.MouseMovement or
               input.UserInputType == Enum.UserInputType.Touch
         then
            DragInput = input
         end
      end
   )
  
   UserInputService.InputChanged:Connect(
      function(input)
         if input == DragInput and Dragging then
            Update(input)
         end
      end
   )
  end
  
  local Library = Instance.new("ScreenGui")
  Library.Name = "Library"
  Library.Parent =  game.CoreGui
  Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  
  local uitoggled = false
  UserInputService.InputBegan:Connect(
   function(io, p)
      if io.KeyCode == Enum.KeyCode.RightControl then
         if uitoggled == false then
            Library.Enabled = false
            uitoggled = true
         else
            Library.Enabled = true
            uitoggled = false
         end
      end
   end
  )
  
  function VLib:Window(text, textgame, textcircle)
   local FirstTab = false
   local MainFrame = Instance.new("Frame")
   local MainCorner = Instance.new("UICorner")
   local LeftFrame = Instance.new("Frame")
   local LeftFrameCorner = Instance.new("UICorner")
   local MainTitle = Instance.new("TextLabel")
   local Circle = Instance.new("Frame")
   local CircleCorner = Instance.new("UICorner")
   local CircleName = Instance.new("TextLabel")
   local GameTitle = Instance.new("TextLabel")
   local TabHolder = Instance.new("Frame")
   local TabHoldLayout = Instance.new("UIListLayout")
   local RainbowLine = Instance.new("Frame")
   local RainbowLineCorner = Instance.new("UICorner")
   local ContainerHold = Instance.new("Folder")
   local DragFrame = Instance.new("Frame")
   local Glow = Instance.new("ImageLabel")
  
   MainFrame.Name = "MainFrame"
   MainFrame.Parent = Library
   MainFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
   MainFrame.Position = UDim2.new(0.5, -325, 0.5, -250)
   MainFrame.Size = UDim2.new(0, 650, 0, 500)
  
   MainCorner.CornerRadius = UDim.new(0, 5)
   MainCorner.Name = "MainCorner"
   MainCorner.Parent = MainFrame
  
   LeftFrame.Name = "LeftFrame"
   LeftFrame.Parent = MainFrame
   LeftFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
   LeftFrame.Position = UDim2.new(-0.000674468291, 0, -0.000149806539, 0)
   LeftFrame.Size = UDim2.new(0, 190, 0, 500)
  
   LeftFrameCorner.CornerRadius = UDim.new(0, 5)
   LeftFrameCorner.Name = "LeftFrameCorner"
   LeftFrameCorner.Parent = LeftFrame
  
   MainTitle.Name = "MainTitle"
   MainTitle.Parent = LeftFrame
   MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   MainTitle.BackgroundTransparency = 1.000
   MainTitle.Position = UDim2.new(0.168, 0, 0.043, 0)
   MainTitle.Size = UDim2.new(0, 71, 0, 20)
   MainTitle.Font = Enum.Font.Gotham 
   MainTitle.Text = text
   MainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
   MainTitle.TextSize = 25.000
   MainTitle.TextXAlignment = Enum.TextXAlignment.Left
  
  
   GameTitle.Name = "GameTitle"
   GameTitle.Parent = LeftFrame
   GameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   GameTitle.BackgroundTransparency = 1.000
   GameTitle.Position = UDim2.new(0.168, 0, 0.089, 6)
   GameTitle.Size = UDim2.new(0, 71, 0, 20)
   GameTitle.Font = Enum.Font.Gotham
   GameTitle.Text = textgame
   GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
   GameTitle.TextSize = 17.000
   GameTitle.TextTransparency = 0.400
   GameTitle.TextXAlignment = Enum.TextXAlignment.Left
  
   TabHolder.Name = "TabHolder"
   TabHolder.Parent = LeftFrame
   TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   TabHolder.BackgroundTransparency = 1.000
   TabHolder.Position = UDim2.new(0.0806451589, 0, 0.189360261, 0)
   TabHolder.Size = UDim2.new(0, 159, 0, 309)
  
   TabHoldLayout.Name = "TabHoldLayout"
   TabHoldLayout.Parent = TabHolder
   TabHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
   TabHoldLayout.Padding = UDim.new(0,5)
  
   ContainerHold.Name = "ContainerHold"
   ContainerHold.Parent = MainFrame
  
   DragFrame.Name = "DragFrame"
   DragFrame.Parent = MainFrame
   DragFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   DragFrame.BackgroundTransparency = 1.000
   DragFrame.Position = UDim2.new(0.30130294, 0, 0.00253164559, 0)
   DragFrame.Size = UDim2.new(0, 428, 0, 21)
  
   Glow.Name = "Glow"
   Glow.Parent = LeftFrame
   Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Glow.BackgroundTransparency = 1.000
   Glow.BorderSizePixel = 0
   Glow.Position = UDim2.new(0, -15, 0, -15)
   Glow.Size = UDim2.new(1, 30, 1, 30)
   Glow.ZIndex = 0
   Glow.Image = "rbxassetid://4996891970"
   Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
   Glow.ScaleType = Enum.ScaleType.Slice
   Glow.SliceCenter = Rect.new(20, 20, 280, 280)
  
   MakeDraggable(MainFrame, MainFrame)
  
   function VLib:Notification(textdesc)
      local NotificationHold = Instance.new("TextButton")
      local NotificationFrame = Instance.new("Frame")
      local OkayBtn = Instance.new("TextButton")
      local OkayBtnCorner = Instance.new("UICorner")
      local OkayBtnTitle = Instance.new("TextLabel")
      local NotificationTitle = Instance.new("TextLabel")
      local NotificationDesc = Instance.new("TextLabel")
  
      NotificationHold.Name = "NotificationHold"
      NotificationHold.Parent = MainFrame
      NotificationHold.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
      NotificationHold.BackgroundTransparency = 0.700
      NotificationHold.BorderSizePixel = 0
      NotificationHold.Size = UDim2.new(0, 650, 0, 500)
      NotificationHold.AutoButtonColor = false
      NotificationHold.Font = Enum.Font.SourceSans
      NotificationHold.Text = ""
      NotificationHold.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHold.TextSize = 14.000
  
      TweenService:Create(
         NotificationHold,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.7}
      ):Play()
      wait(0.4)
  
      NotificationFrame.Name = "NotificationFrame"
      NotificationFrame.Parent = NotificationHold
      NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
      NotificationFrame.BorderSizePixel = 0
      NotificationFrame.ClipsDescendants = true
      NotificationFrame.Position = UDim2.new(0.5, 0, 0.498432577, 0)
      NotificationFrame.Size = UDim2.new(0, 0, 0, 0)		
  
      NotificationFrame:TweenSize(UDim2.new(0, 305,0, 283), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
  
      OkayBtn.Name = "OkayBtn"
      OkayBtn.Parent = NotificationFrame
      OkayBtn.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
      OkayBtn.Position = UDim2.new(0.171131134, 0, 0.759717345, 0)
      OkayBtn.Size = UDim2.new(0, 200, 0, 42)
      OkayBtn.AutoButtonColor = false
      OkayBtn.Font = Enum.Font.SourceSans
      OkayBtn.Text = ""
      OkayBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
      OkayBtn.TextSize = 14.000
  
      OkayBtnCorner.CornerRadius = UDim.new(0, 5)
      OkayBtnCorner.Name = "OkayBtnCorner"
      OkayBtnCorner.Parent = OkayBtn
  
      OkayBtnTitle.Name = "OkayBtnTitle"
      OkayBtnTitle.Parent = OkayBtn
      OkayBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      OkayBtnTitle.BackgroundTransparency = 1.000
      OkayBtnTitle.Size = UDim2.new(0, 200, 0, 42)
      OkayBtnTitle.Text = "Okey"
      OkayBtnTitle.Font = Enum.Font.Gotham
      OkayBtnTitle.TextColor3 = Color3.fromRGB(202, 202, 202)
      OkayBtnTitle.TextSize = 24.000
  
      NotificationTitle.Name = "NotificationTitle"
      NotificationTitle.Parent = NotificationFrame
      NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      NotificationTitle.BackgroundTransparency = 1.000
      NotificationTitle.Position = UDim2.new(0.0559394211, 0, 0.0652336925, 0)
      NotificationTitle.Size = UDim2.new(0, 272, 0, 26)
      NotificationTitle.ZIndex = 3
      NotificationTitle.Font = Enum.Font.Gotham
      NotificationTitle.Text = "Notification"
      NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
      NotificationTitle.TextSize = 24.000
  
      NotificationDesc.Name = "NotificationDesc"
      NotificationDesc.Parent = NotificationFrame
      NotificationDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      NotificationDesc.BackgroundTransparency = 1.000
      NotificationDesc.Position = UDim2.new(0.0670000017, 0, 0.218999997, 0)
      NotificationDesc.Size = UDim2.new(0, 274, 0, 146)
      NotificationDesc.Font = Enum.Font.Gotham
      NotificationDesc.Text = textdesc
      NotificationDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
      NotificationDesc.TextSize = 20.000
      NotificationDesc.TextWrapped = true
      NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
      NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
  
      OkayBtn.MouseEnter:Connect(function()
         TweenService:Create(
            OkayBtn,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37,37,37)}
         ):Play()
      end)
  
      OkayBtn.MouseLeave:Connect(function()
         TweenService:Create(
            OkayBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(34, 34, 34)}
         ):Play()
      end)
  
      OkayBtn.MouseButton1Click:Connect(function()
         NotificationFrame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
  
         wait(0.4)
  
         TweenService:Create(
            NotificationHold,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
  
         wait(.3)
  
         NotificationHold:Destroy()
      end)
   end
  
   coroutine.wrap(
      function()
         while wait() do
         end
      end
   )()
   local Tabs = {}
   function Tabs:Tab(text)
      local Tab = Instance.new("TextButton")
      local TabCorner = Instance.new("UICorner")
      local Title = Instance.new("TextLabel")
      local UIGradient = Instance.new('UIGradient')
      Tab.Name = "Tab"
      Tab.Parent = TabHolder
      Tab.BackgroundColor3 = Color3.fromRGB(255,255,255)
      Tab.Size = UDim2.new(0, 170, 0, 35)
      Tab.AutoButtonColor = false
      Tab.Font = Enum.Font.SourceSans
      Tab.Text = ""
      Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
      Tab.TextSize = 15.000
      Tab.BackgroundTransparency = 1
  
      UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(121,9,112
)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27,50,255))}
      UIGradient.Parent = Tab
  
  
      TabCorner.CornerRadius = UDim.new(0, 3)
      TabCorner.Name = "TabCorner"
      TabCorner.Parent = Tab
  
      Title.Name = "Title"
      Title.Parent = Tab
      Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Title.BackgroundTransparency = 1.000
      Title.Position = UDim2.new(0.0566037744, 0, 0.1, 0)
      Title.Size = UDim2.new(0, 150, 0, 29)
      Title.Font = Enum.Font.Gotham
      Title.Text = text
      Title.TextColor3 = Color3.fromRGB(255, 255, 255)
      Title.TextSize = 17.000
      Title.TextXAlignment = Enum.TextXAlignment.Left
  
      local Container = Instance.new("ScrollingFrame")
      local ContainerLayout = Instance.new("UIListLayout")
  
      Container.Name = "Container"
      Container.Parent = ContainerHold
      Container.Active = true
      Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Container.BackgroundTransparency = 1.000
      Container.BorderSizePixel = 0
      Container.Position = UDim2.new(0.34, 0, 0.0506329127, 0)
      Container.Size = UDim2.new(0, 420, 0, 450)
      Container.ScrollBarThickness = 5
      Container.CanvasSize = UDim2.new(0, 0, 0, 0)
      Container.Visible = false
      Container.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
  
      ContainerLayout.Name = "ContainerLayout"
      ContainerLayout.Parent = Container
      ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
      ContainerLayout.Padding = UDim.new(0, 15)
  
      if FirstTab == false then
         FirstTab = true
         Tab.BackgroundTransparency = 0
         Container.Visible = true
      end
      Tab.MouseButton1Click:Connect(
         function()
            for i, v in next, ContainerHold:GetChildren() do
               if v.Name == "Container" then
                  v.Visible = false
               end
            end
  
            for i, v in next, TabHolder:GetChildren() do
               if v.ClassName == "TextButton" then
                  TweenService:Create(
                     v,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundTransparency = 1}
                  ):Play()
                  TweenService:Create(
                     Tab,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundTransparency = 0}
                  ):Play()
               end
            end
            Container.Visible = true
         end
      )
      local ContainerItems = {}
      function ContainerItems:Button(text, callback)
         local Button = Instance.new("TextButton")
         local ButtonCorner = Instance.new("UICorner")
  
         Button.Name = "Button"
         Button.Parent = Container
         Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Button.Size = UDim2.new(0, 405, 0, 40)
         Button.AutoButtonColor = false
         Button.Font = Enum.Font.Gotham
         Button.TextColor3 = Color3.fromRGB(255, 255, 255)
         Button.TextSize = 15.000
         Button.Text = text
  
         ButtonCorner.CornerRadius = UDim.new(0, 5)
         ButtonCorner.Name = "ButtonCorner"
         ButtonCorner.Parent = Button
  
         Button.MouseEnter:Connect(
            function()
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
               ):Play()
            end
         )
         Button.MouseLeave:Connect(
            function()
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
               ):Play()
            end
         )
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
  
         Button.MouseButton1Click:Connect(
            function()
               pcall(callback)
               Button.TextSize = 0
               TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 17}):Play()
               wait(.2)
               TweenService:Create(Button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 14}):Play()
            end
         )
      end
      function ContainerItems:Toggle(text,Default,callback)
         local Toggled = Default or false
         local ValueToggle = ValueTogglea or false
         local Toggle = Instance.new("TextButton")
         local ToggleCorner = Instance.new("UICorner")
         local Title = Instance.new("TextLabel")
         local ToggleFrame = Instance.new("Frame")
         local ToggleFrameCorner = Instance.new("UICorner")
         local ToggleFrameRainbow = Instance.new("Frame")
         local ToggleFrameRainbowCorner = Instance.new("UICorner")
         local ToggleDot = Instance.new("Frame")
         local ToggleDotCorner = Instance.new("UICorner")
         local UIGradient_2 = Instance.new('UIGradient')
         Toggle.Name = "Toggle"
         Toggle.Parent = Container
         Toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Toggle.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
         Toggle.Size = UDim2.new(0, 405, 0, 40)
         Toggle.AutoButtonColor = false
         Toggle.Font = Enum.Font.Gotham
         Toggle.Text = ""
         Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
         Toggle.TextSize = 14.000
  
         ToggleCorner.CornerRadius = UDim.new(0, 5)
         ToggleCorner.Name = "ToggleCorner"
         ToggleCorner.Parent = Toggle
  
         Title.Name = "Title"
         Title.Parent = Toggle
         Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Title.BackgroundTransparency = 1.000
         Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
         Title.Size = UDim2.new(0, 430, 0, 40)
         Title.Font = Enum.Font.Gotham
         Title.Text = text
         Title.TextColor3 = Color3.fromRGB(255, 255, 255)
         Title.TextSize = 15.000
         Title.TextXAlignment = Enum.TextXAlignment.Left
  
         ToggleFrame.Name = "ToggleFrame"
         ToggleFrame.Parent = Toggle
         ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
         ToggleFrame.Position = UDim2.new(0.88, 0, 0.21, 0)
         ToggleFrame.Size = UDim2.new(0, 40, 0, 22)
  
         ToggleFrameCorner.CornerRadius = UDim.new(1, 0)
         ToggleFrameCorner.Name = "ToggleFrameCorner"
         ToggleFrameCorner.Parent = ToggleFrame
  
         ToggleFrameRainbow.Name = "ToggleFrameRainbow"
         ToggleFrameRainbow.Parent = ToggleFrame
         ToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(27,27,27)
         ToggleFrameRainbow.BackgroundTransparency = 1.000
         ToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
         ToggleFrameRainbow.Size = UDim2.new(0, 40, 0, 22)
  
         ToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
         ToggleFrameRainbowCorner.Name = "ToggleFrameRainbowCorner"
         ToggleFrameRainbowCorner.Parent = ToggleFrameRainbow
  
         ToggleDot.Name = "ToggleDot"
         ToggleDot.Parent = ToggleFrameRainbow
         ToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
         ToggleDot.Size = UDim2.new(0, 16, 0, 16)
  
         UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(160, 207, 236)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(102, 152, 255))}
         UIGradient_2.Parent = ToggleDot
  
         ToggleDotCorner.CornerRadius = UDim.new(1, 0)
         ToggleDotCorner.Name = "ToggleDotCorner"
         ToggleDotCorner.Parent = ToggleDot
  
         Toggle.MouseEnter:Connect(
            function()
               TweenService:Create(
                  Toggle,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
               ):Play()
  
            end
         )
         Toggle.MouseLeave:Connect(
            function()
               TweenService:Create(
                  Toggle,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
               ):Play()
            end
         )
  
         if Toggled == true then
          UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(160, 207, 236)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(102, 152, 255))}
  
          TweenService:Create(
             ToggleFrameRainbow,
             TweenInfo.new(.2, Enum.EasingStyle.Quad),
             {BackgroundTransparency = 0}
          ):Play()
          TweenService:Create(
             ToggleDot,
             TweenInfo.new(.2, Enum.EasingStyle.Quad),
             {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
          ):Play()
          pcall(callback, Toggled)
       else
          ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(228, 92, 255))}
  
          TweenService:Create(
             ToggleFrameRainbow,
             TweenInfo.new(.2, Enum.EasingStyle.Quad),
             {BackgroundTransparency = 1}
          ):Play()
          TweenService:Create(
             ToggleDot,
             TweenInfo.new(.2, Enum.EasingStyle.Quad),
             {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
          ):Play()
       end
  
         Toggle.MouseButton1Click:Connect(
            function()
               if Toggled == false then
                  UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(160, 207, 236)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(102, 152, 255))}
  
                  TweenService:Create(
                     ToggleFrameRainbow,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundTransparency = 0}
                  ):Play()
                  TweenService:Create(
                     ToggleDot,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                  ):Play()
               else
                  UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(160, 207, 236)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(102, 152, 255))}
  
                  TweenService:Create(
                     ToggleFrameRainbow,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundTransparency = 1}
                  ):Play()
                  TweenService:Create(
                     ToggleDot,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                  ):Play()
               end
               Toggled = not Toggled
               pcall(callback, Toggled)
            end
         )
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
      end
      function ContainerItems:Slider(text, min, max, start, callback)
         local dragging = false
         local Slider = Instance.new("TextButton")
         local Title = Instance.new("TextLabel")
         local SliderFrame = Instance.new("Frame")
         local SliderFrameCorner = Instance.new("UICorner")
         local SliderIndicator = Instance.new("Frame")
         local SliderIndicatorCorner = Instance.new("UICorner")
         local SliderCorner = Instance.new("UICorner")
         local Value = Instance.new("TextLabel")
         local UIGradient_3 = Instance.new('UIGradient')
  
         Slider.Name = "Slider"
         Slider.Parent = Container
         Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Slider.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
         Slider.Size = UDim2.new(0, 405, 0, 49)
         Slider.AutoButtonColor = false
         Slider.Font = Enum.Font.Gotham
         Slider.Text = ""
         Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
         Slider.TextSize = 14.000
  
         Title.Name = "Title"
         Title.Parent = Slider
         Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Title.BackgroundTransparency = 1.000
         Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
         Title.Size = UDim2.new(0, 192, 0, 28)
         Title.Font = Enum.Font.Gotham
         Title.Text = text
         Title.TextColor3 = Color3.fromRGB(255, 255, 255)
         Title.TextSize = 14.000
         Title.TextXAlignment = Enum.TextXAlignment.Left
  
         SliderFrame.Name = "SliderFrame"
         SliderFrame.Parent = Slider
         SliderFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
         SliderFrame.Position = UDim2.new(0.0223324299, 0, 0.563266039, 0)
         SliderFrame.Size = UDim2.new(0, 384, 0, 11)
  
         SliderFrameCorner.Name = "SliderFrameCorner"
         SliderFrameCorner.Parent = SliderFrame
  
         SliderIndicator.Name = "SliderIndicator"
         SliderIndicator.Parent = SliderFrame
         SliderIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         SliderIndicator.BorderSizePixel = 0
         SliderIndicator.Position = UDim2.new(-0.00260408712, 0, 0.0363603085, 0)
         SliderIndicator.Size = UDim2.new((start or 0) / max, 0, 0, 11)
  
         UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(160, 207, 236)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(102, 152, 255))}
         UIGradient_3.Parent = SliderIndicator
  
         SliderIndicatorCorner.Name = "SliderIndicatorCorner"
         SliderIndicatorCorner.Parent = SliderIndicator
  
         SliderCorner.CornerRadius = UDim.new(0, 6)
         SliderCorner.Name = "SliderCorner"
         SliderCorner.Parent = Slider
  
         Value.Name = "Value"
         Value.Parent = Slider
         Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Value.BackgroundTransparency = 1.000
         Value.Position = UDim2.new(0.496277869, 0, 0, 0)
         Value.Size = UDim2.new(0, 192, 0, 28)
         Value.Font = Enum.Font.Gotham
         Value.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
         Value.TextColor3 = Color3.fromRGB(255, 255, 255)
         Value.TextSize = 14.000
         Value.TextXAlignment = Enum.TextXAlignment.Right
  
         local function slide(input)
            local pos =
               UDim2.new(
                  math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                  0,
                  0,
                  11
               )
            SliderIndicator:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
            local val = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
            Value.Text = tostring(val)
            pcall(callback, val)
         end
  
         SliderFrame.InputBegan:Connect(
            function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  slide(input)
                  dragging = true
               end
            end
         )
  
         SliderFrame.InputEnded:Connect(
            function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  dragging = false
               end
            end
         )
  
         UserInputService.InputChanged:Connect(
            function(input)
               if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                  slide(input)
               end
            end
         )
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
  
      end
      function ContainerItems:Dropdown(text, list, callback)
         local dropfunc = {}
         local DropToggled = false
         local FrameSize = 0
         local ItemCount = 0
  
         local Dropdown = Instance.new("TextButton")
         local Title = Instance.new("TextLabel")
         local DropdownCorner = Instance.new("UICorner")
         local Arrow = Instance.new("ImageLabel")
  
         Dropdown.Name = "Dropdown"
         Dropdown.Parent = Container
         Dropdown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Dropdown.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
         Dropdown.Size = UDim2.new(0, 405, 0, 45)
         Dropdown.AutoButtonColor = false
         Dropdown.Font = Enum.Font.Gotham
         Dropdown.Text = ""
         Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
         Dropdown.TextSize = 15.000
  
         Title.Name = "Title"
         Title.Parent = Dropdown
         Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Title.BackgroundTransparency = 1.000
         Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
         Title.Size = UDim2.new(0, 192, 0, 40)
         Title.Font = Enum.Font.Gotham
         Title.Text = text
         Title.TextColor3 = Color3.fromRGB(255, 255, 255)
         Title.TextSize = 15.000
         Title.TextXAlignment = Enum.TextXAlignment.Left
  
         DropdownCorner.CornerRadius = UDim.new(0, 6)
         DropdownCorner.Name = "DropdownCorner"
         DropdownCorner.Parent = Dropdown
  
         Arrow.Name = "Arrow"
         Arrow.Parent = Dropdown
         Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Arrow.BackgroundTransparency = 1.000
         Arrow.Position = UDim2.new(0.9, 0, 0.2, 0)
         Arrow.Size = UDim2.new(0, 27, 0, 27)
         Arrow.Image = "http://www.roblox.com/asset/?id=6034818372"
  
         local DropdownFrame = Instance.new("Frame")
         local DropdownFrameCorner = Instance.new("UICorner")
         local DropdownHolder = Instance.new("ScrollingFrame")
         local DropdownItemLayout = Instance.new("UIListLayout")
         local DropdownItemHolder = Instance.new("UIPadding")
  
         DropdownFrame.Name = "DropdownFrame"
         DropdownFrame.Parent = Container
         DropdownFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
         DropdownFrame.BorderSizePixel = 0
         DropdownFrame.Position = UDim2.new(0.334374994, 0, 0.604166687, 0)
         DropdownFrame.Size = UDim2.new(0, 403, 0, 0)
         DropdownFrame.Visible = false
  
         DropdownFrameCorner.Name = "DropdownFrameCorner"
         DropdownFrameCorner.Parent = DropdownFrame
  
         DropdownHolder.Name = "DropdownHolder"
         DropdownHolder.Parent = DropdownFrame
         DropdownHolder.Active = true
         DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         DropdownHolder.BackgroundTransparency = 1.000
         DropdownHolder.BorderSizePixel = 0
         DropdownHolder.Position = UDim2.new(0.0263156947, 0, 0.00326599111, 0)
         DropdownHolder.Size = UDim2.new(0, 386, 0, 0)
         DropdownHolder.ScrollBarThickness = 3
         DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
         DropdownHolder.ScrollBarImageColor3 = Color3.fromRGB(48, 48, 48)
  
         DropdownItemLayout.Name = "DropdownItemLayout"
         DropdownItemLayout.Parent = DropdownHolder
         DropdownItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
         DropdownItemLayout.Padding = UDim.new(0, 5)
  
         DropdownItemHolder.Name = "DropdownItemHolder"
         DropdownItemHolder.Parent = DropdownHolder
         DropdownItemHolder.PaddingBottom = UDim.new(0, 5)
         DropdownItemHolder.PaddingTop = UDim.new(0, 5)
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
  
         Dropdown.MouseEnter:Connect(
            function()
               TweenService:Create(
                  Dropdown,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
               ):Play()
            end
         )
         Dropdown.MouseLeave:Connect(
            function()
               TweenService:Create(
                  Dropdown,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
               ):Play()
            end
         )
  
         Dropdown.MouseButton1Click:Connect(
            function()
               if DropToggled == false then
                  DropdownFrame.Visible = true
                  DropdownFrame:TweenSize(
                     UDim2.new(0, 403, 0, FrameSize),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  DropdownHolder:TweenSize(
                     UDim2.new(0, 386, 0, FrameSize),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  TweenService:Create(
                     Arrow,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {Rotation = 180}
                  ):Play()
                  repeat
                     wait()
                  until DropdownFrame.Size == UDim2.new(0, 403, 0, FrameSize)
                  Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               else
                  DropdownFrame:TweenSize(
                     UDim2.new(0, 403, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  DropdownHolder:TweenSize(
                     UDim2.new(0, 386, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  TweenService:Create(
                     Arrow,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {Rotation = 0}
                  ):Play()
                  repeat
                     wait()
                  until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                  DropdownFrame.Visible = false
                  Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
               DropToggled = not DropToggled
            end
         )
  
         for i, v in next, list do
            ItemCount = ItemCount + 1
  
            if ItemCount == 1 then
               FrameSize = 39
            elseif ItemCount == 2 then
               FrameSize = 69
            elseif ItemCount >= 3 then
               FrameSize = 100
            end
  
            local Item = Instance.new("TextButton")
            local ItemCorner = Instance.new("UICorner")
  
            Item.Name = "Item"
            Item.Parent = DropdownHolder
            Item.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
            Item.Size = UDim2.new(0, 405, 0, 24)
            Item.AutoButtonColor = false
            Item.Font = Enum.Font.Gotham
            Item.TextColor3 = Color3.fromRGB(255, 255, 255)
            Item.TextSize = 14.000
            Item.Text = v
  
            ItemCorner.Name = "ItemCorner"
            ItemCorner.Parent = Item
  
            Item.MouseEnter:Connect(
               function()
                  TweenService:Create(
                     Item,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
                  ):Play()
               end
            )
            Item.MouseLeave:Connect(
               function()
                  TweenService:Create(
                     Item,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}
                  ):Play()
               end
            )
  
            Item.MouseButton1Click:Connect(
               function()
                  Title.Text = text .. " - " .. v
                  pcall(callback, v)
                  DropToggled = false
                  DropdownFrame:TweenSize(
                     UDim2.new(0, 403, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  DropdownHolder:TweenSize(
                     UDim2.new(0, 386, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  TweenService:Create(
                     Arrow,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {Rotation = 0}
                  ):Play()
                  repeat
                     wait()
                  until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                  DropdownFrame.Visible = false
                  Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
            )
  
            DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
         end
  
         function dropfunc:Clear()
            Title.Text = text
            FrameSize = 0
            ItemCount = 0
  
            for i,v in next, DropdownHolder:GetChildren() do
               if v.Name == "Item" then
                  v:Destroy()
               end
            end
  
            DropdownFrame:TweenSize(
               UDim2.new(0, 403, 0, 0),
               Enum.EasingDirection.Out,
               Enum.EasingStyle.Quart,
               0.1,
               true
            )
            DropdownHolder:TweenSize(
               UDim2.new(0, 386, 0, 0),
               Enum.EasingDirection.Out,
               Enum.EasingStyle.Quart,
               0.1,
               true
            )
            TweenService:Create(
               Arrow,
               TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
               {Rotation = 0}
            ):Play()
            repeat
               wait()
            until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
            DropdownFrame.Visible = false
            Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
         end
  
         function dropfunc:Add(toadd)
            ItemCount = ItemCount + 1
  
            if ItemCount == 1 then
               FrameSize = 39
            elseif ItemCount == 2 then
               FrameSize = 69
            elseif ItemCount >= 3 then
               FrameSize = 100
            end
  
            local Item = Instance.new("TextButton")
            local ItemCorner = Instance.new("UICorner")
  
            Item.Name = "Item"
            Item.Parent = DropdownHolder
            Item.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
            Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
            Item.Size = UDim2.new(0, 405, 0, 24)
            Item.AutoButtonColor = false
            Item.Font = Enum.Font.Gotham
            Item.TextColor3 = Color3.fromRGB(255, 255, 255)
            Item.TextSize = 14.000
            Item.Text = toadd
  
            ItemCorner.Name = "ItemCorner"
            ItemCorner.Parent = Item
  
            Item.MouseEnter:Connect(
               function()
                  TweenService:Create(
                     Item,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
                  ):Play()
               end
            )
            Item.MouseLeave:Connect(
               function()
                  TweenService:Create(
                     Item,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}
                  ):Play()
               end
            )
  
            Item.MouseButton1Click:Connect(
               function()
                  Title.Text = text .. " - " .. toadd
                  pcall(callback, toadd)
                  DropToggled = false
                  DropdownFrame:TweenSize(
                     UDim2.new(0, 403, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  DropdownHolder:TweenSize(
                     UDim2.new(0, 386, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  TweenService:Create(
                     Arrow,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {Rotation = 0}
                  ):Play()
                  repeat
                     wait()
                  until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
                  DropdownFrame.Visible = false
                  Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
            )
  
            DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
         end
  
         return dropfunc
      end
      function ContainerItems:Colorpicker(text, preset, callback)
         local ColorPickerToggled = false
         local OldToggleColor = Color3.fromRGB(0, 0, 0)
         local OldColor = Color3.fromRGB(0, 0, 0)
         local OldColorSelectionPosition = nil
         local OldHueSelectionPosition = nil
         local ColorH, ColorS, ColorV = 1, 1, 1
         local RainbowColorPicker = false
         local ColorPickerInput = nil
         local ColorInput = nil
         local HueInput = nil
  
         local Colorpicker = Instance.new("TextButton")
         local Title = Instance.new("TextLabel")
         local BoxColor = Instance.new("Frame")
         local BoxcolorCorner = Instance.new("UICorner")
         local ColorpickerCorner = Instance.new("UICorner")
  
         Colorpicker.Name = "Colorpicker"
         Colorpicker.Parent = Container
         Colorpicker.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Colorpicker.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
         Colorpicker.Size = UDim2.new(0, 405, 0, 40)
         Colorpicker.AutoButtonColor = false
         Colorpicker.Font = Enum.Font.Gotham
         Colorpicker.Text = ""
         Colorpicker.TextColor3 = Color3.fromRGB(255, 255, 255)
         Colorpicker.TextSize = 14.000
  
         Title.Name = "Title"
         Title.Parent = Colorpicker
         Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Title.BackgroundTransparency = 1.000
         Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
         Title.Size = UDim2.new(0, 405, 0, 40)
         Title.Font = Enum.Font.Gotham
         Title.Text = text
         Title.TextColor3 = Color3.fromRGB(255, 255, 255)
         Title.TextSize = 15.000
         Title.TextXAlignment = Enum.TextXAlignment.Left
  
         BoxColor.Name = "Boxcolor"
         BoxColor.Parent = Colorpicker
         BoxColor.BackgroundColor3 = preset
         BoxColor.Position = UDim2.new(0.88, 0, 0.3, 0)
         BoxColor.Size = UDim2.new(0, 36, 0, 19)
  
         BoxcolorCorner.CornerRadius = UDim.new(0, 6)
         BoxcolorCorner.Name = "BoxcolorCorner"
         BoxcolorCorner.Parent = BoxColor
  
         ColorpickerCorner.CornerRadius = UDim.new(0, 4)
         ColorpickerCorner.Name = "ColorpickerCorner"
         ColorpickerCorner.Parent = Colorpicker
  
         local ColorpickerFrame = Instance.new("Frame")
         local DropdownFrameCorner = Instance.new("UICorner")
         local Hue = Instance.new("ImageLabel")
         local HueCorner = Instance.new("UICorner")
         local HueGradient = Instance.new("UIGradient")
         local HueSelection = Instance.new("ImageLabel")
         local Color = Instance.new("ImageLabel")
         local ColorCorner = Instance.new("UICorner")
         local ColorSelection = Instance.new("ImageLabel")
         local Confirm = Instance.new("TextButton")
         local ButtonCorner = Instance.new("UICorner")
         local RainbowToggle = Instance.new("TextButton")
         local RainbowToggleCorner = Instance.new("UICorner")
         local RainbowTitle = Instance.new("TextLabel")
         local RainbowToggleFrame = Instance.new("Frame")
         local RainbowToggleFrameCorner = Instance.new("UICorner")
         local RainbowToggleFrameRainbow = Instance.new("Frame")
         local RainbowToggleFrameRainbowCorner = Instance.new("UICorner")
         local RainbowToggleDot = Instance.new("Frame")
         local RainbowToggleDotCorner = Instance.new("UICorner")
  
         ColorpickerFrame.Name = "ColorpickerFrame"
         ColorpickerFrame.Parent = Container
         ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
         ColorpickerFrame.BorderSizePixel = 0
         ColorpickerFrame.Position = UDim2.new(0.165624991, 0, 0.671052635, 0)
         ColorpickerFrame.Size = UDim2.new(0, 403, 0, 0)
         ColorpickerFrame.Visible = false
         ColorpickerFrame.ClipsDescendants = true
  
         DropdownFrameCorner.Name = "DropdownFrameCorner"
         DropdownFrameCorner.Parent = ColorpickerFrame
  
         Hue.Name = "Hue"
         Hue.Parent = ColorpickerFrame
         Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Hue.Position = UDim2.new(0, 209, 0, 9)
         Hue.Size = UDim2.new(0, 25, 0, 80)
  
         HueCorner.CornerRadius = UDim.new(0, 3)
         HueCorner.Name = "HueCorner"
         HueCorner.Parent = Hue
  
         HueGradient.Color =
            ColorSequence.new {
               ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
               ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
               ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
               ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
               ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
               ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
               ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
            }
         HueGradient.Rotation = 270
         HueGradient.Name = "HueGradient"
         HueGradient.Parent = Hue
  
         HueSelection.Name = "HueSelection"
         HueSelection.Parent = Hue
         HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
         HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         HueSelection.BackgroundTransparency = 1.000
         HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
         HueSelection.Size = UDim2.new(0, 18, 0, 18)
         HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
  
         Color.Name = "Color"
         Color.Parent = ColorpickerFrame
         Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
         Color.Position = UDim2.new(0, 9, 0, 9)
         Color.Size = UDim2.new(0, 194, 0, 80)
         Color.ZIndex = 10
         Color.Image = "rbxassetid://4155801252"
  
         ColorCorner.CornerRadius = UDim.new(0, 3)
         ColorCorner.Name = "ColorCorner"
         ColorCorner.Parent = Color
  
         ColorSelection.Name = "ColorSelection"
         ColorSelection.Parent = Color
         ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
         ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ColorSelection.BackgroundTransparency = 1.000
         ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
         ColorSelection.Size = UDim2.new(0, 18, 0, 18)
         ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
         ColorSelection.ScaleType = Enum.ScaleType.Fit
  
         Confirm.Name = "Confirm"
         Confirm.Parent = ColorpickerFrame
         Confirm.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
         Confirm.BackgroundTransparency = 0.010
         Confirm.Position = UDim2.new(0.612244904, 0, 0.0900000036, 0)
         Confirm.Size = UDim2.new(0, 145, 0, 27)
         Confirm.AutoButtonColor = false
         Confirm.Font = Enum.Font.Gotham
         Confirm.Text = "Confirm"
         Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
         Confirm.TextSize = 14.000
  
         ButtonCorner.Name = "ButtonCorner"
         ButtonCorner.Parent = Confirm
  
         RainbowToggle.Name = "RainbowToggle"
         RainbowToggle.Parent = ColorpickerFrame
         RainbowToggle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
         RainbowToggle.Position = UDim2.new(0.610732794, 0, 0.431324542, 0)
         RainbowToggle.Size = UDim2.new(0, 145, 0, 27)
         RainbowToggle.AutoButtonColor = false
         RainbowToggle.Font = Enum.Font.Gotham
         RainbowToggle.Text = ""
         RainbowToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
         RainbowToggle.TextSize = 14.000
  
         RainbowToggleCorner.Name = "RainbowToggleCorner"
         RainbowToggleCorner.Parent = RainbowToggle
  
         RainbowTitle.Name = "RainbowTitle"
         RainbowTitle.Parent = RainbowToggle
         RainbowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         RainbowTitle.BackgroundTransparency = 1.000
         RainbowTitle.Position = UDim2.new(0.0204080511, 0, 0, 0)
         RainbowTitle.Size = UDim2.new(0, 29, 0, 27)
         RainbowTitle.Font = Enum.Font.Gotham
         RainbowTitle.Text = "Rainbow"
         RainbowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
         RainbowTitle.TextSize = 14.000
         RainbowTitle.TextXAlignment = Enum.TextXAlignment.Left
  
         RainbowToggleFrame.Name = "RainbowToggleFrame"
         RainbowToggleFrame.Parent = RainbowToggle
         RainbowToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
         RainbowToggleFrame.Position = UDim2.new(0.693, 0, 0.142857149, 0)
         RainbowToggleFrame.Size = UDim2.new(0, 36, 0, 19)
  
         RainbowToggleFrameCorner.CornerRadius = UDim.new(1, 0)
         RainbowToggleFrameCorner.Name = "RainbowToggleFrameCorner"
         RainbowToggleFrameCorner.Parent = RainbowToggleFrame
  
         RainbowToggleFrameRainbow.Name = "RainbowToggleFrameRainbow"
         RainbowToggleFrameRainbow.Parent = RainbowToggleFrame
         RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(67,136,246)
         RainbowToggleFrameRainbow.BackgroundTransparency = 1.000
         RainbowToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
         RainbowToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)
  
         RainbowToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
         RainbowToggleFrameRainbowCorner.Name = "RainbowToggleFrameRainbowCorner"
         RainbowToggleFrameRainbowCorner.Parent = RainbowToggleFrameRainbow
  
         RainbowToggleDot.Name = "RainbowToggleDot"
         RainbowToggleDot.Parent = RainbowToggleFrameRainbow
         RainbowToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         RainbowToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
         RainbowToggleDot.Size = UDim2.new(0, 16, 0, 16)
  
         RainbowToggleDotCorner.CornerRadius = UDim.new(1, 0)
         RainbowToggleDotCorner.Name = "RainbowToggleDotCorner"
         RainbowToggleDotCorner.Parent = RainbowToggleDot
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
  
         Colorpicker.MouseEnter:Connect(
            function()
               TweenService:Create(
                  Colorpicker,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
               ):Play()
            end
         )
         Colorpicker.MouseLeave:Connect(
            function()
               TweenService:Create(
                  Colorpicker,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad),
                  {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}
               ):Play()
            end
         )
  
         local function UpdateColorPicker(nope)
            BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
            Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
  
            pcall(callback, BoxColor.BackgroundColor3)
         end
  
         ColorH =
            1 -
            (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
               Hue.AbsoluteSize.Y)
         ColorS =
            (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
               Color.AbsoluteSize.X)
         ColorV =
            1 -
            (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
               Color.AbsoluteSize.Y)
  
         BoxColor.BackgroundColor3 = preset
         Color.BackgroundColor3 = preset
         pcall(callback, BoxColor.BackgroundColor3)
  
         Color.InputBegan:Connect(
            function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  if RainbowColorPicker then
                     return
                  end
  
                  if ColorInput then
                     ColorInput:Disconnect()
                  end
  
                  ColorInput =
                     RunService.RenderStepped:Connect(
                        function()
                        local ColorX =
                           (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                              Color.AbsoluteSize.X)
                        local ColorY =
                           (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                              Color.AbsoluteSize.Y)
  
                        ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                        ColorS = ColorX
                        ColorV = 1 - ColorY
  
                        UpdateColorPicker(true)
                     end
                     )
               end
            end
         )
  
         Color.InputEnded:Connect(
            function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  if ColorInput then
                     ColorInput:Disconnect()
                  end
               end
            end
         )
  
         Hue.InputBegan:Connect(
            function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  if RainbowColorPicker then
                     return
                  end
  
                  if HueInput then
                     HueInput:Disconnect()
                  end
  
                  HueInput =
                     RunService.RenderStepped:Connect(
                        function()
                        local HueY =
                           (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                              Hue.AbsoluteSize.Y)
  
                        HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
                        ColorH = 1 - HueY
  
                        UpdateColorPicker(true)
                     end
                     )
               end
            end
         )
  
         Hue.InputEnded:Connect(
            function(input)
               if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  if HueInput then
                     HueInput:Disconnect()
                  end
               end
            end
         )
  
         RainbowToggle.MouseButton1Down:Connect(
            function()
               RainbowColorPicker = not RainbowColorPicker
  
               if ColorInput then
                  ColorInput:Disconnect()
               end
  
               if HueInput then
                  HueInput:Disconnect()
               end
  
               if RainbowColorPicker then
                  TweenService:Create(
                     RainbowToggleFrameRainbow,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundTransparency = 0}
                  ):Play()
                  TweenService:Create(
                     RainbowToggleDot,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {Position = UDim2.new(0.595, -3, 0.289000005, -4)}
                  ):Play()
  
                  OldToggleColor = BoxColor.BackgroundColor3
                  OldColor = Color.BackgroundColor3
                  OldColorSelectionPosition = ColorSelection.Position
                  OldHueSelectionPosition = HueSelection.Position
  
                  while RainbowColorPicker do
                     BoxColor.BackgroundColor3 = Color3.fromHSV(VLib.RainbowColorValue, 1, 1)
                     Color.BackgroundColor3 = Color3.fromHSV(VLib.RainbowColorValue, 1, 1)
  
                     ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                     HueSelection.Position = UDim2.new(0.48, 0, 0, VLib.HueSelectionPosition)
  
                     pcall(callback, BoxColor.BackgroundColor3)
                     wait()
                  end
               elseif not RainbowColorPicker then
                  TweenService:Create(
                     RainbowToggleFrameRainbow,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {BackgroundTransparency = 1}
                  ):Play()
                  TweenService:Create(
                     RainbowToggleDot,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad),
                     {Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
                  ):Play()
  
                  BoxColor.BackgroundColor3 = OldToggleColor
                  Color.BackgroundColor3 = OldColor
  
                  ColorSelection.Position = OldColorSelectionPosition
                  HueSelection.Position = OldHueSelectionPosition
  
                  pcall(callback, BoxColor.BackgroundColor3)
               end
            end
         )
  
         Colorpicker.MouseButton1Click:Connect(
            function()
               if ColorPickerToggled == false then
                  ColorPickerToggled = not ColorPickerToggled
                  ColorpickerFrame.Visible = true
                  ColorpickerFrame:TweenSize(
                     UDim2.new(0, 403, 0, 100),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  repeat
                     wait()
                  until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 100)
                  Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               else
                  ColorPickerToggled = not ColorPickerToggled
                  ColorpickerFrame:TweenSize(
                     UDim2.new(0, 403, 0, 0),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     0.1,
                     true
                  )
                  repeat
                     wait()
                  until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 0)
                  ColorpickerFrame.Visible = false
                  Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
               end
            end
         )
  
         Confirm.MouseButton1Click:Connect(
            function()
               ColorPickerToggled = not ColorPickerToggled
               ColorpickerFrame:TweenSize(
                  UDim2.new(0, 403, 0, 0),
                  Enum.EasingDirection.Out,
                  Enum.EasingStyle.Quart,
                  0.1,
                  true
               )
               repeat
                  wait()
               until ColorpickerFrame.Size == UDim2.new(0, 403, 0, 0)
               ColorpickerFrame.Visible = false
               Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
            end)
  
         coroutine.wrap(
            function()
               while wait() do
  
               end
            end
         )()
      end
      function ContainerItems:Label(text)
         local labelfunc = {}
         local Label = Instance.new("TextButton")
         local LabelCorner = Instance.new("UICorner")
  
         Label.Name = "Label"
         Label.Parent = Container
         Label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Label.Size = UDim2.new(0, 405, 0, 40)
         Label.AutoButtonColor = false
         Label.Font = Enum.Font.Gotham
         Label.TextColor3 = Color3.fromRGB(255, 255, 255)
         Label.TextSize = 17.000
         Label.Text = text
  
         LabelCorner.CornerRadius = UDim.new(0, 5)
         LabelCorner.Name = "LabelCorner"
         LabelCorner.Parent = Label
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
  
         function labelfunc:Refresh(tochange)
            Label.Text = tochange
         end
  
         return labelfunc
      end
  
      function ContainerItems:line()
         local labelfunc = {}
         local Label = Instance.new("TextButton")
         local LabelCorner = Instance.new("UICorner")
  
         Label.Name = "Label"
         Label.Parent = Container
         Label.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Label.Size = UDim2.new(0, 405, 0, 5)
         Label.AutoButtonColor = false
         Label.Font = Enum.Font.Gotham
         Label.TextColor3 = Color3.fromRGB(255, 255, 255)
         Label.TextSize = 17.000
         Label.Text = ""
  
         LabelCorner.CornerRadius = UDim.new(0, 5)
         LabelCorner.Name = "LabelCorner"
         LabelCorner.Parent = Label
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
  
         function labelfunc:Refresh(tochange)
            Label.Text = tochange
         end
  
         return labelfunc
      end
  
      function ContainerItems:Bind(Title, keybind_options, callback)
         local keybind_data = {}
  
         local Keybind = Instance.new("TextButton")
         local Title = Instance.new("TextLabel")
         local KeybindFrame = Instance.new("Frame")
         local KeybindFrameCorner = Instance.new("UICorner")
         local TextButton = Instance.new("TextButton")
         local KeybindCorner = Instance.new("UICorner")
         local ContainerLayout = Instance.new("UIListLayout")
  
  
         Keybind.Name = "Keybind"
         Keybind.Parent = Container
         Keybind.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Keybind.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
         Keybind.Size = UDim2.new(0, 405, 0, 40)
         Keybind.AutoButtonColor = false
         Keybind.Font = Enum.Font.Gotham
         Keybind.Text = ""
         Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
         Keybind.TextSize = 14.000
  
         Title.Name = "Title"
         Title.Parent = Keybind
         Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Title.BackgroundTransparency = 1.000
         Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
         Title.Size = UDim2.new(0, 405, 0, 40)
         Title.Font = Enum.Font.Gotham
         Title.Text = "Keybind"
         Title.TextColor3 = Color3.fromRGB(255, 255, 255)
         Title.TextSize = 15.000
         Title.TextXAlignment = Enum.TextXAlignment.Left
  
         KeybindFrame.Name = "KeybindFrame"
         KeybindFrame.Parent = Keybind
         KeybindFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
         KeybindFrame.Position = UDim2.new(0.650124013, 0, 0.159999996, 0)
         KeybindFrame.Size = UDim2.new(0, 134, 0, 24)
  
         KeybindFrameCorner.CornerRadius = UDim.new(0, 6)
         KeybindFrameCorner.Name = "KeybindFrameCorner"
         KeybindFrameCorner.Parent = KeybindFrame
  
         TextButton.Parent = KeybindFrame
         TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         TextButton.BackgroundTransparency = 1.000
         TextButton.Size = UDim2.new(0, 134, 0, 23)
         TextButton.Font = Enum.Font.Gotham
         TextButton.Text = "Keybind"
         TextButton.TextColor3 = Color3.fromRGB(178, 178, 178)
         TextButton.TextSize = 15.000
  
         KeybindCorner.CornerRadius = UDim.new(0, 6)
         KeybindCorner.Name = "KeybindCorner"
         KeybindCorner.Parent = Keybind
  
         ContainerLayout.Name = "ContainerLayout"
         ContainerLayout.Parent = Container
         ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
         ContainerLayout.Padding = UDim.new(0, 15)
  
         local UIS = game:GetService('UserInputService')
  
  
         keybind_name = tostring(keybind_name or "New Keybind")
         callback = typeof(callback) == "function" and callback or function()end
         keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
         keybind_options = {
            ["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
         }
  
  
  
         callback = typeof(callback) == "function" and callback or function()end
         keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
         keybind_options = {
            ["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
         }
  
         local shortkeys = { -- thanks to stroketon for helping me out with this
            RightControl = 'RightCtrl',
            LeftControl = 'LeftCtrl',
            LeftShift = 'LShift',
            RightShift = 'RShift',
            MouseButton1 = "Mouse1",
            MouseButton2 = "Mouse2"
         }
         local checks = {
            binding = false,
  
         }
         function keybind_data:SetKeybind(Keybind)
            local key = shortkeys[Keybind.Name] or Keybind.Name
            TextButton.Text = key
            keybind = Keybind
         end
  
         UIS.InputBegan:Connect(function(a, b)
            if checks.binding then
               spawn(function()
                  wait()
                  checks.binding = false
               end)
               return
            end
            if a.KeyCode == keybind and not b then
               pcall(callback, keybind)
            end
         end)
  
         keybind_data:SetKeybind(keybind_options.standard)
  
         TextButton.MouseButton1Click:Connect(function()
            if checks.binding then return end
            TextButton.Text = "..."
            checks.binding = true
            local a, b = UIS.InputBegan:Wait()
            keybind_data:SetKeybind(a.KeyCode)
         end)
         return keybind_data
      end
  
  
      function ContainerItems:Textbox(text, disapper, callback)
         local Textbox = Instance.new("TextButton")
         local Title = Instance.new("TextLabel")
         local TextboxFrame = Instance.new("Frame")
         local TextboxFrameCorner = Instance.new("UICorner")
         local TextBox = Instance.new("TextBox")
         local TextboxCorner = Instance.new("UICorner")
  
         Textbox.Name = "Textbox"
         Textbox.Parent = Container
         Textbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
         Textbox.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
         Textbox.Size = UDim2.new(0, 405, 0, 40)
         Textbox.AutoButtonColor = false
         Textbox.Font = Enum.Font.Gotham
         Textbox.Text = ""
         Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
         Textbox.TextSize = 14.000
  
         Title.Name = "Title"
         Title.Parent = Textbox
         Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         Title.BackgroundTransparency = 1.000
         Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
         Title.Size = UDim2.new(0, 405, 0, 40)
         Title.Font = Enum.Font.Gotham
         Title.Text = text
         Title.TextColor3 = Color3.fromRGB(255, 255, 255)
         Title.TextSize = 15.000
         Title.TextXAlignment = Enum.TextXAlignment.Left
  
         TextboxFrame.Name = "TextboxFrame"
         TextboxFrame.Parent = Textbox
         TextboxFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
         TextboxFrame.Position = UDim2.new(0.650124013, 0, 0.16, 0)
         TextboxFrame.Size = UDim2.new(0, 134, 0, 24)
  
         TextboxFrameCorner.CornerRadius = UDim.new(0, 6)
         TextboxFrameCorner.Name = "TextboxFrameCorner"
         TextboxFrameCorner.Parent = TextboxFrame
  
         TextBox.Parent = TextboxFrame
         TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         TextBox.BackgroundTransparency = 1.000
         TextBox.Size = UDim2.new(0, 134, 0, 19)
         TextBox.Font = Enum.Font.Gotham
         TextBox.Text = ""
         TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
         TextBox.TextSize = 15.000
  
         TextboxCorner.CornerRadius = UDim.new(0, 6)
         TextboxCorner.Name = "TextboxCorner"
         TextboxCorner.Parent = Textbox
  
         TextBox.FocusLost:Connect(
            function(ep)
               if ep then
                  if #TextBox.Text > 0 then
                     pcall(callback, TextBox.Text)
                     if disapper then
                        TextBox.Text = ""
                     end
                  end
               end
            end
         )
  
         Container.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
      end
      return ContainerItems
   end
   return Tabs
  end

-- Script Beta 0.8
local Win = VLib:Window("ATTACK x HUB Dahood V2", "v2")
local Main = Win:Tab("Stuff")
--  ¿

           local da_hood_V2= Win:Tab('da hood V2')
           

da_hood_V2:Button("anti cheat/anti ban",function()
 game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
    Instance.new("Folder",game:GetService("Players").LocalPlayer.Character).Name = ("FULLY_LOADED_CHAR")
    game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):WaitForChild("Dead"):Remove()
    Instance.new("BoolValue",game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects")).Name = ("Dead")
    repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("BodyEffects"):findFirstChild("Dead")
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyWidthScale").Value = 0.5
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("HeadScale").Value = 1
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyHeightScale").Value = 1
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyDepthScale").Value = 0.5
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):WaitForChild("BodyTypeScale").Value = 0.01
end)
end)

da_hood_V2:Button("ATTACK x Fly Unban first",function()
game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Credits";
                Text = "Modified By Eren Yeaker";
                Duration = 2.5;
            })
-- Gui to Lua
-- Version: 3.2

-- Instances:

local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")

--Properties:

main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "gui by me_ozoneYT"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.LowerTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	





end)


up.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	
end)


down.MouseButton1Down:connect(function()

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)

end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then
		

	tpwalking = false
	for i = 1, speeds do
		spawn(function()

			local hb = game:GetService("RunService").Heartbeat	


			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end

		end)
		end
		end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'can not be less than 1'
		wait(1)
		speed.Text = speeds
	else
	speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
	tpwalking = false
	for i = 1, speeds do
		spawn(function()

			local hb = game:GetService("RunService").Heartbeat	


			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end

		end)
		end
		end
		end
end)
end)

da_hood_V2:Button("Aimlock Click on head/face",function()
--// Clone Detection
for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "ScreenGui" then
        v:Destroy()
    end
end

repeat
    wait()
until game:GetService("Players").LocalPlayer ~= nil

if not game:GetService("Players").LocalPlayer.Character then
    game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
end



--/ Variables & Da Hood Gui Clones Deletion

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")

local LockedPlayer = nil
local Aimlock = nil

for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "dhgui" then
        v:Destroy()
    end
end

local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt, false)

if getrawmetatable then
    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    setreadonly(mt, false)
    
    mt.__namecall = newcclosure(function(table, ...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" and args[1] and args[1] == "UpdateMousePos" then
            if not (args[3] and args[3] == "Aimlock") then
                return nil
            end
        end
        return namecall(table, ...)
    end) 
end

local function FindPlrOnMouse()
    for i, v in pairs(game.Workspace:FindPartsInRegion3(Region3.new(LocalPlayer:GetMouse().Hit.Position, LocalPlayer:GetMouse().Hit.Position))) do
        local plr = game.Players:GetPlayerFromCharacter(v.Parent)
        if plr ~= nil and plr ~= LocalPlayer then
            return plr
        end
    end
    return nil
end

-- // Gui
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")


--// Gui Making

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.30297032, 0, 0.475625843, 0)
Frame.Size = UDim2.new(0, 397, 0, 211)
Frame.Active = true
Frame.Draggable = true



TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0554156154, 0, 0.60189575, 0)
TextButton.Size = UDim2.new(0, 136, 0, 50)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Aimlock Tool"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000


TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.570553482, 0, 0.60189575, 0)
TextButton_2.Size = UDim2.new(0, 136, 0, 50)
TextButton_2.Font = Enum.Font.Cartoon
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000



TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.246851385, 0, 0.218009472, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.Cartoon
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000


TextButton.MouseButton1Click:connect(function()
    Aimlock = nil
    
    for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Aimlock Tool" then
            v:Destroy() 
        end
    end
    for i, v in pairs(LocalPlayer.Character:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Aimlock Tool" then
            v:Destroy() 
        elseif v.ClassName == "Tool" then
            v.Parent = LocalPlayer.Backpack
        end
    end
    
    local AimlockTool = Instance.new("Tool")
    AimlockTool.Name = "Aimlock Tool"
    AimlockTool.Parent = LocalPlayer.Backpack
    AimlockTool.RequiresHandle = false
    AimlockTool.TextureId = "rbxasset://1532350639"
    
    AimlockTool.Activated:Connect(function()
        local Plr = FindPlrOnMouse()
        
        if Plr ~= nil and Plr.Character and Plr.Character:FindFirstChild("Head") and Plr.Character:FindFirstChild("UpperTorso") then
            Aimlock = Plr 
            
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "AIMLOCK | Corpse";
                Text = "Aimlocking towards: " .. Plr.Name .. ", use any gun and shoot anywhere";
                Button1 = "Ok";
                Duration = 2.5;
            })
        else
            Aimlock = nil
            
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "AIMLOCK | Corpse";
                Text = "No player clicked on, aimlocking towards mouse as normal";
                Button1 = "Ok";
                Duration = 2.5;
            })
        end
    end)
end)

if getrawmetatable then
    game:GetService("RunService").Heartbeat:Connect(function()
        if Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChild("Head") then
            game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character.Head.Position, "Aimlock")
        elseif Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChildOfClass("Part") then
            game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character:FindFirstChildOfClass("Part").Position, "Aimlock")
        elseif Aimlock == nil then
            game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", game:GetService("Players").LocalPlayer:GetMouse().Hit.Position, "Aimlock")
        end
    end)
else
    for i = 1, 10 do
        game:GetService("RunService").Heartbeat:Connect(function()
            if Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChild("Head") then
                game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character.Head.Position)
            elseif Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChildOfClass("Part") then
                game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character:FindFirstChildOfClass("Part").Position)
            end
        end)
        game:GetService("RunService").RenderStepped:Connect(function()
            if Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChild("Head") then
                game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character.Head.Position)
            elseif Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChildOfClass("Part") then
                game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character:FindFirstChildOfClass("Part").Position)
            end
        end)
        game:GetService("RunService").Stepped:Connect(function()
            if Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChild("Head") then
                game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character.Head.Position)
            elseif Aimlock ~= nil and Aimlock.Character and Aimlock.Character:FindFirstChildOfClass("Part") then
                game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", Aimlock.Character:FindFirstChildOfClass("Part").Position)
            end
        end)
    end
end
end)

da_hood_V2:Button("Arceus x da hood autofarm ",function()
--[[
Da Hood auto rob script by Amnesia
I know script became a bit monkey code but i am lazy to make it look better
I didn't obfuscate it because why not
]]
repeat
    wait()
until game:IsLoaded()
local gm = getrawmetatable(game)
setreadonly(gm, false)
local namecall = gm.__namecall
gm.__namecall =
    newcclosure(
    function(self, ...)
        local args = {...}
        if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
            if tostring(getcallingscript()) ~= "Framework" then
                return
            end
        end
        if not checkcaller() and getnamecallmethod() == "Kick" then
            return
        end
        return namecall(self, unpack(args))
    end
)

local LocalPlayer = game:GetService("Players").LocalPlayer

function gettarget()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local maxdistance = math.huge
    local target
    for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
        if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            local distance = (HumanoidRootPart.Position - v.Head.Position).magnitude
            if distance < maxdistance then
                target = v
                maxdistance = distance
            end
        end
    end
    return target
end

for i, v in pairs(workspace:GetDescendants()) do
    if v:IsA("Seat") then
        v:Destroy()
    end
end

print("Amnesia's Da Hood Farm")

shared.MoneyFarm = true -- Just execute shared.MoneyFarm = false to stop farming

while shared.MoneyFarm do
    wait()
    local Target = gettarget()
    repeat
        wait()
        pcall(
            function()
                local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or Character:FindFirstChild("Combat")
                if not Combat then
                    Character:FindFirstChild("Humanoid").Health = 0
                    return
                end
                HumanoidRootPart.CFrame = Target.Head.CFrame * CFrame.new(0, -2.5, 3)
                Combat.Parent = Character
                Combat:Activate()
            end
        )
    until not Target or Target.Humanoid.Health < 0
    for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
        if v:IsA("ClickDetector") and v.Parent and v.Parent.Name:find("Money") then
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            if (v.Parent.Position - HumanoidRootPart.Position).magnitude <= 18 then
                repeat
                    wait()
                    fireclickdetector(v)
                until not v or not v.Parent.Parent
            end
        end
    end
    wait(1)
end
end)

da_hood_V2:Button("Zellhub op",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackerProLuaStuff/zellhubnew/main/SCRIPTPRO.lua"))()
end)

da_hood_V2:Button("God mode ATTACK x DAHOOD",function()
loadstring(game:HttpGet("https://pastebin.com/raw/xgGeNhaX"))()
end)

da_hood_V2:Button("TwinGklocs ATTACK/ULTRA X",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aofpooere/HOP2/main/scripthop2"))()
end)
            local Credits = Win:Tab('Credits')
            
Credits:Label("Thanks to https://discord.gg/TzFcCjk5ZF for hub")

Credits:Label("Thanks to Eren Yeaker#9999 |ATTACK x HUB 1.0.0|")

Credits:Label("Unknown hub is trash Lol")

            local December_2 = Win:Tab('December 2')
            
December_2:Label("On December 2 I will update this")

            local READ_THIS_ = Win:Tab('READ THIS ')
            
READ_THIS_:Label("execute unban anticheat first")

READ_THIS_:Label("On December w I will update this")

            local Thanks_for_using = Win:Tab('Thanks for using')
            
Thanks_for_using:Label("Thanks denim for showcasing:)")
