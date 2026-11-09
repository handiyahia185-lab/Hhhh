

return function(...)
    local V = {}
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    local CoreGui = game:GetService("CoreGui")
    local a5 = {
        Name = "RYOIKI",
        Game = "JJS",
        Version = "v2.0",
        ToggleKey = Enum.KeyCode.RightShift,
        DiscordLink = "https://discord.gg/VaxSCw9cR5",
        ExportUrl = "https://ryoiki-export.traiusedkey11112.workers.dev/export",
       
    }
    local a20 = {}
    local a31 = {
        [1] = {
            Version = "v2.0",
            Date = "Nov 7, 2026",
            Notes = {
                [1] = "Brand new look: \233\160\152\229\159\159 RYOIKI title, tab icons, and tabs sorted into MAIN, GAME and SYSTEM",
                [2] = "Search any feature from the top bar, it jumps straight to the right tab",
                [3] = "Everything feels alive: the window pops open, buttons punch, toggles snap and errors shake the window",
                [4] = "Skill Builder is way easier: one + ADD BLOCK button with plain names, and clear names for how a move starts (GAME MOVE, KEY PRESS, GAME ANIM, REPLACE)",
                [5] = "Skill Builder: a red LINK button shows when a move isn't linked to its game move yet",
                [6] = "New blocks: SCREEN SHAKE and GET ITEM, plus IF checks for Has item and Item in hand, with a list of every item",
                [7] = "Smoothness for TP, VEL, CURVE, DASH, TURN and FACE, Character Aim steering, and a ghost preview that shows where a step takes you",
                [8] = "Move OPTS: hide or disable the game's own move, and hide its hotbar slot",
                [9] = "Roulette: a tab for every mode (SWP, SRC, FTT, FSD, EOJ, PFT, AMS, PSR, SSP) and Auto Farm",
                [10] = "Soul Swap: Kit Presets and Auto Moveset, it rerolls until your kit shows up and picks it for you",
                [11] = "FUN: Skinwalker, when you die your body gets back up and you walk it around, or let it wander with Auto Walk",
                [12] = "Skinwalker steps up onto small bumps, curbs and stairs instead of getting stuck on them",
                [13] = "Skinwalker menu: all Skinwalker settings in one window (Fun tab > Skinwalker > Open)",
                [14] = "Skinwalker Wall Crawl: climbs step by step, one hand reaches up, the body pulls up, then the other hand. Only real walls count, not players, hitboxes or poles",
                [15] = "Skinwalker: the head is locked to the body now, it no longer breaks or flops",
                [16] = "FUN: Wrecking Ball, while ragdolled (or as a Skinwalker) hold M1 to ram what your cursor is on, let go and it flies back. The camera stays at your spot",
                [17] = "Auto Skinwalker: flying back stops and drops you if it takes longer than 1.5s (Max fly time in the menu)",
                [18] = "FUN: DESTROY MAP button, resets you and slams your body into every wall near you at 450 speed for 40s (seconds box next to it), then flies back. Asks Run / Cancel first (it can lag a lot) and hits the most crowded spots first",
                [19] = "Config: everything you set (cards, Skinwalker and Wrecking Ball menus) is saved and comes back when you rejoin",
                [20] = "Auto Skinwalker: after you respawn it resets you right away and flies your body back at the same time (goes around walls), so you stay a Skinwalker",
                [21] = "Fix: Wrecking Ball and DESTROY MAP no longer falsely say the server controls your body",
                [22] = "Fix: Reset no longer randomly fails with a fake 'cooldown?' message (keeps the game's reset hook, waits longer)",
                [23] = "DESTROY MAP upgrade: 450 speed (hits more parts), plows through walls in a straight line instead of flying through air, skips walls that won't break, and flies back the moment there's no floor (no more falling in the void), and keeps going after the game respawns you",
                [24] = "Wrecking Ball menu: Shake slider, the body flails around while flying so it touches more (Wrecking Ball and DESTROY MAP), and still goes where it's aimed",
                [25] = "Settings: Executor Check, shows what your executor supports and tests the important stuff (body check, files, reset hook)",
                [26] = "Settings: Debug Log, keeps the last 80 warnings and errors. Copy it and send it in the discord when something breaks"
            }
        },
        [2] = {
            Version = "v1.55",
            Date = "Nov 4, 2026",
            Notes = {
                [1] = "New ROULETTE tab: fast Sky Platform (2000+ studs) that freezes you at the top so you can't be teleported",
                [2] = "Fix: KEY + USED moves only worked in the air. They now learn the game move's ground / air version by themselves, like M1s do",
                [3] = "Fix: moves without REPLACE work on the ground again (hotbar names and slots are drawn on top now, the game's hotbar is not changed)",
                [4] = "Skill Builder: OPTS > Cancel it with, stop a move with any other move or a key you pick (like 1)",
                [5] = "Fix: KEY + USED and KEY ONLY moves work when the game marks the key as used (that blocked them on the ground)",
                [6] = "Debug now says what happened after the key: which game anims played and why nothing fired",
                [7] = "AC Bypass: spams R while it runs, and catches late rubberbands too (watches 1.5s instead of 0.6s)",
                [8] = "AC Bypass: when you get rubberbanded it resets and drops you through the map into the void (joints break once you're deep down), so you respawn way faster"
            }
        },
        [3] = {
            Version = "v1.5",
            Date = "Nov 3, 2026",
            Notes = {
                [1] = "Skill Builder: KEY block has Game move mode, uses the game's move on 1, 2, 3, 4 or G",
                [2] = "Skill Builder: KEY block can press number keys (1, 2...) now",
                [3] = "Skill Builder: OPTS > Show on game hotbar, rename game moves (1-4, G) or add new hotbar slots for your moves",
                [4] = "Show on game hotbar is ON by default",
                [5] = "New hotbar slots (like 5) show even if the move has no steps yet",
                [6] = "M1, M2 and dash moves don't get a hotbar slot",
                [7] = "Click or tap a new hotbar slot to use the move, it darkens while on cooldown",
                [8] = "Fix: Show on game hotbar now works on phone (finds the hotbar even without key numbers)",
                [9] = "Fix: KEY block works at the start of a move, even while you still hold the move's key"
            }
        },
        [4] = {
            Version = "v1.4",
            Date = "Oct 24, 2026",
            Notes = {
                [1] = "Skill Builder: big EXPORT button (top right) turns your moveset into one full script, with a short guide",
                [2] = "Phone support: the hub fits your screen and stays under the Roblox top bar",
                [3] = "Phone: long-press anything to see what it does",
                [4] = "Phone: long-press a step or move for its menu, hold and drag to move it",
                [5] = "Phone: KEY button gives a list of keys to pick",
                [6] = "Phone: KEY + USED moves fire from the game move's animation",
                [7] = "On-screen buttons for KEY ONLY and REPLACE moves (OPTS > On-screen button)",
                [8] = "Link to the next game move (move menu)",
                [9] = "Picker: MULTI button to pick several animations without Ctrl",
                [10] = "Step menu: move up / down, select several, select all",
                [11] = "Phone Layout setting (Auto / On / Off)",
                [12] = "Sliders and drags don't jump when you use two fingers"
            }
        },
        [5] = {
            Version = "v1.3",
            Date = "Oct 24, 2026",
            Notes = {
                [1] = "Skill Builder: VEL has Straight and Curve mode now (jumps, slams)",
                [2] = "Skill Builder: VEL can go to or away from the target, speed up or slow down",
                [3] = "Skill Builder: TP and FACE can predict where the target is going",
                [4] = "Skill Builder: TP behind target and TP to cursor",
                [5] = "Skill Builder: new DASH block",
                [6] = "Skill Builder: +DASH button, works like +M1s",
                [7] = "Skill Builder: moves can fully replace the game move (trigger menu)",
                [8] = "Skill Builder: ? button with a guide, ready made moves in +MOVE",
                [9] = "Skill Builder: less used settings are under MORE SETTINGS now",
                [10] = "AC Bypass is way faster",
                [11] = "Item Menu finds items faster",
                [12] = "Bring All actually drops items now",
                [13] = "New Halloween tab",
                [14] = "Auto Door opens every door on the map and keeps looking for new ones",
                [15] = "Hide Underground so no one sees you opening doors",
                [16] = "Sky Platform, floats you up and puts a platform under you",
                [17] = "New tab layout",
                [18] = "Less lag",
                [19] = "Bunch of bug fixes"
            }
        },
        [6] = {
            Version = "v1.25",
            Date = "Oct 20, 2026",
            Notes = {
                [1] = "Skill Builder: new TURN block, spin or rotate any way, with stay time.",
                [2] = "Skill Builder: FACE has 360 modes (target, cursor, camera) and can keep facing.",
                [3] = "Skill Builder: VEL can aim with Camera 360.",
                [4] = "Skill Builder: TP and VEL can stop at walls / ground.",
                [5] = "Skill Builder: moves can need a condition to be usable (target in range etc).",
                [6] = "Moves with a condition also block the game's move when it's false.",
                [7] = "Idle, walk and fall anims pause while a move is going.",
                [8] = "Better ground detection when lagging.",
                [9] = "Skill Builder: new KEY block, press a key or use another move."
            }
        },
        [7] = {
            Version = "v1.2",
            Date = "Oct 20, 2026",
            Notes = {
                [1] = "Skill Builder: IF can go to a branch now (if true / if false).",
                [2] = "Skill Builder: new IF checks, Tier 1 and Tier 2 hits.",
                [3] = "Skill Builder: SWITCH and air/ground checks work with M1s.",
                [4] = "Skill Builder: anim layer, weight, fade out and loop time settings.",
                [5] = "Skill Builder: anim picker has a timeline, trim, speed and stop.",
                [6] = "Skill Builder: right-click menus, drag to reorder, tooltips, undo/redo.",
                [7] = "Skill Builder: M1s link their air versions by themselves.",
                [8] = "Skill Builder: debug option per move.",
                [9] = "Walk, block and dash anims get cut by any attack now.",
                [10] = "Fixed Bring All not dropping items.",
                [11] = "Fixed clicks going through open panels.",
                [12] = "Fixed out of local registers error."
            }
        },
        [8] = {
            Version = "v1.1",
            Date = "Oct 19, 2026",
            Notes = {[1] = "Added Moveset tab with Skill Builder.", [2] = "Added Knockback Multiplier GUI."}
        }
    }
    local a32 = {
        Background = Color3.fromHex("0B0B0F"),
        Panel = Color3.fromHex("121218"),
        Lift = Color3.fromHex("1A1A23"),
        Stroke = Color3.fromHex("22222C"),
        Text = Color3.fromHex("E8E8F0"),
        Muted = Color3.fromHex("7A7A8C"),
        Accent = Color3.fromHex("FF2D55"),
        Ok = Color3.fromHex("3DDC84"),
        Warn = Color3.fromHex("FF9F0A")
    }
    local a33 = {}
    local function a34(b1)
        table.insert(a33, b1)
        b1()
    end
    local function a35(b1, b2)
        a34(function()
            b1[b2] = a32.Accent
        end)
    end
    local function a36(b1)
        a32.Accent = b1
        for b5, b6 in ipairs(a33) do
            pcall(b6)
        end
    end
    local a37 = true
    local a38 = {}
    local function a39(b1)
        table.insert(a38, b1)
        return b1
    end
    local function a40(b1, b2, b3)
        local b4 = Instance.new(b1)
        if b4:IsA("GuiObject") then
            b4.BorderSizePixel = 0
            b4.BackgroundColor3 = a32.Panel
        end
        if b1 == "TextLabel" or b1 == "TextButton" or b1 == "TextBox" then
            b4.Font = Enum.Font.Gotham
            b4.TextSize = 11
            b4.TextColor3 = a32.Text
            b4.Text = ""
        end
        if b1 == "TextLabel" then
            b4.BackgroundTransparency = 1
        end
        if b1 == "TextButton" then
            b4.AutoButtonColor = false
        end
        local b5 = nil
        for b9, b10 in pairs(b2 or {}) do
            if b9 == "Parent" then
                b5 = b10
            else
                b4[b9] = b10
            end
        end
        for b14, b15 in ipairs(b3 or {}) do
            b15.Parent = b4
        end
        if b1 == "CanvasGroup" and b2 and b2.Active and b2.Visible == false then
            b4.ZIndex = 10
            local b16 = Instance.new("TextButton")
            b16.Name = "Shield"
            b16.Text = ""
            b16.AutoButtonColor = false
            b16.BackgroundTransparency = 1
            b16.BorderSizePixel = 0
            b16.Size = UDim2.fromScale(1, 1)
            b16.ZIndex = 0
            b16.Parent = b4
        end
        if b5 then
            b4.Parent = b5
        end
        return b4
    end
    local function a41(b1, b2, b3, b4, b5)
        if b2 <= 0 then
            for b9, b10 in pairs(b3) do
                b1[b9] = b10
            end
            return nil
        end
        local b11 = TweenService:Create(b1, TweenInfo.new(b2, b4 or Enum.EasingStyle.Quad, b5 or Enum.EasingDirection.Out), b3)
        b11:Play()
        return b11
    end
    local a42 = {Win = nil}
    local RunService = game:GetService("RunService")
    local a44 = setmetatable({}, {__mode = "k"})
    local a45 = setmetatable({}, {__mode = "k"})
    a42.Shake = function(b1, b2, b3)
        if not b1 or not b1.Parent then
            return
        end
        b3 = b3 or 0.35
        b2 = b2 or 6
        if not a44[b1] then
            a44[b1] = b1.Position
        end
        local b4 = a44[b1]
        local b5 = (a45[b1] or 0) + 1
        a45[b1] = b5
        local b6 = os.clock()
        local b7 = nil
        b7 = RunService.RenderStepped:Connect(function()
            if a45[b1] ~= b5 or not b1.Parent then
                b7:Disconnect()
                return
            end
            local c1 = os.clock() - b6
            if c1 >= b3 then
                b7:Disconnect()
                b1.Position = b4
                a44[b1] = nil
                return
            end
            local c2 = b2 * (1 - c1 / b3) ^ 2
            local c3 = math.sin(c1 * 90) * c2
            local c4 = math.cos(c1 * 70) * c2 * 0.4
            b1.Position = b4 + UDim2.fromOffset(c3, c4)
        end)
    end
    local a46 = setmetatable({}, {__mode = "k"})
    a42.Punch = function(b1, b2)
        if not b1 or not b1:IsA("GuiObject") then
            return
        end
        local b3 = a46[b1]
        if not b3 or not b3.Parent then
            if b1:FindFirstChildOfClass("UIScale") then
                return
            end
            b3 = Instance.new("UIScale")
            b3.Name = "RYOIKI_Punch"
            b3.Parent = b1
            a46[b1] = b3
        end
        b3.Scale = 1 - (b2 or 0.04)
        a41(b3, 0.3, {Scale = 1}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    end
    a42.Error = function()
        if a42.Win and a42.Win.Parent then
            a42.Shake(a42.Win, 7, 0.38)
        end
    end
    local a47 = setmetatable({}, {__mode = "k"})
    local function a48(b1)
        if a47[b1] or not b1:IsA("GuiButton") or b1.Name == "Shield" then
            return
        end
        a47[b1] = true
        b1.MouseButton1Down:Connect(function()
            local c1 = b1
            if b1.Name == "Toggle" then
                c1 = b1:FindFirstChildWhichIsA("Frame") or b1
            end
            local c2 = c1.AbsoluteSize
            if c2.X > 320 or c2.Y > 120 then
                return
            end
            a42.Punch(c1, c2.X < 70 and 0.07 or 0.035)
        end)
    end
    a42.HookButtons = function(b1)
        for b5, b6 in ipairs(b1:GetDescendants()) do
            a48(b6)
        end
        b1.DescendantAdded:Connect(function(c1)
            task.defer(function()
                if c1.Parent then
                    a48(c1)
                end
            end)
        end)
    end
    local function a49(b1, b2, b3)
        return a40("UIStroke", {
            Color = b2 or a32.Stroke,
            Thickness = b3 or 1,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
            Parent = b1
        })
    end
    local a50 = typeof(getgenv) == "function" and getgenv() or _G
    if a50.RYOIKI_Destroy then
        pcall(a50.RYOIKI_Destroy)
    end
    local a51 = typeof(gethui) == "function" and gethui() or nil
    local a54, a53, a52 = ipairs({[1] = a51, [2] = CoreGui})
    while true do
        local a56 = a54(a53, a52)
        if a55 == nil then
            break
        end
        a52 = a55
        if a56 then
            pcall(function()
                local b1 = a56:FindFirstChild(a5.Name)
                if b1 then
                    b1:Destroy()
                end
            end)
        end
    end
    local a57 = (function()
        local b1 = game:GetService("HttpService")
        local b2 = "ryoiki_settings.json"
        local b3 = typeof(readfile) == "function" and typeof(writefile) == "function"
        local b4 = {}
        if b3 then
            pcall(function()
                local c1 = typeof(isfile) ~= "function" or isfile(b2)
                if c1 then
                    local c2 = b1:JSONDecode(readfile(b2))
                    if type(c2) == "table" then
                        b4 = c2
                    end
                end
            end)
        end
        local b5 = 0
        local function b6()
            if not b3 then
                return
            end
            b5 = b5 + 1
            local c1 = b5
            task.delay(0.5, function()
                if c1 == b5 then
                    pcall(writefile, b2, b1:JSONEncode(b4))
                end
            end)
        end
        return {
            Get = function(c1)
                return b4[c1]
            end,
            Set = function(c1, c2)
                b4[c1] = c2
                b6()
            end
        }
    end)()
    local a58 = a40("ScreenGui", {
        Name = a5.Name,
        ResetOnSpawn = false,
        IgnoreGuiInset = true,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        DisplayOrder = 999
    })
    local a59 = pcall(function()
        a58.Parent = a51 or CoreGui
    end)
    if not a59 or not a58.Parent then
        a58.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    end
    local a60 = (function()
        local b1 = game:GetService("GuiService")
        local b2 = {Scale = 1, Mode = "Auto"}
        local b3 = a57.Get("PhoneMode")
        if b3 == "On" or b3 == "Off" then
            b2.Mode = b3
        end
        b2.Touch = function()
            return UserInputService.TouchEnabled and not (UserInputService.MouseEnabled and UserInputService.KeyboardEnabled)
        end
        b2.IsMobile = function()
            if b2.Mode == "On" then
                return true
            end
            return b2.Mode == "Auto" and b2.Touch()
        end
        local function b4()
            local c1, c2 = pcall(b1.GetGuiInset, b1)
            return c1 and typeof(c2) == "Vector2" and c2 or Vector2.zero
        end
        b2.Inset = function()
            return b4().Y
        end
        b2.ScreenPos = function(c1)
            if c1 and c1.UserInputType == Enum.UserInputType.Touch then
                return Vector2.new(c1.Position.X, c1.Position.Y) + b4()
            end
            return UserInputService:GetMouseLocation()
        end
        local b5 = a40("Frame", {
            Name = "Screen",
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            ZIndex = 2,
            Parent = a58
        })
        b2.Screen = b5
        b2.Size = function()
            return a58.AbsoluteSize
        end
        b2.Fit = function(c1, c2)
            local c3 = b2.Size()
            local c4 = b2.IsMobile()
            local c5 = c4 and b2.Inset() or 0
            local c6 = c4 and 6 or 16
            return math.max(0.4, math.min((c3.X - c6 * 2) / c1, (c3.Y - c5 - c6 * 2) / c2))
        end
        local b6 = {}
        local function b7(c1)
            local c2, c3 = pcall(c1)
            if not c2 then
                warn("[RYOIKI] " .. tostring(c3))
            end
        end
        b2.OnChange = function(c1)
            table.insert(b6, c1)
            b7(c1)
        end
        b2.Fire = function()
            for c4, c5 in ipairs(b6) do
                b7(c5)
            end
        end
        local b9 = 0
        local b8 = setmetatable({}, {__mode = "k"})
        b2.TouchLeave = function(c1, c2)
            if not UserInputService.TouchEnabled then
                return
            end
            b8[c1] = c2
            b9 = b9 + 1
            if b9 % 300 == 0 then
                for c6 in pairs(b8) do
                    if not c6.Parent then
                        b8[c6] = nil
                    end
                end
            end
        end
        a39(UserInputService.InputEnded:Connect(function(c1)
            if c1.UserInputType ~= Enum.UserInputType.Touch then
                return
            end
            task.delay(0.1, function()
                for d4, d5 in pairs(b8) do
                    if d4.Parent then
                        pcall(d5)
                    else
                        b8[d4] = nil
                    end
                end
            end)
        end))
        b2.Hold = function(c1, c2, c3)
            c1.InputBegan:Connect(function(d1)
                local d2 = d1.UserInputType
                local d3 = d2 == Enum.UserInputType.Touch
                if not d3 and not (d2 == Enum.UserInputType.MouseButton1 and b2.IsMobile()) then
                    return
                end
                local d4 = b2.ScreenPos(d1)
                local d5 = false
                local d6 = UserInputService.InputChanged:Connect(function(e1)
                    if (e1 == d1 or not d3 and e1.UserInputType == Enum.UserInputType.MouseMovement) and (b2.ScreenPos(e1) - d4)["Magnitude"] > 10 then
                        d5 = true
                    end
                end)
                local d7 = UserInputService.InputEnded:Connect(function(e1)
                    if e1 == d1 or not d3 and e1.UserInputType == Enum.UserInputType.MouseButton1 then
                        d5 = true
                    end
                end)
                task.delay(c2, function()
                    d6:Disconnect()
                    d7:Disconnect()
                    if not d5 and a37 and c1.Parent then
                        c3(d4)
                    end
                end)
            end)
        end
        b2.LockScroll = function(c1)
            local c2 = {}
            local c3 = c1
            while c3 and c3 ~= a58 do
                if c3:IsA("ScrollingFrame") and c3.ScrollingEnabled then
                    c3.ScrollingEnabled = false
                    table.insert(c2, c3)
                end
                c3 = c3.Parent
            end
            return function()
                for d4, d5 in ipairs(c2) do
                    d5.ScrollingEnabled = true
                end
                table.clear(c2)
            end
        end
        b2.SetMode = function(c1)
            b2.Mode = c1
            a57.Set("PhoneMode", c1)
            b2.Fire()
            if b2.CenterWindow then
                b2.CenterWindow()
            end
        end
        a39(a58:GetPropertyChangedSignal("AbsoluteSize"):Connect(b2.Fire))
        return b2
    end)()
    local a61 = a40("Frame", {
        Name = "Toasts",
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 1),
        Position = UDim2.new(1, -16, 1, -16),
        Size = UDim2.new(0, 240, 1, -32),
        ZIndex = 4,
        Parent = a60.Screen
    })
    a40("UIListLayout", {
        Padding = UDim.new(0, 6),
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Bottom,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        Parent = a61
    })
    a60.OnChange(function()
        local b1 = a60.IsMobile()
        local b2 = a60.Inset()
        a61.AnchorPoint = Vector2.new(1, b1 and 0 or 1)
        a61.Position = b1 and UDim2.new(1, -16, 0, b2 + 8) or UDim2.new(1, -16, 1, -16)
        a61.Size = UDim2.new(0, 240, 1, b1 and -(b2 + 16) or -32)
        a61:FindFirstChildOfClass("UIListLayout").VerticalAlignment = b1 and Enum.VerticalAlignment.Top or Enum.VerticalAlignment.Bottom
    end)
    local a62 = {Lines = {}, Max = 80, T0 = os.clock()}
    local a63 = {
        [1] = "error",
        [2] = "could not",
        [3] = "couldn't",
        [4] = "didn't",
        [5] = "failed",
        [6] = "blocked",
        [7] = "can't",
        [8] = "cannot",
        [9] = "broken",
        [10] = "not found",
        [11] = "gave up",
        [12] = "crash"
    }
    local function a64(b1)
        return string.gsub(string.lower(b1), "[^%w]", "")
    end
    a62.Add = function(b1, b2)
        b2 = string.gsub(tostring(b2), "%s+", " ")
        if b1 == "note" then
            local b3 = string.lower(b2)
            for b7, b8 in ipairs(a63) do
                if string.find(b3, b8, 1, true) then
                    b1 = "warn"
                    break
                end
            end
        end
        local b10 = os.clock()
        local b9 = a64(b2)
        for b14 = #a62.Lines, math.max(1, #a62.Lines - 2), -1 do
            local b15 = a62.Lines[b14]
            if b15.key == b9 and b10 - b15.clock < 3 then
                if b1 == "err" or b1 == "warn" and b15.kind ~= "err" then
                    b15.kind = b1
                end
                b15.clock = b10
                return
            end
        end
        local b16 = a62.Lines[#a62.Lines]
        if b16 and b16.key == b9 then
            local b17 = b16
            local b18 = b16
            local b19 = b16
            b19.time = os.date("%H:%M:%S")
            b18.clock = b10
            b17.n = b16.n + 1
            return
        end
        table.insert(a62.Lines, {time = os.date("%H:%M:%S"), clock = b10, kind = b1, text = b2, key = b9, n = 1})
        while #a62.Lines > a62.Max do
            table.remove(a62.Lines, 1)
        end
    end
    local a65 = {Last = nil}
    local function a66(b1)
        local b2 = a50[b1]
        if typeof(b2) == "function" then
            return b2
        end
        local b3, b4 = pcall(function()
            return getfenv(0)[b1]
        end)
        if b3 and typeof(b4) == "function" then
            return b4
        end
        return nil
    end
    a65.Name = function()
        for b4, b5 in ipairs({[1] = "identifyexecutor", [2] = "getexecutorname"}) do
            local b6 = a66(b5)
            if b6 then
                local b7, b8, b9 = pcall(b6)
                if b7 and b8 then
                    return tostring(b8) .. (b9 and tostring(b9) ~= "" and " " .. tostring(b9) or "")
                end
            end
        end
        return "unknown"
    end
    a65.Run = function()
        local b1 = {}
        local function b2(c1, c2, c3, c4)
            table.insert(b1, {state = c1, name = c2, why = c3, extra = c4})
        end
        local function b3(c1, c2)
            local c3 = a66(c1)
            b2(c3 and "ok" or "missing", c1, c2)
            return c3
        end
        local b4 = a66("isnetworkowner")
        if not b4 then
            b2("missing", "isnetworkowner", "body check (Wrecking Ball, Skinwalker)", "hub just skips the check")
        else
            local b5 = Players.LocalPlayer.Character
            local b6 = b5 and b5:FindFirstChild("HumanoidRootPart")
            local b7 = b5 and b5:FindFirstChildOfClass("Humanoid")
            if not b6 or not b7 or b7.Health <= 0 or b6.Anchored then
                b2("ok", "isnetworkowner", "body check (Wrecking Ball, Skinwalker)", "couldn't test, be alive and run it again")
            else
                local b8, b9 = pcall(b4, b6)
                if not b8 then
                    b2("broken", "isnetworkowner", "body check (Wrecking Ball, Skinwalker)", "errors when called")
                elseif b9 ~= true then
                    b2("broken", "isnetworkowner", "body check (Wrecking Ball, Skinwalker)", "says you don't own your own body, so it's wrong on this executor")
                else
                    b2("ok", "isnetworkowner", "body check (Wrecking Ball, Skinwalker)")
                end
            end
        end
        local b11 = a66("getconnections")
        local b10 = a66("firesignal")
        b2((b10 or b11) and "ok" or "missing", "firesignal / getconnections", "pressing game buttons (Reset fallback)", (b10 or b11) and nil or "Reset can only use the game's reset hook")
        b3("setclipboard", "copy buttons (key, movesets, this log)")
        local b13 = a66("readfile")
        local b12 = a66("writefile")
        if not (b12 and b13) then
            b2("missing", "writefile / readfile", "saving your settings", "settings reset every time you rejoin")
        else
            local b14 = pcall(b12, "ryoiki_check.txt", "ok")
            local b15, b16 = pcall(b13, "ryoiki_check.txt")
            local b17 = a66("delfile")
            if b17 then
                pcall(b17, "ryoiki_check.txt")
            end
            if b14 and b15 and b16 == "ok" then
                b2("ok", "writefile / readfile", "saving your settings")
            else
                b2("broken", "writefile / readfile", "saving your settings", "wrote a test file but couldn't read it back")
            end
        end
        b3("isfile", "checking if the settings file exists")
        b3("makefolder", "moveset export folder")
        b3("keypress", "Auto Moveset key presses")
        b3("fireproximityprompt", "Auto Item grabber pickups")
        b3("gethui", "hiding the hub from the game's UI scans")
        local b18, b19 = pcall(function()
            return game:GetService("StarterGui"):GetCore("ResetButtonCallback")
        end)
        if b18 and typeof(b19) == "Instance" and b19:IsA("BindableEvent") then
            b2("ok", "reset hook", "Reset, Skinwalker, DESTROY MAP")
        elseif b18 and b19 == false then
            b2("broken", "reset hook", "Reset, Skinwalker, DESTROY MAP", "game turned reset off right now, hub uses the saved one if it has it")
        else
            b2((b10 or b11) and "ok" or "missing", "reset hook", "Reset, Skinwalker, DESTROY MAP", "not found, hub tries the reset button instead")
        end
        local b22 = {}
        local b21 = {}
        local b20 = 0
        for b26, b27 in ipairs(b1) do
            if b27.state == "ok" then
                b20 = b20 + 1
            elseif b27.state == "broken" then
                table.insert(b21, b27.name)
            else
                table.insert(b22, b27.name)
            end
        end
        a65.Last = {name = a65.Name(), rows = b1, good = b20, total = #b1, bad = b21, gone = b22}
        return a65.Last
    end
    a65.Summary = function(b1)
        b1 = b1 or a65.Last
        if not b1 then
            return "not run yet"
        end
        local b2 = b1.good .. "/" .. b1.total .. " ok"
        if #b1.bad > 0 then
            b2 = b2 .. ", broken: " .. table.concat(b1.bad, ", ")
        end
        if #b1.gone > 0 then
            b2 = b2 .. ", missing: " .. table.concat(b1.gone, ", ")
        end
        return b2
    end
    a62.Text = function()
        local b1 = a65.Last or a65.Run()
        local b2 = math.floor((os.clock() - a62.T0) / 60)
        local b3 = {
            [1] = "ryoiki debug " .. a5.Version .. " | " .. b1.name,
            [2] = "place " .. tostring(game.PlaceId) .. " | running " .. (b2 < 1 and "<1" or tostring(b2)) .. " min | " .. os.date("%d %b %H:%M"),
            [3] = "checks: " .. a65.Summary(b1),
            [4] = ""
        }
        if #a62.Lines == 0 then
            table.insert(b3, "(nothing logged yet)")
        end
        for b7, b8 in ipairs(a62.Lines) do
            local b9 = b8.kind == "err" and "ERR" or b8.kind == "warn" and " ! " or "   "
            table.insert(b3, b8.time .. " " .. b9 .. " " .. b8.text .. (b8.n > 1 and " (x" .. b8.n .. ")" or ""))
        end
        table.insert(b3, "")
        table.insert(b3, "^ send this in the discord + say what you did right before it broke")
        return table.concat(b3, "\n")
    end
    local function a67(b1, b2, b3)
        if not a37 then
            return
        end
        a62.Add("note", tostring(b1) .. ": " .. tostring(b2))
        local b4 = a40("Frame", {Name = "Toast", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 52), Parent = a61})
        local b5 = a40("CanvasGroup", {
            BackgroundColor3 = a32.Panel,
            Size = UDim2.fromScale(1, 1),
            Position = UDim2.fromOffset(260, 0),
            GroupTransparency = 1,
            Parent = b4
        })
        a49(b5, a32.Stroke)
        local b6 = a40("Frame", {Size = UDim2.new(0, 2, 1, 0), Parent = b5})
        a35(b6, "BackgroundColor3")
        a40("TextLabel", {
            Text = string.upper(tostring(b1)),
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(12, 8),
            Size = UDim2.new(1, -20, 0, 14),
            Parent = b5
        })
        a40("TextLabel", {
            Text = tostring(b2),
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextWrapped = true,
            Position = UDim2.fromOffset(12, 24),
            Size = UDim2.new(1, -20, 0, 24),
            Parent = b5
        })
        local b7 = a40("Frame", {
            BackgroundTransparency = 0.4,
            AnchorPoint = Vector2.new(0, 1),
            Position = UDim2.new(0, 2, 1, 0),
            Size = UDim2.new(1, -2, 0, 1),
            Parent = b5
        })
        a35(b7, "BackgroundColor3")
        a41(b5, 0.2, {Position = UDim2.fromOffset(0, 0), GroupTransparency = 0})
        a41(b7, b3 or 3, {Size = UDim2.new(0, 0, 0, 1)}, Enum.EasingStyle.Linear)
        local b8 = string.lower(tostring(b1) .. " " .. tostring(b2))
        for b12, b13 in ipairs({
            [1] = "error",
            [2] = "could not",
            [3] = "couldn't",
            [4] = "failed",
            [5] = "fail ",
            [6] = "blocked",
            [7] = "requires",
            [8] = "gave up",
            [9] = "not found",
            [10] = "nothing found",
            [11] = "can't",
            [12] = "cannot",
            [13] = "no character",
            [14] = "locked"
        }) do
            if string.find(b8, b13, 1, true) then
                a42.Error()
                task.delay(0.2, function()
                    a42.Shake(b5, 8, 0.4)
                end)
                break
            end
        end
        task.delay(b3 or 3, function()
            if not a37 then
                return
            end
            local c1 = a41(b5, 0.2, {Position = UDim2.fromOffset(260, 0), GroupTransparency = 1})
            c1.Completed:Once(function()
                b4:Destroy()
            end)
        end)
    end
    local a69 = nil
    local a68 = nil
    local a70 = "ok"
    local function a71()
        if a70 == "accent" then
            return a32.Accent
        elseif a70 == "warn" then
            return a32.Warn
        end
        return a32.Ok
    end
    local function a72(b1, b2)
        if b2 == "warn" then
            a62.Add("warn", b1)
        end
        a70 = b2 or "ok"
        if a69 then
            a69.Text = b1
        end
        if a68 then
            a68.BackgroundColor3 = a71()
        end
    end
    local function a73(b1, b2, ...)
        if type(b2) ~= "function" then
            return
        end
        local b3, b4 = pcall(b2, ...)
        if not b3 then
            a62.Add("err", "Error: " .. b1 .. " (" .. tostring(b4) .. ")")
            a72("Error: " .. b1 .. " (" .. tostring(b4) .. ")", "warn")
            a67("Error", b1 .. ": " .. tostring(b4), 4)
        end
    end
    local function a74(b1, b2, b3)
        local b4 = a40("TextButton", {
            Name = "Button",
            Text = string.upper(b2),
            Font = Enum.Font.GothamBold,
            BackgroundColor3 = a32.Background,
            Size = UDim2.new(1, 0, 0, 22),
            Parent = b1
        })
        local b5 = a49(b4, a32.Stroke)
        local b6 = false
        local function b7(c1)
            local c2 = c1 and 0.12 or 0
            a41(b4, c2, {
                BackgroundColor3 = b6 and a32.Accent or a32.Background,
                TextColor3 = b6 and Color3.new(0, 0, 0) or a32.Text
            })
            a41(b5, c2, {Color = b6 and a32.Accent or a32.Stroke})
        end
        a34(function()
            b7(false)
        end)
        b4.MouseEnter:Connect(function()
            b6 = true
            b7(true)
        end)
        b4.MouseLeave:Connect(function()
            b6 = false
            b7(true)
        end)
        a60.TouchLeave(b4, function()
            if b6 then
                b6 = false
                b7(true)
            end
        end)
        b4.MouseButton1Click:Connect(function()
            if b3 then
                b3()
            end
        end)
        return b4
    end
    local function a75(b1, b2, b3)
        local b4 = b2 and true or false
        local b5 = a40("TextButton", {Name = "Toggle", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 22), Parent = b1})
        local b6 = a40("Frame", {
            BackgroundColor3 = a32.Background,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 0, 0.5, 0),
            Size = UDim2.fromOffset(40, 18),
            Parent = b5
        })
        local b7 = a49(b6, a32.Stroke)
        local b8 = a40("Frame", {
            BackgroundColor3 = a32.Muted,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 3, 0.5, 0),
            Size = UDim2.fromOffset(12, 12),
            Parent = b6
        })
        local b9 = a40("TextLabel", {
            Font = Enum.Font.GothamBold,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(50, 0),
            Size = UDim2.new(1, -50, 1, 0),
            Parent = b5
        })
        local function b10(c1)
            local c2 = c1 and 0.15 or 0
            a41(b6, c2, {BackgroundColor3 = b4 and a32.Accent or a32.Background})
            a41(b7, c2, {Color = b4 and a32.Accent or a32.Stroke})
            a41(b8, c1 and 0.26 or 0, {
                Position = b4 and UDim2.new(1, -15, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
                BackgroundColor3 = b4 and a32.Background or a32.Muted
            }, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
            b9.Text = b4 and "ON" or "OFF"
            b9.TextColor3 = b4 and a32.Text or a32.Muted
        end
        a34(function()
            b10(false)
        end)
        b5.MouseButton1Click:Connect(function()
            b4 = not b4
            b10(true)
            if b3 then
                b3(b4)
            end
        end)
        return b5, {
            Set = function(c1)
                b4 = c1 and true or false
                b10(true)
            end,
            Get = function()
                return b4
            end
        }
    end
    local function a76(b1, b2, b3, b4, b5, b6, b7)
        b5 = b5 or 1
        b6 = b6 or ""
        local b8 = a40("Frame", {Name = "Slider", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 22), Parent = b1})
        local b9 = a40("TextLabel", {
            Font = Enum.Font.GothamBold,
            TextXAlignment = Enum.TextXAlignment.Right,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, 0, 0, 0),
            Size = UDim2.fromOffset(52, 22),
            Parent = b8
        })
        local b10 = a40("Frame", {
            BackgroundColor3 = a32.Stroke,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 0, 0.5, 0),
            Size = UDim2.new(1, -60, 0, 4),
            Parent = b8
        })
        local b11 = a40("Frame", {Size = UDim2.new(0, 0, 1, 0), Parent = b10})
        a35(b11, "BackgroundColor3")
        local b12 = a40("Frame", {
            BackgroundColor3 = a32.Text,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0, 0, 0.5, 0),
            Size = UDim2.fromOffset(8, 14),
            ZIndex = 2,
            Parent = b10
        })
        local b13 = a40("TextButton", {
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 0, 0.5, 0),
            Size = UDim2.new(1, 0, 0, 22),
            ZIndex = 3,
            Parent = b10
        })
        local b14 = b4 or b2
        local function b15(c1)
            if b5 < 1 then
                return string.format("%.2f", c1) .. b6
            end
            return tostring(math.floor(c1 + 0.5)) .. b6
        end
        local function b16(c1, c2)
            c1 = math.clamp(c1, b2, b3)
            c1 = math.floor((c1 - b2) / b5 + 0.5) * b5 + b2
            c1 = math.floor(math.clamp(c1, b2, b3) * 1000 + 0.5) / 1000
            b14 = c1
            local c3 = b3 > b2 and (c1 - b2) / (b3 - b2) or 0
            b11.Size = UDim2.new(c3, 0, 1, 0)
            b12.Position = UDim2.new(c3, 0, 0.5, 0)
            b9.Text = b15(c1)
            if not c2 and b7 then
                b7(c1)
            end
        end
        local function b17(c1)
            local c2 = math.clamp((c1 - b10.AbsolutePosition.X) / math.max(b10.AbsoluteSize.X, 1), 0, 1)
            b16(b2 + c2 * (b3 - b2))
        end
        b13.InputBegan:Connect(function(c1)
            if c1.UserInputType == Enum.UserInputType.MouseButton1 or c1.UserInputType == Enum.UserInputType.Touch then
                b17(c1.Position.X)
                local c2 = c1.UserInputType == Enum.UserInputType.Touch
                local c3 = a60.LockScroll(b8)
                local c5 = nil
                local c4 = nil
                c4 = UserInputService.InputChanged:Connect(function(d1)
                    if d1 == c1 or not c2 and d1.UserInputType == Enum.UserInputType.MouseMovement then
                        b17(d1.Position.X)
                    end
                end)
                c5 = UserInputService.InputEnded:Connect(function(d1)
                    if d1 == c1 or not c2 and d1.UserInputType == Enum.UserInputType.MouseButton1 then
                        c4:Disconnect()
                        c5:Disconnect()
                        c3()
                    end
                end)
            end
        end)
        b16(b14, true)
        return b8, {
            Set = function(c1)
                b16(c1)
            end,
            Get = function()
                return b14
            end
        }
    end
    local a78 = 380
    local a77 = 600
    local a79 = false
    local a80 = false
    local a81 = 1
    local a82 = a5.ToggleKey
    local a83 = a40("Frame", {
        Name = "Root",
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(a77, a78),
        Visible = false,
        ZIndex = 3,
        Parent = a60.Screen
    })
    local a84 = a40("CanvasGroup", {
        Name = "Main",
        BackgroundColor3 = a32.Background,
        Size = UDim2.fromOffset(a77, a78),
        GroupTransparency = 1,
        Active = true,
        Parent = a83
    })
    a49(a84, a32.Stroke)
    local a85 = a40("UIScale", {Scale = 0.96, Parent = a84})
    a42.Win = a84
    local a86 = 0.55
    local a87 = a40("Frame", {
        Name = "Shadow",
        BackgroundColor3 = Color3.new(0, 0, 0),
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(5, 5),
        Size = a84.Size,
        ZIndex = 0,
        Parent = a83
    })
    local a88 = a40("UIScale", {Scale = a85.Scale, Parent = a87})
    local function a89()
        a87.Size = a84.Size
        a88.Scale = a85.Scale
        a87.BackgroundTransparency = a86 + (1 - a86) * a84.GroupTransparency
    end
    a84:GetPropertyChangedSignal("Size"):Connect(a89)
    a84:GetPropertyChangedSignal("GroupTransparency"):Connect(a89)
    a85:GetPropertyChangedSignal("Scale"):Connect(a89)
    a89()
    local a90 = a40("Frame", {Name = "TopBar", BackgroundColor3 = a32.Panel, Size = UDim2.fromOffset(a77, 32), Parent = a84})
    local a91 = a40("Frame", {Size = UDim2.fromOffset(2, 32), Parent = a90})
    a35(a91, "BackgroundColor3")
    a40("Frame", {
        BackgroundColor3 = a32.Stroke,
        Position = UDim2.fromOffset(0, 31),
        Size = UDim2.fromOffset(a77, 1),
        Parent = a90
    })
    local a92 = a40("Frame", {
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(14, 0),
        Size = UDim2.new(0, 200, 1, 0),
        Parent = a90
    })
    a40("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 6),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = a92
    })
    local a93 = a40("TextLabel", {
        Text = "\233\160\152\229\159\159",
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        AutomaticSize = Enum.AutomaticSize.X,
        Size = UDim2.new(0, 0, 1, 0),
        LayoutOrder = 0,
        Parent = a92
    })
    a35(a93, "TextColor3")
    local a94 = Enum.Font.GothamBold
    pcall(function()
        a94 = Enum.Font.Michroma
    end)
    a40("TextLabel", {
        Text = a5.Name,
        Font = a94,
        TextSize = 13,
        AutomaticSize = Enum.AutomaticSize.X,
        Size = UDim2.new(0, 0, 1, 0),
        LayoutOrder = 1,
        Parent = a92
    })
    local a95 = a40("TextLabel", {
        Text = "V" .. (string.match(a5.Version, "%d+") or "1"),
        Font = Enum.Font.GothamBold,
        TextSize = 9,
        TextColor3 = a32.Background,
        BackgroundTransparency = 0,
        Size = UDim2.fromOffset(20, 13),
        LayoutOrder = 2,
        Parent = a92
    })
    a35(a95, "BackgroundColor3")
    local a96 = nil
    local a97 = a40("Frame", {
        BackgroundColor3 = a32.Background,
        Position = UDim2.fromOffset(176, 5),
        Size = UDim2.new(1, -320, 0, 22),
        Parent = a90
    })
    local a98 = a49(a97, a32.Stroke)
    a96 = a40("TextBox", {
        BackgroundTransparency = 1,
        Text = "",
        PlaceholderText = "Search any feature...",
        PlaceholderColor3 = a32.Muted,
        ClearTextOnFocus = false,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        Size = UDim2.fromScale(1, 1),
        Parent = a97
    })
    a40("UIPadding", {PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), Parent = a96})
    a96.Focused:Connect(function()
        a41(a98, 0.12, {Color = a32.Accent})
    end)
    a96.FocusLost:Connect(function()
        a41(a98, 0.12, {Color = a32.Stroke})
    end)
    local a99 = nil
    local a100 = nil
    local a101 = a40("TextButton", {
        Text = a5.Version,
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Right,
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -76, 0.5, 0),
        Size = UDim2.fromOffset(60, 20),
        Parent = a90
    })
    a101.MouseEnter:Connect(function()
        a41(a101, 0.12, {TextColor3 = a32.Text})
    end)
    a101.MouseLeave:Connect(function()
        a41(a101, 0.12, {TextColor3 = a32.Muted})
    end)
    a101.MouseButton1Click:Connect(function()
        a99()
    end)
    local function a102(b1, b2)
        local b3 = a40("TextButton", {
            Text = b1,
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            BackgroundColor3 = a32.Panel,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, b2, 0, 0),
            Size = UDim2.fromOffset(32, 31),
            Parent = a90
        })
        return b3
    end
    local a103 = a102("\226\128\148", -32)
    local a104 = a102("\195\151", 0)
    a103.MouseEnter:Connect(function()
        a41(a103, 0.12, {BackgroundColor3 = a32.Lift})
    end)
    a103.MouseLeave:Connect(function()
        a41(a103, 0.12, {BackgroundColor3 = a32.Panel})
    end)
    a60.TouchLeave(a103, function()
        a41(a103, 0.12, {BackgroundColor3 = a32.Panel})
    end)
    local a105 = false
    a34(function()
        a104.BackgroundColor3 = a105 and a32.Accent or a32.Panel
    end)
    a104.MouseEnter:Connect(function()
        a105 = true
        a41(a104, 0.12, {BackgroundColor3 = a32.Accent, TextColor3 = Color3.new(0, 0, 0)})
    end)
    a60.TouchLeave(a104, function()
        a105 = false
        a41(a104, 0.12, {BackgroundColor3 = a32.Panel, TextColor3 = a32.Text})
    end)
    a104.MouseLeave:Connect(function()
        a105 = false
        a41(a104, 0.12, {BackgroundColor3 = a32.Panel, TextColor3 = a32.Text})
    end)
    a40("Frame", {
        Name = "SidebarBack",
        BackgroundColor3 = a32.Panel,
        BorderSizePixel = 0,
        Position = UDim2.fromOffset(0, 32),
        Size = UDim2.fromOffset(130, 326),
        Parent = a84
    })
    local a106 = a40("ScrollingFrame", {
        Name = "Sidebar",
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = UDim2.fromOffset(0, 32),
        Size = UDim2.fromOffset(130, 286),
        CanvasSize = UDim2.new(),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollingDirection = Enum.ScrollingDirection.Y,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = a32.Muted,
        ScrollBarImageTransparency = 0.3,
        Parent = a84
    })
    a40("Frame", {
        BackgroundColor3 = a32.Stroke,
        Position = UDim2.fromOffset(129, 32),
        Size = UDim2.fromOffset(1, 326),
        Parent = a84
    })
    a40("UIListLayout", {SortOrder = Enum.SortOrder.LayoutOrder, Parent = a106})
    a40("UIPadding", {PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4), Parent = a106})
    local a107 = nil
    local a108 = Players.LocalPlayer
    local a109 = a40("Frame", {
        Name = "SidebarFooter",
        BackgroundColor3 = a32.Panel,
        Position = UDim2.fromOffset(0, 318),
        Size = UDim2.fromOffset(129, 40),
        Parent = a84
    })
    a40("Frame", {BackgroundColor3 = a32.Stroke, Size = UDim2.new(1, 0, 0, 1), Parent = a109})
    local a110 = a40("ImageLabel", {
        BackgroundColor3 = a32.Background,
        Position = UDim2.fromOffset(10, 7),
        Size = UDim2.fromOffset(26, 26),
        Parent = a109
    })
    local a111 = a49(a110, a32.Accent)
    a35(a111, "Color")
    task.spawn(function()
        local b1, b2 = pcall(function()
            return Players:GetUserThumbnailAsync(a108.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
        end)
        if b1 and b2 and a110.Parent then
            a110.Image = b2
        end
    end)
    a40("TextLabel", {
        Text = a108.DisplayName,
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
        Position = UDim2.fromOffset(44, 7),
        Size = UDim2.fromOffset(78, 14),
        Parent = a109
    })
    a107 = a40("TextLabel", {
        TextSize = 10,
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
        Position = UDim2.fromOffset(44, 21),
        Size = UDim2.fromOffset(80, 12),
        Parent = a109
    })
    local a112 = a40("Frame", {
        Name = "Content",
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Position = UDim2.fromOffset(130, 32),
        Size = UDim2.fromOffset(470, 326),
        Parent = a84
    })
    local a113 = a40("Frame", {
        Name = "StatusBar",
        BackgroundColor3 = a32.Panel,
        Position = UDim2.fromOffset(0, 358),
        Size = UDim2.fromOffset(a77, 22),
        Parent = a84
    })
    a40("Frame", {BackgroundColor3 = a32.Stroke, Size = UDim2.fromOffset(a77, 1), Parent = a113})
    a68 = a40("Frame", {
        BackgroundColor3 = a32.Ok,
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 12, 0.5, 0),
        Size = UDim2.fromOffset(6, 6),
        Parent = a113
    })
    a69 = a40("TextLabel", {
        Text = "Ready",
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(26, 0),
        Size = UDim2.new(1, -230, 1, 0),
        TextTruncate = Enum.TextTruncate.AtEnd,
        Parent = a113
    })
    local a114 = a40("TextLabel", {
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Right,
        AnchorPoint = Vector2.new(1, 0),
        Position = UDim2.new(1, -12, 0, 0),
        Size = UDim2.fromOffset(180, 22),
        Parent = a113
    })
    local function a115()
        local b1 = a60.IsMobile()
        a114.Text = b1 and "Tap \195\151 to hide" or a82.Name .. " to hide"
        if a107 then
            local b2 = string.upper(a82.Name)
            b2 = string.gsub(b2, "^RIGHT", "R")
            b2 = string.gsub(b2, "^LEFT", "L")
            a107.Text = b1 and "TAP \195\151 TO HIDE" or "HIDE: " .. b2
        end
    end
    a60.OnChange(a115)
    a34(function()
        a68.BackgroundColor3 = a71()
    end)
    local a116 = a40("TextButton", {
        Name = "Reopen",
        Text = string.sub(a5.Name, 1, 1),
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        BackgroundColor3 = a32.Panel,
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 16, 0.5, 0),
        Size = UDim2.fromOffset(38, 38),
        Visible = false,
        ZIndex = 3,
        Parent = a60.Screen
    })
    local a117 = a49(a116, a32.Accent)
    a35(a117, "Color")
    a35(a116, "TextColor3")
    a60.OnChange(function()
        local b1 = a60.IsMobile()
        a116.Size = UDim2.fromOffset(b1 and 48 or 38, b1 and 48 or 38)
        a116.TextSize = b1 and 20 or 16
        local b2 = a60.Size()
        local b3 = a116.Position
        local b4 = b3.X.Scale * b2.X + b3.X.Offset
        local b5 = b3.Y.Scale * b2.Y + b3.Y.Offset
        local b6 = a116.Size.X.Offset
        local b7 = b1 and a60.Inset() or 0
        local b8 = math.clamp(b4, 4, math.max(4, b2.X - b6 - 4))
        local b9 = math.clamp(b5, b7 + b6 / 2 + 4, math.max(b7 + b6 / 2 + 4, b2.Y - b6 / 2 - 4))
        if math.abs(b8 - b4) > 0.5 or math.abs(b9 - b5) > 0.5 then
            a116.Position = UDim2.fromOffset(b8, b9)
        end
    end)
    local function a118(b1)
        a79 = b1
        a116.Visible = not b1 and a80
        if b1 then
            a83.Visible = true
            a85.Scale = a60.Scale * 0.88
            a41(a84, 0.2, {GroupTransparency = 0})
            a41(a85, 0.38, {Scale = a60.Scale}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        else
            a41(a85, 0.15, {Scale = a60.Scale * 0.96})
            local b2 = a41(a84, 0.15, {GroupTransparency = 1})
            b2.Completed:Once(function()
                if not a79 then
                    a83.Visible = false
                end
            end)
        end
    end
    a60.ClampWindow = function()
        local b1 = a60.Size()
        if b1.X < 2 or b1.Y < 2 then
            return
        end
        local b2 = a83.Position
        local b4 = a83.Size.Y.Offset / 2
        local b3 = a83.Size.X.Offset / 2
        local b5 = b2.X.Scale * b1.X + b2.X.Offset
        local b6 = b2.Y.Scale * b1.Y + b2.Y.Offset
        local b7 = a60.IsMobile() and a60.Inset() or 0
        local b8 = math.clamp(b5, math.min(b3, b1.X / 2), math.max(b1.X - b3, b1.X / 2))
        local b9 = math.clamp(b6, math.min(b7 + b4, (b1.Y + b7) / 2), math.max(b1.Y - b4, (b1.Y + b7) / 2))
        if math.abs(b8 - b5) > 0.5 or math.abs(b9 - b6) > 0.5 then
            a83.Position = UDim2.fromOffset(b8, b9)
        end
    end
    a60.CenterWindow = function()
        if a60.IsMobile() then
            local b1 = a60.Size()
            local b2 = a60.Inset()
            a83.Position = UDim2.fromOffset(b1.X / 2, b2 + (b1.Y - b2) / 2)
        else
            a83.Position = UDim2.fromScale(0.5, 0.5)
        end
        a60.ClampWindow()
    end
    local function a119(b1)
        a81 = b1 or a81
        local b2 = math.min(a81, a60.Fit(a77, a78))
        a60.Scale = b2
        a83.Size = UDim2.fromOffset(a77 * b2, a78 * b2)
        a85.Scale = a79 and b2 or b2 * 0.96
        a60.ClampWindow()
    end
    a60.OnChange(function()
        a119()
    end)
    a60.CenterWindow()
    local a120 = false
    a103.MouseButton1Click:Connect(function()
        a120 = not a120
        a41(a84, 0.2, {Size = UDim2.fromOffset(a77, a120 and 32 or a78)})
    end)
    a104.MouseButton1Click:Connect(function()
        a118(false)
        if a60.IsMobile() then
            a67(a5.Name, "Hidden. Tap the " .. string.sub(a5.Name, 1, 1) .. " button to show it again.", 3)
        else
            a67(a5.Name, "Hidden. Press " .. a82.Name .. " or tap the " .. string.sub(a5.Name, 1, 1) .. " button to show again.", 3)
        end
    end)
    local a124 = nil
    local a123 = nil
    local a122 = nil
    local a121 = false
    a90.InputBegan:Connect(function(b1)
        if b1.UserInputType == Enum.UserInputType.MouseButton1 or b1.UserInputType == Enum.UserInputType.Touch then
            a121 = true
            a124 = b1
            a122 = b1.Position
            a123 = a83.Position
            local b2 = nil
            b2 = b1.Changed:Connect(function()
                if b1.UserInputState == Enum.UserInputState.End then
                    a121 = false
                    b2:Disconnect()
                end
            end)
        end
    end)
    a39(UserInputService.InputChanged:Connect(function(b1)
        if not a121 then
            return
        end
        local b2 = a124.UserInputType == Enum.UserInputType.Touch
        if b1 == a124 or not b2 and b1.UserInputType == Enum.UserInputType.MouseMovement then
            local b3 = b1.Position - a122
            local b4 = a60.Size()
            local b5 = a123.X.Scale * b4.X + a123.X.Offset + b3.X
            local b6 = a123.Y.Scale * b4.Y + a123.Y.Offset + b3.Y
            a83.Position = UDim2.fromOffset(b5, b6)
            a60.ClampWindow()
        end
    end))
    local a129 = nil
    local a128 = nil
    local a127 = nil
    local a126 = false
    local a125 = false
    a116.InputBegan:Connect(function(b1)
        if b1.UserInputType == Enum.UserInputType.MouseButton1 or b1.UserInputType == Enum.UserInputType.Touch then
            a126 = false
            a125 = true
            a129 = b1
            a128 = a116.Position
            a127 = b1.Position
            local b2 = nil
            b2 = b1.Changed:Connect(function()
                if b1.UserInputState == Enum.UserInputState.End then
                    a125 = false
                    b2:Disconnect()
                    if not a126 then
                        a118(true)
                    end
                end
            end)
        end
    end)
    a39(UserInputService.InputChanged:Connect(function(b1)
        if a125 and (b1 == a129 or a129.UserInputType ~= Enum.UserInputType.Touch and b1.UserInputType == Enum.UserInputType.MouseMovement) then
            local b2 = b1.Position - a127
            if b2.Magnitude > 4 then
                a126 = true
            end
            if a126 then
                a116.Position = UDim2.new(a128.X.Scale, a128.X.Offset + b2.X, a128.Y.Scale, a128.Y.Offset + b2.Y)
            end
        end
    end))
    a116.MouseEnter:Connect(function()
        a41(a116, 0.12, {BackgroundColor3 = a32.Lift})
    end)
    a116.MouseLeave:Connect(function()
        a41(a116, 0.12, {BackgroundColor3 = a32.Panel})
    end)
    a60.TouchLeave(a116, function()
        a41(a116, 0.12, {BackgroundColor3 = a32.Panel})
    end)
    local a130 = false
    local a131 = a40("CanvasGroup", {
        Name = "Changelog",
        BackgroundColor3 = a32.Background,
        Position = UDim2.fromOffset(130, 32),
        Size = UDim2.fromOffset(470, 326),
        GroupTransparency = 1,
        Visible = false,
        Active = true,
        Parent = a84
    })
    a40("TextLabel", {
        Text = "CHANGELOG",
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(16, 0),
        Size = UDim2.fromOffset(200, 44),
        Parent = a131
    })
    a40("Frame", {
        BackgroundColor3 = a32.Stroke,
        Position = UDim2.fromOffset(0, 44),
        Size = UDim2.new(1, 0, 0, 1),
        Parent = a131
    })
    local function a132()
        if not a130 then
            return
        end
        a130 = false
        local b1 = a41(a131, 0.15, {GroupTransparency = 1})
        b1.Completed:Once(function()
            if not a130 then
                a131.Visible = false
            end
        end)
    end
    local a133 = a74(a131, "Close", a132)
    a133.AnchorPoint = Vector2.new(1, 0)
    a133.Position = UDim2.new(1, -16, 0, 10)
    a133.Size = UDim2.fromOffset(70, 24)
    local a134 = a40("ScrollingFrame", {
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(0, 46),
        Size = UDim2.new(1, 0, 1, -46),
        ScrollBarThickness = 3,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(),
        Parent = a131
    })
    a35(a134, "ScrollBarImageColor3")
    a40("UIListLayout", {Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = a134})
    a40("UIPadding", {
        PaddingLeft = UDim.new(0, 16),
        PaddingRight = UDim.new(0, 16),
        PaddingTop = UDim.new(0, 12),
        PaddingBottom = UDim.new(0, 12),
        Parent = a134
    })
    for a138, a139 in ipairs(a31) do
        local a140 = a40("Frame", {
            BackgroundColor3 = a32.Panel,
            Size = UDim2.new(1, -6, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            LayoutOrder = a138,
            Parent = a134
        })
        a49(a140, a32.Stroke)
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 10),
            PaddingRight = UDim.new(0, 10),
            PaddingTop = UDim.new(0, 10),
            PaddingBottom = UDim.new(0, 10),
            Parent = a140
        })
        a40("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder, Parent = a140})
        local a141 = a40("TextLabel", {
            Text = a139.Version .. "  \194\183  " .. a139.Date,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = UDim2.new(1, 0, 0, 18),
            LayoutOrder = 0,
            Parent = a140
        })
        if a138 == 1 then
            a35(a141, "TextColor3")
        end
        for a145, a146 in ipairs(a139.Notes) do
            a40("TextLabel", {
                Text = "\226\128\162  " .. a146,
                TextColor3 = a32.Muted,
                TextWrapped = true,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Top,
                AutomaticSize = Enum.AutomaticSize.Y,
                Size = UDim2.new(1, 0, 0, 0),
                LayoutOrder = a145,
                Parent = a140
            })
        end
    end
    a99 = function()
        if a130 then
            a132()
            return
        end
        if a100 then
            a100()
        end
        a130 = true
        a131.Position = UDim2.fromOffset(138, 32)
        a131.GroupTransparency = 1
        a131.Visible = true
        a41(a131, 0.2, {Position = UDim2.fromOffset(130, 32), GroupTransparency = 0})
        a72("Viewing changelog", "ok")
    end
    local a147 = (function()
        local b1 = game:GetService("RunService")
        local b2 = game:GetService("ProximityPromptService")
        local b3 = game:GetService("Workspace")
        local b4 = Players.LocalPlayer
        local b5 = nil
        pcall(function()
            b5 = game:GetService("VirtualInputManager")
        end)
        local b6 = {
            Whitelist = {[1] = "Imed Ball"},
            PrioritizeWhitelist = true,
            Phases = {
                [1] = {fire = true, key = false, instant = true, offset = Vector3.new(0, 3, 0), stay = 0.35},
                [2] = {
                    fire = true,
                    key = true,
                    instant = true,
                    offset = Vector3.new(0, 0.5, 0),
                    stay = 0.6,
                    isolate = true
                },
                [3] = {
                    fire = false,
                    key = true,
                    instant = false,
                    offset = Vector3.new(0, 2, 1.5),
                    stay = 1.2,
                    isolate = true
                },
                [4] = {fire = true, key = true, instant = false, offset = Vector3.new(0, 5, 0), stay = 1.2, isolate = true}
            },
            MaxStay = 15,
            FixWideRanges = true,
            ArriveWait = 0.02,
            ReturnHold = 0.04,
            RetryGap = 0.05,
            FirePerCycle = 5,
            MinActivation = 20,
            FireInterval = 0,
            HoldOverride = 0.1,
            HoldBuffer = 0.01,
            IsolateRadius = 15,
            FailTimeout = 20,
            StreamDistance = 600,
            ShownWait = 0.15,
            CacheTime = 10,
            VerifyWait = 0.6,
            LeadMax = 25
        }
        local b7 = {}
        local b8 = {["Imed Ball"] = true}
        local b9 = {}
        local b10 = {}
        local b11 = {}
        local b12 = 0
        local b13 = false
        local b14 = {}
        local b15 = 0
        local b16 = {}
        local b17 = {}
        local b20 = {}
        local b19 = {}
        local b18 = {}
        local b21 = nil
        local b22 = Instance.new("BindableEvent")
        local b23 = nil
        local function b24(c1)
            if c1:IsA("ProximityPrompt") and b7[c1] == nil then
                b7[c1] = false
                b19[c1] = true
                if b23 then
                    b23(c1)
                end
            end
        end
        task.spawn(function()
            local c1 = b3:FindFirstChild("Items")
            if c1 then
                for c5, c6 in ipairs(c1:GetDescendants()) do
                    b24(c6)
                end
                b22:Fire()
            end
            task.wait()
            local c7 = 0
            for c11, c12 in ipairs(b3:GetChildren()) do
                b24(c12)
                local c13, c14 = pcall(c12.GetDescendants, c12)
                if c13 then
                    for c18, c19 in ipairs(c14) do
                        b24(c19)
                        c7 = c7 + 1
                        if c7 >= 1000 then
                            c7 = 0
                            task.wait()
                        end
                    end
                end
                if c7 >= 300 then
                    c7 = 0
                    task.wait()
                end
            end
            b22:Fire()
        end)
        local b25 = Instance.new("BindableEvent")
        a39(b3.DescendantAdded:Connect(function(c1)
            if c1.ClassName == "ProximityPrompt" then
                b24(c1)
                task.defer(function()
                    if c1.Parent then
                        b25:Fire(c1)
                        b22:Fire()
                    end
                end)
            end
        end))
        a39(b3.DescendantRemoving:Connect(function(c1)
            b7[c1] = nil
            b9[c1] = nil
            b19[c1] = nil
            local c2 = b20[c1]
            if c2 then
                c2:Disconnect()
                b20[c1] = nil
            end
            if b18[c1] then
                b18[c1] = nil
                b22:Fire()
            end
        end))
        local b26 = false
        local b27 = nil
        local function b28()
            local c1 = b4.Character
            local c2 = c1 and c1:FindFirstChildOfClass("Humanoid")
            local c3 = c1 and c1:FindFirstChild("HumanoidRootPart")
            if c2 and c3 and c2.Health > 0 then
                return c3
            end
        end
        local function b29(c1)
            local c2 = c1.Parent
            if c2 and c2:IsA("BasePart") then
                return c2
            end
            if c2 and c2:IsA("Attachment") and c2.Parent and c2.Parent:IsA("BasePart") then
                return c2.Parent
            end
            return c1:FindFirstAncestorWhichIsA("BasePart")
        end
        local function b30(c1)
            local c2 = c1.Parent
            if c2 and c2:IsA("Attachment") then
                return c2.WorldPosition
            end
            local c3 = b29(c1)
            if c3 then
                return c3.Position
            end
            local c4 = c1:FindFirstAncestorWhichIsA("Model")
            if c4 then
                return c4:GetPivot().Position
            end
        end
        local function b31(c1)
            return tostring(c1):lower():gsub("[%s_%-]", "")
        end
        local function b32(c1, c2)
            if #c2 == 0 then
                return false
            end
            local c3 = {[1] = c1.Name, [2] = c1.ObjectText, [3] = c1.ActionText}
            local c4 = c1.Parent
            for c8 = 1, 4 do
                if not c4 or c4 == b3 then
                    break
                end
                table.insert(c3, c4.Name)
                c4 = c4.Parent
            end
            for c12, c13 in ipairs(c2) do
                local c14 = b31(c13)
                for c18, c19 in ipairs(c3) do
                    if c19 ~= "" and b31(c19):find(c14, 1, true) then
                        return true
                    end
                end
            end
            return false
        end
        local function b33(c1)
            local c2 = string.match(c1.ObjectText or "", "^%s*(.-)%s*$")
            if c2 and c2 ~= "" then
                return c2
            end
            local c3 = c1.Parent
            if c3 and c3.Name ~= "" and (c3:IsA("BasePart") or c3:IsA("Model") or c3:IsA("Attachment")) then
                return c3.Name
            end
            return c1.Name
        end
        local function b34(c1)
            local c2 = c1:FindFirstAncestorOfClass("Model")
            while c2 do
                if c2:FindFirstChildOfClass("Humanoid") then
                    return true
                end
                c2 = c2.Parent and c2.Parent:FindFirstAncestorOfClass("Model") or nil
            end
            return false
        end
        local function b35(c1)
            local c2 = c1.Parent
            if c2 and c2:IsA("Attachment") then
                c2 = c2.Parent
            end
            if not c2 then
                return c1
            end
            if c2:IsA("BasePart") then
                local c3 = c2.Parent
                if c3 and c3:IsA("Model") and c3 ~= b3 and not c3:FindFirstChildOfClass("Humanoid") and #c3:GetDescendants() <= 80 then
                    return c3
                end
            end
            return c2
        end
        local b36 = {
            part = true,
            handle = true,
            model = true,
            mesh = true,
            meshpart = true,
            item = true,
            union = true,
            proximityprompt = true,
            folder = true,
            tool = true,
            items = true
        }
        local function b37(c1, c2)
            local c3 = b31(c1)
            if c2 == "" or c2 == c3 then
                return
            end
            local c4 = b10[c3]
            if not c4 then
                c4 = {}
                b10[c3] = c4
            end
            c4[c2] = true
        end
        local function b38(c1)
            local c2 = b7[c1]
            local c3 = os.clock()
            if not c2 or c3 - c2.at > b6.CacheTime then
                c2 = {at = c3, wl = b32(c1, b6.Whitelist), name = b33(c1), inChar = b34(c1), root = b35(c1)}
                b7[c1] = c2
                local c4 = b31(c2.root.Name)
                if #c4 >= 4 and not b36[c4] then
                    b37(c2.name, c4)
                end
            end
            return c2
        end
        local function b39(c1)
            if not c1.Parent or not c1:IsDescendantOf(b3) then
                return true
            end
            local c2 = b4.Character
            if c2 and c1:IsDescendantOf(c2) then
                return true
            end
            local c3 = b4:FindFirstChildOfClass("Backpack")
            if c3 and c1:IsDescendantOf(c3) then
                return true
            end
            return false
        end
        local function b40()
            return b3:FindFirstChild("Items") or b3
        end
        local function b41(c1)
            if c1 ~= b21 then
                b21 = c1
                for c5 in pairs(b18) do
                    b19[c5] = true
                end
                b18 = {}
            end
            for c9 in pairs(b19) do
                b19[c9] = nil
                if c9.Parent and c9:IsDescendantOf(b3) then
                    local c10 = b38(c9)
                    if not c10.inChar and (c10.wl or c9:IsDescendantOf(c1)) then
                        b18[c9] = true
                        if not b20[c9] then
                            b20[c9] = a39(c9:GetPropertyChangedSignal("Enabled"):Connect(function()
                                b22:Fire()
                                if c9.Enabled then
                                    b25:Fire(c9)
                                end
                            end))
                        end
                    end
                end
            end
        end
        local function b42()
            local c1 = {}
            local c2 = b40()
            b41(c2)
            for c6 in pairs(b18) do
                if c6.Parent and c6:IsDescendantOf(b3) then
                    local c7 = b38(c6)
                    if not c7.inChar and (c7.wl or c6.Enabled and c6:IsDescendantOf(c2)) then
                        table.insert(c1, {Prompt = c6, Name = c7.name, WL = c7.wl, Root = c7.root})
                    end
                end
            end
            return c1
        end
        local function b43(c1, c2)
            if not c2 then
                return false
            end
            for c6, c7 in ipairs(c2.points) do
                if (c1 - c7)["Magnitude"] < c2.radius then
                    return true
                end
            end
            return false
        end
        local function b44(c1, c2, c3)
            local c4 = c2 and b31(c2) or nil
            local c6 = math.huge
            local c5 = nil
            local c7 = os.clock()
            for c11, c12 in ipairs(b42()) do
                if not c4 or b31(c12.Name) == c4 then
                    local c13 = b30(c12.Prompt)
                    if c13 and not b43(c13, c3) then
                        local c14 = (c13 - c1)["Magnitude"]
                        local c15 = b9[c12.Prompt]
                        if c15 and c7 - c15 < b6.FailTimeout then
                            c14 = c14 + 1000000.0
                        end
                        if c12.WL and b6.PrioritizeWhitelist and not c4 then
                            c14 = c14 - 1000000000.0
                        end
                        if c14 < c6 then
                            c6 = c14
                            c5 = c12.Prompt
                        end
                    end
                end
            end
            return c5
        end
        local function b45()
            local c2 = {}
            local c1 = {}
            for c6, c7 in ipairs(b42()) do
                local c8 = c1[c7.Name]
                if not c8 then
                    c8 = {Name = c7.Name, Roots = {}, Action = c7.Prompt.ActionText}
                    c1[c7.Name] = c8
                    table.insert(c2, c8)
                    b8[c7.Name] = true
                end
                local c9 = c8.Roots[c7.Root]
                if not c9 then
                    c9 = {on = false}
                    c8.Roots[c7.Root] = c9
                end
                c9.on = c9.on or c7.Prompt.Enabled
            end
            table.sort(c2, function(d1, d2)
                return string.lower(d1.Name) < string.lower(d2.Name)
            end)
            local c10 = {}
            for c14, c15 in ipairs(c2) do
                local c17 = 0
                local c16 = 0
                for c21, c22 in pairs(c15.Roots) do
                    if c22.on then
                        c16 = c16 + 1
                    else
                        c17 = c17 + 1
                    end
                end
                local c23 = "x" .. c16
                if c17 > 0 then
                    c23 = c23 .. "  \194\183  " .. c17 .. " off"
                end
                if c15.Action and c15.Action ~= "" then
                    c23 = c23 .. "  \194\183  " .. c15.Action
                end
                table.insert(c10, {Name = c15.Name, Description = c23, Count = c16})
            end
            for c27 in pairs(b8) do
                if not c1[c27] then
                    table.insert(c10, {Name = c27, Description = "x0  \194\183  waiting for it to spawn", Count = 0})
                end
            end
            table.sort(c10, function(d1, d2)
                return string.lower(d1.Name) < string.lower(d2.Name)
            end)
            return c10
        end
        local function b46()
            local c1 = {}
            local c2 = b4.Character
            if c2 then
                for c6, c7 in ipairs(c2:GetChildren()) do
                    c1[c7] = true
                end
                local c8 = c2:FindFirstChild("SetAssets")
                if c8 then
                    for c12, c13 in ipairs(c8:GetChildren()) do
                        c1[c13] = true
                    end
                end
            end
            local c14 = b4:FindFirstChildOfClass("Backpack")
            if c14 then
                for c18, c19 in ipairs(c14:GetChildren()) do
                    c1[c19] = true
                end
            end
            return c1
        end
        local function b47(c1, c2)
            if c1 == c2 then
                return true
            end
            return #c1 >= 3 and #c2 >= 3 and (c1:find(c2, 1, true) ~= nil or c2:find(c1, 1, true) ~= nil)
        end
        local function b48(c1, c2, c3)
            local c4 = b31(c1.Name)
            if b47(c4, c2) then
                return true
            end
            if c3 then
                for c8 in pairs(c3) do
                    if b47(c4, c8) then
                        return true
                    end
                end
            end
            return false
        end
        local function b49(c1)
            local c2 = b31(c1)
            if #c2 < 3 then
                return false
            end
            local c3 = b10[c2]
            local c4 = b4.Character
            local c5 = b11[c2]
            if c5 then
                local c6 = b4:FindFirstChildOfClass("Backpack")
                if c5.Parent and (c4 and c5:IsDescendantOf(c4) or c6 and c5:IsDescendantOf(c6)) then
                    return true
                end
                b11[c2] = nil
            end
            if c4 then
                for c10, c11 in ipairs(c4:GetChildren()) do
                    if (c11:IsA("Tool") or c11:IsA("Accessory") or c11:IsA("Model") or c11:IsA("BasePart")) and b48(c11, c2, c3) then
                        return true
                    end
                end
                local c12 = c4:FindFirstChild("SetAssets")
                if c12 then
                    for c16, c17 in ipairs(c12:GetChildren()) do
                        if b48(c17, c2, c3) then
                            return true
                        end
                    end
                end
            end
            local c18 = b4:FindFirstChildOfClass("Backpack")
            if c18 then
                for c22, c23 in ipairs(c18:GetChildren()) do
                    if c23:IsA("Tool") and b48(c23, c2, c3) then
                        return true
                    end
                end
            end
            return false
        end
        local function b50(c1)
            local c2 = b4.Character
            if not c2 then
                return false
            end
            local c3 = b31(c1 or "")
            local c4 = c2:FindFirstChild("SetAssets")
            local c5 = c2:FindFirstChild("Info")
            local c6 = c5 and c5:FindFirstChild("Item")
            local c7 = c6 and c6:IsA("ObjectValue") and c6.Value or nil
            if c7 then
                if c3 == "" then
                    return true
                end
                if string.find(b31(c7.Name), c3, 1, true) or b48(c7, c3, b10[c3]) then
                    return true
                end
            elseif c6 and c6:IsA("ObjectValue") then
                return false
            end
            if c3 == "" then
                if c2:FindFirstChildOfClass("Tool") or c4 and #c4:GetChildren() > 0 then
                    return true
                end
                for c11 in pairs(b8) do
                    local c12 = b31(c11)
                    for c16, c17 in ipairs(c2:GetChildren()) do
                        if (c17:IsA("Accessory") or c17:IsA("Model") or c17:IsA("BasePart")) and b48(c17, c12, b10[c12]) then
                            return true
                        end
                    end
                end
                return false
            end
            if #c3 < 3 then
                return false
            end
            local c18 = b10[c3]
            local c19 = b11[c3]
            if c19 and c19.Parent and c19:IsDescendantOf(c2) then
                return true
            end
            for c23, c24 in ipairs(c2:GetChildren()) do
                if (c24:IsA("Tool") or c24:IsA("Accessory") or c24:IsA("Model") or c24:IsA("BasePart")) and b48(c24, c3, c18) then
                    return true
                end
            end
            if c4 then
                for c28, c29 in ipairs(c4:GetChildren()) do
                    if b48(c29, c3, c18) then
                        return true
                    end
                end
            end
            return false
        end
        local function b51(c1, c2)
            local c3 = b31(c2)
            local c4 = b10[c3]
            local function c5(d1)
                if not d1 then
                    return nil
                end
                for d5, d6 in ipairs(d1:GetChildren()) do
                    if not c1[d6] then
                        if d6:IsA("Tool") or d6:IsA("Accessory") then
                            return d6
                        end
                        if (d6:IsA("Model") or d6:IsA("BasePart")) and b48(d6, c3, c4) then
                            return d6
                        end
                    end
                end
                return nil
            end
            local c6 = c5(b4.Character) or c5(b4:FindFirstChildOfClass("Backpack"))
            if c6 then
                return c6
            end
            local c7 = b4.Character
            local c8 = c7 and c7:FindFirstChild("SetAssets")
            if c8 then
                local c9 = {}
                for c13, c14 in ipairs(c8:GetChildren()) do
                    if not c1[c14] then
                        table.insert(c9, c14)
                    end
                end
                for c18, c19 in ipairs(c9) do
                    if b48(c19, c3, c4) then
                        return c19
                    end
                end
                if #c9 == 1 then
                    return c9[1]
                end
            end
            return nil
        end
        local b52 = 0
        local function b53()
            if not b6.FixWideRanges then
                return
            end
            local c1 = os.clock()
            if c1 - b52 < 5 then
                return
            end
            b52 = c1
            for c5 in pairs(b7) do
                if c5.Parent and c5.MaxActivationDistance >= 1000 then
                    pcall(function()
                        c5.MaxActivationDistance = 10
                    end)
                end
            end
        end
        local function b54()
            local c1 = b3.CurrentCamera
            if not c1 then
                return
            end
            local c2 = c1.CameraSubject
            local c3 = b4.Character
            local c4 = c3 and c3:FindFirstChildOfClass("Humanoid")
            if c4 and (c2 == nil or c2:IsA("BasePart") and c2.Name == "RYOIKI_CamAnchor") then
                c1.CameraSubject = c4
            end
            for c8, c9 in ipairs(b3:GetChildren()) do
                if c9.Name == "RYOIKI_CamAnchor" and c9 ~= c1.CameraSubject then
                    c9:Destroy()
                end
            end
        end
        local function b55(c1, c2, c3, c4, c5)
            local function c6(d1)
                if c5 and c5 > 0 then
                    return Vector3.new(d1.X, -c5, d1.Z)
                end
                return d1
            end
            local c7 = b28()
            if not c7 then
                return false, "no character"
            end
            local c8 = c1 or b44(c7.Position, c2, c3)
            if not c8 or b39(c8) then
                return false, "not in the world right now"
            end
            local c9 = b30(c8)
            if not c9 then
                return false, "item has no position"
            end
            local c10 = b33(c8)
            local c11 = b31(c10)
            local c12 = b46()
            local c13 = c7.CFrame
            local c14 = typeof(fireproximityprompt) == "function"
            local c15 = (c9 - c13.Position)["Magnitude"]
            local c16 = c8.HoldDuration
            local c17 = c8.RequiresLineOfSight
            local c18 = c8.Enabled
            local c19 = c8.Exclusivity
            local c20 = c8.MaxActivationDistance
            local c21 = b14[c11] or 1
            if c21 > #b6.Phases then
                c21 = 1
            end
            local c22 = {fire = false, key = false, instant = true, offset = c6(Vector3.new(0, 3, 0)), stay = 0.5}
            local c23 = CFrame.new(c9 + c22.offset)
            local c24 = os.clock()
            b17 = {dist = c15, shown = false, phase = c21, t = 0, hold = c16, ping = 0, name = c10}
            if c15 > b6.StreamDistance then
                pcall(function()
                    b4:RequestStreamAroundAsync(c9, 0.2)
                end)
                if not c7.Parent or b39(c8) then
                    return false, "item disappeared"
                end
                c9 = b30(c8) or c9
            end
            b54()
            local c25 = b3.CurrentCamera
            local c26 = Instance.new("Part")
            c26.Name = "RYOIKI_CamAnchor"
            c26.Anchored = true
            c26.CanCollide = false
            c26.CanQuery = false
            c26.CanTouch = false
            c26.Transparency = 1
            c26.Size = Vector3.new(0.2, 0.2, 0.2)
            c26.CFrame = c25.Focus
            c26.Parent = b3
            c25.CameraSubject = c26
            pcall(function()
                c8.Enabled = true
                c8.RequiresLineOfSight = false
                c8.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
                c8.MaxActivationDistance = math.max(c20, b6.MinActivation)
            end)
            local c28 = false
            local c27 = {}
            local function c29()
                if c28 then
                    return
                end
                c28 = true
                for d4 in pairs(b7) do
                    if d4 ~= c8 and d4.Parent then
                        local d5, d6 = pcall(function()
                            return d4.Enabled
                        end)
                        if d5 and d6 then
                            local d7 = b30(d4)
                            if d7 and (d7 - c9)["Magnitude"] < b6.IsolateRadius then
                                pcall(function()
                                    d4.Enabled = false
                                end)
                                table.insert(c27, d4)
                            end
                        end
                    end
                end
            end
            local c30 = c8.KeyboardKeyCode
            local c31 = false
            local function c32(d1)
                c31 = d1
                if b5 and c30 ~= Enum.KeyCode.Unknown then
                    pcall(function()
                        b5:SendKeyEvent(d1, c30, false, game)
                    end)
                else
                    pcall(function()
                        if d1 then
                            c8:InputHoldBegin()
                        else
                            c8:InputHoldEnd()
                        end
                    end)
                end
            end
            local c34 = nil
            local c33 = {}
            local c35 = b4.Character
            if c35 then
                for c39, c40 in ipairs(c35:GetDescendants()) do
                    if c40:IsA("BasePart") and c40.CanCollide then
                        c33[c40] = true
                    end
                end
                c34 = b1.Stepped:Connect(function()
                    for d4 in pairs(c33) do
                        if d4.Parent then
                            d4.CanCollide = false
                        end
                    end
                end)
            end
            local c42 = nil
            local c41 = nil
            local c46 = true
            local c45 = false
            local c44 = false
            local c43 = false
            local function c47(d1)
                if c43 then
                    return
                end
                c43 = true
                local d4, d3, d2 = ipairs(c27)
                while true do
                    local d6 = d4(d3, d2)
                    if d5 == nil then
                        break
                    end
                    d2 = d5
                    if d6.Parent then
                        pcall(function()
                            d6.Enabled = true
                        end)
                    end
                end
                if not d1 then
                    pcall(function()
                        c8.HoldDuration = c16
                        c8.RequiresLineOfSight = c17
                        c8.Enabled = c18
                        c8.Exclusivity = c19
                        c8.MaxActivationDistance = c20
                    end)
                end
            end
            local function c48()
                if c44 then
                    return
                end
                c44 = true
                c46 = false
                if c31 then
                    c32(false)
                end
                c47(b39(c8))
                if c41 then
                    c41:Disconnect()
                end
                if c42 then
                    c42:Disconnect()
                end
                if c34 then
                    c34:Disconnect()
                end
                for d4 in pairs(c33) do
                    if d4.Parent then
                        d4.CanCollide = true
                    end
                end
                if c25.CameraSubject == c26 or c25.CameraSubject == nil then
                    local d5 = b4.Character
                    local d6 = d5 and d5:FindFirstChildOfClass("Humanoid")
                    if d6 then
                        c25.CameraSubject = d6
                    end
                end
                c26:Destroy()
                b27 = nil
            end
            b27 = function()
                pcall(function()
                    if c7 and c7.Parent then
                        c7.CFrame = c13
                    end
                end)
                c48()
            end
            local function c49(d1)
                c21 = d1
                b17.phase = d1
                local d2 = b6.Phases[d1]
                c22.fire = d2.fire and c14
                c22.key = d2.key or not c14
                c22.instant = d2.instant
                c22.offset = c6(d2.offset)
                c22.stay = d2.stay
                if d2.isolate then
                    c29()
                end
                pcall(function()
                    if d2.instant then
                        c8.HoldDuration = c14 and 0 or b6.HoldOverride
                    else
                        c8.HoldDuration = c16
                    end
                end)
            end
            c49(c21)
            c23 = CFrame.new(c9 + c22.offset)
            local c53 = Vector3.zero
            local c52 = nil
            local c51 = nil
            local c50 = 0.1
            c41 = b1.Heartbeat:Connect(function()
                if not c45 and not b39(c8) then
                    local d1 = b30(c8)
                    if d1 then
                        local d2 = os.clock()
                        if c51 and d2 > c52 then
                            if (d1 - c51)["Magnitude"] > 40 then
                                c53 = Vector3.zero
                            else
                                c53 = c53:Lerp((d1 - c51) / (d2 - c52), 0.5)
                            end
                        end
                        c52 = d2
                        c51 = d1
                        local d3 = c53 * c50
                        if d3.Magnitude > b6.LeadMax then
                            d3 = d3.Unit * b6.LeadMax
                        end
                        c23 = CFrame.new(d1 + d3 + c22.offset)
                    end
                end
                if c7 and c7.Parent then
                    c7.CFrame = c23
                    c7.AssemblyLinearVelocity = Vector3.zero
                    c7.AssemblyAngularVelocity = Vector3.zero
                end
            end)
            local c54 = false
            c42 = b2.PromptShown:Connect(function(d1)
                if d1 == c8 then
                    c54 = true
                    b17.shown = true
                    b17.shownAt = b17.shownAt or os.clock() - c24
                end
            end)
            c7.CFrame = c23
            local c55 = os.clock()
            local c56 = 0
            pcall(function()
                c56 = b4:GetNetworkPing()
            end)
            c50 = math.clamp(c56 * 1.5 + 0.04, 0.04, 0.35)
            b17.ping = c56
            task.spawn(function()
                while c46 and not b39(c8) do
                    if c22.key and (c54 or os.clock() > c55 + b6.ShownWait) then
                        c32(true)
                        local d1 = nil
                        if c22.instant then
                            d1 = c14 and 0.06 or b6.HoldOverride + b6.HoldBuffer
                        else
                            d1 = c16 + 0.06
                        end
                        local d2 = os.clock() + d1
                        while c46 and c22.key and os.clock() < d2 and not b39(c8) do
                            b1.Heartbeat:Wait()
                        end
                        c32(false)
                        task.wait(0.03)
                    else
                        b1.Heartbeat:Wait()
                    end
                end
                if c31 then
                    c32(false)
                end
            end)
            local function c57()
                local d1 = c22.stay
                if not c22.instant then
                    d1 = math.max(d1, c16 + 0.5)
                end
                return d1 + c56 * 2
            end
            local c58 = os.clock() + c57()
            local c59 = b6.MaxStay
            if c4 then
                c59 = 0.3
                for c63, c64 in ipairs(b6.Phases) do
                    local c65 = c64.stay
                    if not c64.instant then
                        c65 = math.max(c65, c16 + 0.5)
                    end
                    c59 = c59 + c65 + c56 * 2
                end
            end
            local c66 = 0
            local c69 = false
            local c68 = false
            local c67 = false
            local c70 = {}
            local function c71()
                c66 = 0
            end
            local c72 = b4.Character
            local c73 = c72 and c72:FindFirstChild("SetAssets")
            local c74 = b4:FindFirstChildOfClass("Backpack")
            for c78, c79 in ipairs({[1] = c72 or false, [2] = c73 or false, [3] = c74 or false}) do
                if c79 then
                    table.insert(c70, c79.ChildAdded:Connect(c71))
                end
            end
            table.insert(c70, c8.Triggered:Connect(function()
                b17.trigAt = b17.trigAt or os.clock() - c24
            end))
            table.insert(c70, c8:GetPropertyChangedSignal("Enabled"):Connect(function()
                if not c8.Enabled then
                    b17.offAt = b17.offAt or os.clock() - c24
                end
            end))
            while not b13 do
                if b39(c8) then
                    b17.goneAt = os.clock() - c24
                    break
                end
                local c80 = os.clock()
                if c4 and b17.offAt then
                    c69 = true
                    break
                end
                if c80 - c24 > c59 then
                    break
                end
                if b28() ~= c7 then
                    c68 = true
                    break
                end
                if c80 >= c66 then
                    c66 = c80 + 0.08
                    if b51(c12, c10) then
                        c67 = true
                        b17.gainAt = os.clock() - c24
                        break
                    end
                end
                if c80 >= c58 then
                    c49(c21 % #b6.Phases + 1)
                    c58 = c80 + c57()
                end
                if c22.fire then
                    for c84 = 1, b6.FirePerCycle do
                        task.spawn(pcall, fireproximityprompt, c8)
                    end
                    task.wait(b6.FireInterval)
                else
                    b1.Heartbeat:Wait()
                end
            end
            c46 = false
            for c88, c89 in ipairs(c70) do
                c89:Disconnect()
            end
            if c31 then
                c32(false)
            end
            local c90 = b39(c8)
            c47(c90)
            b17.t = os.clock() - c24
            c45 = true
            c23 = c13
            pcall(function()
                c7.CFrame = c13
            end)
            task.wait(b6.ReturnHold)
            c48()
            if b13 then
                return false, "stopped"
            end
            if c68 then
                return false, "interrupted (you died or respawned)"
            end
            if c4 then
                if c69 or c90 then
                    b14[c11] = c21
                end
                return true, c8, c69 or c90, false
            end
            if not c90 and not c67 then
                return true, c8, false, false
            end
            local c91 = b4.Character
            local c92 = b4:FindFirstChildOfClass("Backpack")
            if c90 and (c91 and c8:IsDescendantOf(c91) or c92 and c8:IsDescendantOf(c92)) then
                b14[c11] = c21
                return true, c8, true, false
            end
            local c93 = false
            local c94 = os.clock() + b6.VerifyWait
            repeat
                local c95 = b51(c12, c10)
                if c95 then
                    c93 = true
                    b11[c11] = c95
                    local c96 = b31(c95.Name)
                    if (c95:IsA("Tool") or c95:IsA("Accessory")) and #c96 >= 3 and not b36[c96] then
                        b37(c10, c96)
                    end
                    break
                end
                task.wait(0.03)
            until os.clock() >= c94
            if not c93 and b49(c10) then
                c93 = true
            end
            if c93 then
                b14[c11] = c21
            end
            return true, c8, c93, not c93
        end
        local function b56(c1)
            return c1 and string.format("%.2f", c1) or "-"
        end
        local function b57()
            if b26 and os.clock() - b15 > b6.MaxStay + 10 then
                if b27 then
                    pcall(b27)
                end
                b54()
                b26 = false
            end
        end
        local function b58()
            b12 = 0
            for c4 in pairs(b9) do
                b9[c4] = nil
            end
            for c8 in pairs(b11) do
                b11[c8] = nil
            end
            if b27 then
                pcall(b27)
            end
            b54()
            local c9 = 0
            for c13, c14 in ipairs(b3:GetDescendants()) do
                b24(c14)
                c9 = c9 + 1
                if c9 % 2000 == 0 then
                    task.wait()
                end
            end
            for c18 in pairs(b7) do
                if not c18.Parent then
                    b7[c18] = nil
                    b18[c18] = nil
                end
            end
            b21 = nil
        end
        local function b59()
            if b26 then
                b13 = true
                if b27 then
                    pcall(b27)
                end
            end
            b54()
        end
        local function b60(c1, c2)
            b57()
            if b26 then
                return false, "busy"
            end
            b26 = true
            b15 = os.clock()
            b13 = false
            b53()
            local c4 = false
            local c3 = false
            local c5 = "not in the world right now"
            local c6 = nil
            local c7, c8, c9, c10, c11 = pcall(b55, nil, c1, c2)
            local c12 = nil
            if not c7 then
                c12 = string.format("%s | ERROR %s", tostring(c1), tostring(c8))
            elseif not c8 then
                c12 = string.format("%s | stopped: %s", tostring(c1), tostring(c9))
            else
                local c13 = b17
                c12 = string.format("%s | phase=%s dist=%.0f ping=%dms hold=%.2f | time=%.2fs shown@%s trig@%s off@%s gone@%s gain@%s | collected=%s vanished=%s", tostring(c1), tostring(c13.phase), c13.dist or 0, math.floor((c13.ping or 0) * 1000), c13.hold or 0, c13.t or 0, b56(c13.shownAt), b56(c13.trigAt), b56(c13.offAt), b56(c13.goneAt), b56(c13.gainAt), tostring(c10), tostring(c11))
            end
            table.insert(b16, c12)
            if #b16 > 30 then
                table.remove(b16, 1)
            end
            if not c7 then
                c5 = tostring(c8)
                if b27 then
                    pcall(b27)
                end
                b54()
            elseif not c8 then
                c5 = c9 or c5
            else
                c6 = c9
                if c10 then
                    c3 = true
                elseif c11 then
                    c4 = true
                    c5 = "it vanished before reaching your inventory"
                else
                    c5 = "could not collect it in " .. b6.MaxStay .. "s"
                end
            end
            if c6 then
                b9[c6] = not c3 and not c4 and os.clock() or nil
            end
            local c14 = c5 == "not in the world right now" or c5 == "stopped" or string.find(c5, "interrupted", 1, true) ~= nil
            if c3 then
                b12 = 0
            elseif not c4 and not c14 then
                b12 = b12 + 1
                if b12 >= 3 then
                    pcall(b58)
                    task.wait(0.5)
                    c5 = c5 .. " (reset and re-scanned)"
                end
            end
            b26 = false
            b13 = false
            if c3 then
                return true, b17.name
            end
            return false, c5
        end
        local function b61(c1, c2)
            b57()
            if b26 then
                return false, "busy"
            end
            b26 = true
            b15 = os.clock()
            b13 = false
            local c3, c4, c5, c6 = pcall(b55, c1, b33(c1), nil, true, c2)
            if not c3 then
                if b27 then
                    pcall(b27)
                end
                b54()
            end
            b26 = false
            b13 = false
            if not c3 then
                return false, tostring(c4)
            end
            if not c4 then
                return false, tostring(c5)
            end
            return c6 == true, c6 and "opened" or "it did not react"
        end
        local function b62()
            local c1 = {}
            for c5, c6 in ipairs({[1] = b4.Character, b4:FindFirstChildOfClass("Backpack")}) do
                if c6 then
                    for c10, c11 in ipairs(c6:GetChildren()) do
                        if c11:IsA("Tool") then
                            c1[c11] = true
                        end
                    end
                end
            end
            return c1
        end
        local function b63()
            local c2 = a50.keyrelease
            local c1 = a50.keypress
            if typeof(c1) == "function" and typeof(c2) == "function" then
                local c3 = pcall(c1, 8)
                task.wait(0.04)
                pcall(c2, 8)
                if c3 then
                    return true
                end
            end
            if not b5 then
                return false
            end
            local c4 = pcall(function()
                b5:SendKeyEvent(true, Enum.KeyCode.Backspace, false, game)
            end)
            task.wait(0.04)
            pcall(function()
                b5:SendKeyEvent(false, Enum.KeyCode.Backspace, false, game)
            end)
            return c4
        end
        local function b64(c1)
            if not b5 and typeof(a50.keypress) ~= "function" then
                return false, "executor can't press keys"
            end
            local c2 = os.clock() + 0.5
            while not b49(c1) and os.clock() < c2 do
                b1.Heartbeat:Wait()
            end
            local c3 = 0.1
            pcall(function()
                c3 = b4:GetNetworkPing()
            end)
            local c4 = os.clock() + math.clamp(c3 * 1.5 + 0.08, 0.12, 0.8)
            while os.clock() < c4 do
                local c5 = b4.Character
                local c6 = c5 and c5:FindFirstChild("HumanoidRootPart")
                if c6 then
                    c6.AssemblyLinearVelocity = Vector3.zero
                end
                b1.Heartbeat:Wait()
            end
            if not b49(c1) then
                b63()
                task.wait(0.1)
                b63()
                return true
            end
            for c10 = 1, 4 do
                b63()
                local c11 = os.clock() + 0.25
                while os.clock() < c11 do
                    if not b49(c1) then
                        return true
                    end
                    b1.Heartbeat:Wait()
                end
            end
            return false, "Backspace did not drop it"
        end
        local function b65(c1, c2)
            local c3 = b30(c1)
            local c4 = b29(c1)
            local c5 = c3 and c2 and c3.Y - c2.Y or 0
            return string.format("%s | enabled=%s hold=%.2f maxdist=%.0f | y=%.0f dy=%.0f | anchored=%s | failed_before=%s", c1:GetFullName(), tostring(c1.Enabled), c1.HoldDuration, c1.MaxActivationDistance, c3 and c3.Y or 0, c5, c4 and tostring(c4.Anchored) or "?", tostring(b9[c1] ~= nil))
        end
        local function b66(c1)
            local c2 = {}
            local function c3(d1)
                table.insert(c2, d1)
            end
            local c4 = b28()
            local c5 = c4 and c4.Position
            c3("RYOIKI ITEM REPORT  place=" .. tostring(game.PlaceId) .. "  time=" .. os.date("%H:%M:%S"))
            c3("player: " .. (c5 and string.format("%.0f %.0f %.0f", c5.X, c5.Y, c5.Z) or "no character"))
            c3("selected: " .. tostring(c1))
            if c1 then
                local c6 = {}
                for c10 in pairs(b10[b31(c1)] or {}) do
                    table.insert(c6, c10)
                end
                c3("holding: " .. tostring(b49(c1)) .. "   learned names: " .. (#c6 > 0 and table.concat(c6, ",") or "-"))
            end
            c3("-- character children")
            local c11 = b4.Character
            if c11 then
                for c15, c16 in ipairs(c11:GetChildren()) do
                    c3("  " .. c16.ClassName .. " " .. c16.Name)
                end
            end
            local c17 = c11 and c11:FindFirstChild("SetAssets")
            if c17 then
                c3("-- character SetAssets")
                for c21, c22 in ipairs(c17:GetChildren()) do
                    c3("  " .. c22.ClassName .. " " .. c22.Name)
                end
            end
            c3("-- backpack")
            local c23 = b4:FindFirstChildOfClass("Backpack")
            if c23 then
                for c27, c28 in ipairs(c23:GetChildren()) do
                    c3("  " .. c28.ClassName .. " " .. c28.Name)
                end
            end
            if c1 then
                c3("-- anything under the player whose name matches the selected item")
                local c30 = 0
                local c29 = b31(c1)
                for c34, c35 in ipairs(b4:GetDescendants()) do
                    if c30 < 15 and b47(b31(c35.Name), c29) then
                        c30 = c30 + 1
                        c3("  " .. c35.ClassName .. " " .. c35:GetFullName())
                    end
                end
                c3("-- prompts for the selected item")
                local c36 = 0
                for c40 in pairs(b7) do
                    if c36 < 15 and c40.Parent and b31(b33(c40)) == b31(c1) then
                        c36 = c36 + 1
                        c3("  " .. b65(c40, c5))
                    end
                end
            end
            c3("-- items in the list: name | count | lowest dy | highest dy")
            local c41 = {}
            for c45, c46 in ipairs(b42()) do
                local c47 = b30(c46.Prompt)
                local c48 = c47 and c5 and c47.Y - c5.Y or 0
                local c49 = c41[c46.Name]
                if not c49 then
                    c49 = {n = 0, lo = c48, hi = c48}
                    c41[c46.Name] = c49
                end
                c49.n = c49.n + 1
                c49.lo = math.min(c49.lo, c48)
                c49.hi = math.max(c49.hi, c48)
            end
            for c53, c54 in pairs(c41) do
                c3(string.format("  %s | %d | %.0f | %.0f", c53, c54.n, c54.lo, c54.hi))
            end
            c3("-- last grab attempts (oldest first)")
            for c58, c59 in ipairs(b16) do
                c3("  " .. c59)
            end
            return table.concat(c2, "\n")
        end
        return {
            Config = b6,
            Scan = b45,
            Grab = b60,
            Drop = b64,
            Tools = b62,
            Holding = b49,
            InHand = b50,
            Report = b66,
            Stop = b59,
            FixCamera = b54,
            WaitForSpawn = function(c1, c2)
                local c3 = b31(c1)
                local c4 = coroutine.running()
                local c6 = nil
                local c5 = false
                local function c7(d1)
                    if c5 then
                        return
                    end
                    c5 = true
                    c6:Disconnect()
                    task.spawn(c4, d1)
                end
                c6 = b25.Event:Connect(function(d1)
                    if b31(b33(d1)) == c3 then
                        c7(true)
                    end
                end)
                task.delay(c2, c7, false)
                return coroutine.yield()
            end,
            IsBusy = function()
                b57()
                return b26
            end,
            Changed = b22,
            Open = b61,
            PosOf = b30,
            SetPromptHook = function(c1)
                b23 = c1
                for c5 in pairs(b7) do
                    c1(c5)
                end
            end
        }
    end)()
    local a148 = (function()
        local b1 = game:GetService("Workspace")
        local b2 = Players.LocalPlayer
        local b3 = {Keywords = {[1] = "door", [2] = "open"}, Tries = 3, Gap = 0, Hide = false, Depth = 6}
        local b5 = {}
        local b4 = {}
        local b8 = false
        local b7 = false
        local b6 = false
        local function b9(c1)
            return tostring(c1):lower():gsub("[%s_%-]", "")
        end
        local function b10(c1)
            local c2 = {[1] = c1.Name, [2] = c1.ObjectText, [3] = c1.ActionText}
            local c3 = c1.Parent
            for c7 = 1, 4 do
                if not c3 or c3 == b1 then
                    break
                end
                table.insert(c2, c3.Name)
                c3 = c3.Parent
            end
            for c11, c12 in ipairs(c2) do
                local c13 = b9(c12)
                if c13 ~= "" then
                    for c17, c18 in ipairs(b3.Keywords) do
                        if string.find(c13, c18, 1, true) then
                            return true
                        end
                    end
                end
            end
            return false
        end
        a147.SetPromptHook(function(c1)
            local c2 = b1:FindFirstChild("Items")
            if not (c2 and c1:IsDescendantOf(c2)) and b10(c1) then
                b4[c1] = true
            end
        end)
        local function b11(c1)
            local c3 = math.huge
            local c2 = nil
            local c4 = b2.Character
            for c8 in pairs(b4) do
                if not c8.Parent or not c8:IsDescendantOf(b1) then
                    b4[c8] = nil
                    b5[c8] = nil
                elseif c8.Enabled and not (c4 and c8:IsDescendantOf(c4)) and (b5[c8] or 0) < b3.Tries then
                    local c9 = a147.PosOf(c8)
                    if c9 then
                        local c10 = (c9 - c1)["Magnitude"]
                        if c10 < c3 then
                            c3 = c10
                            c2 = c8
                        end
                    end
                end
            end
            return c2
        end
        local function b12(c1)
            if c1.ObjectText ~= "" then
                return c1.ObjectText
            end
            local c2 = c1:FindFirstAncestorOfClass("Model")
            return c2 and c2.Name or c1.Parent and c1.Parent.Name or c1.Name
        end
        local function b13()
            local c1 = b2.Character
            local c2 = c1 and c1:FindFirstChildOfClass("Humanoid")
            local c3 = c1 and c1:FindFirstChild("HumanoidRootPart")
            if c2 and c3 and c2.Health > 0 then
                return c3
            end
        end
        local function b14(c1)
            b6 = true
            local c2, c3 = a147.Open(c1, b3.Hide and b3.Depth or nil)
            b6 = false
            if c2 then
                b5[c1] = nil
            elseif c3 ~= "busy" then
                b5[c1] = (b5[c1] or 0) + 1
            end
            return c2, c3
        end
        local b15 = {Config = b3}
        b15.Count = function()
            local c1 = 0
            for c5 in pairs(b4) do
                if c5.Parent and c5.Enabled and (b5[c5] or 0) < b3.Tries then
                    c1 = c1 + 1
                end
            end
            return c1
        end
        b15.OpenNearest = function()
            if b6 or a147.IsBusy() then
                return false, "busy"
            end
            local c1 = b13()
            if not c1 then
                return false, "no character"
            end
            b5 = {}
            local c2 = b11(c1.Position)
            if not c2 then
                return false, "no doors found"
            end
            local c3 = b12(c2)
            local c5 = nil
            local c4 = nil
            for c9 = 1, b3.Tries do
                c4, c5 = b14(c2)
                if c4 or not c2.Parent then
                    break
                end
            end
            return c4, c4 and c3 or c3 .. ": " .. tostring(c5)
        end
        b15.SetAuto = function(c1)
            b7 = c1
            if not c1 or b8 then
                return
            end
            b5 = {}
            b8 = true
            task.spawn(function()
                local d2 = 0
                local d1 = 0
                a72("Auto Door: looking for doors", "accent")
                while b7 and a37 do
                    local d3 = b13()
                    if not d3 or b6 or a147.IsBusy() then
                        task.wait(0.05)
                    else
                        local d4 = b11(d3.Position)
                        if d4 then
                            d2 = 0
                            local d5 = b12(d4)
                            local d6, d7 = b14(d4)
                            if d6 then
                                d1 = d1 + 1
                                a72("Auto Door: opened " .. d5 .. " (" .. d1 .. ")", "accent")
                            elseif (b5[d4] or 0) >= b3.Tries then
                                a72("Auto Door: skipped " .. d5 .. " (" .. tostring(d7) .. ")", "warn")
                            else
                                a72("Auto Door: " .. d5 .. " " .. tostring(d7) .. ", trying again", "warn")
                            end
                            if b3.Gap > 0 then
                                task.wait(b3.Gap)
                            end
                        else
                            d2 = d2 + 1
                            if d2 == 1 then
                                a72("Auto Door: waiting for doors (opened " .. d1 .. ")", "ok")
                            end
                            if d2 % 15 == 0 then
                                b5 = {}
                            end
                            task.wait(0.2)
                        end
                    end
                end
                b8 = false
            end)
        end
        return b15
    end)()
    local function a149(b1)
        local b2 = game:GetService("RunService")
        local b3 = game:GetService("Workspace")
        local b4 = Players.LocalPlayer
        local b5 = {Height = b1.Height, Speed = b1.Speed, Freeze = b1.Freeze == true}
        local b6 = b1.Label or "Sky Platform"
        local b10 = nil
        local b9 = nil
        local b8 = nil
        local b7 = nil
        local b13 = nil
        local b12 = nil
        local b11 = nil
        local b14 = 0
        local b15 = {Config = b5}
        local function b16()
            if b11 then
                b11:Disconnect()
                b11 = nil
            end
            if b12 and b12.Parent then
                b12.Anchored = false
            end
            b13 = nil
            b12 = nil
        end
        local function b17(c1)
            b16()
            b13 = c1.Position
            b12 = c1
            c1.AssemblyLinearVelocity = Vector3.zero
            c1.Anchored = true
            b11 = b2.Heartbeat:Connect(function()
                if not c1.Parent or not b5.Freeze then
                    b16()
                    return
                end
                if not c1.Anchored then
                    c1.Anchored = true
                end
                if (c1.Position - b13)["Magnitude"] > 0.5 then
                    c1.CFrame = CFrame.new(b13) * c1.CFrame.Rotation
                end
                c1.AssemblyLinearVelocity = Vector3.zero
            end)
        end
        local function b18()
            local c1 = b4.Character
            local c2 = c1 and c1:FindFirstChildOfClass("Humanoid")
            local c3 = c1 and c1:FindFirstChild("HumanoidRootPart")
            if c2 and c3 and c2.Health > 0 then
                return c1, c2, c3
            end
        end
        local function b19(c1, c2)
            local c3 = c1.RigType == Enum.HumanoidRigType.R15 and c1.HipHeight or 2
            return c2.Size.Y / 2 + c3
        end
        local function b20()
            if b8 then
                b8:Disconnect()
                b8 = nil
            end
            if b10 then
                b10:Destroy()
                b10 = nil
            end
            if b9 then
                b9:Destroy()
                b9 = nil
            end
        end
        local function b21()
            if b7 then
                b7:Destroy()
                b7 = nil
            end
        end
        local function b22(c1, c2)
            b20()
            b9 = Instance.new("Attachment")
            b9.Name = "RYOIKI_Sky"
            b9.Parent = c1
            b10 = Instance.new("LinearVelocity")
            b10.Name = "RYOIKI_Sky"
            b10.Attachment0 = b9
            b10.MaxForce = math.huge
            b10.RelativeTo = Enum.ActuatorRelativeTo.World
            b10.VelocityConstraintMode = Enum.VelocityConstraintMode.Line
            b10.LineDirection = Vector3.new(0, 1, 0)
            b10.LineVelocity = c2
            b10.Parent = c1
        end
        local function b23(c1, c2)
            b21()
            local c3 = Instance.new("Part")
            c3.Name = "RYOIKI_SkyPlatform"
            c3.Anchored = true
            c3.CanCollide = true
            c3.CanQuery = false
            c3.CanTouch = false
            c3.Size = Vector3.new(40, 1, 40)
            c3.Material = Enum.Material.ForceField
            c3.Color = a32.Accent
            c3.Transparency = 0.3
            c3.CFrame = CFrame.new(c2.Position - Vector3.new(0, b19(c1, c2) + 0.5, 0))
            c3.Parent = b3
            b7 = c3
        end
        b15.Up = function()
            local c3 = b18()
            if not c3 then
                return false, "no character"
            end
            b14 = b14 + 1
            local c4 = b14
            b16()
            b21()
            local c5 = c3.Position.Y + b5.Height
            b22(c3, b5.Speed)
            b8 = b2.Heartbeat:Connect(function()
                if b14 ~= c4 then
                    return
                end
                local d1, d2, d3 = b18()
                if d3 ~= c3 then
                    b20()
                    return
                end
                if c3.Position.Y >= c5 then
                    b20()
                    c3.AssemblyLinearVelocity = Vector3.zero
                    b23(d2, c3)
                    if b5.Freeze then
                        b17(c3)
                    end
                    a72(b6 .. ": up at " .. math.floor(c3.Position.Y) .. (b5.Freeze and " (frozen)" or ""), "accent")
                end
            end)
            return true
        end
        b15.Down = function(c1)
            b14 = b14 + 1
            local c2 = b14
            b16()
            b20()
            b21()
            if c1 then
                return
            end
            local c5 = b18()
            if not c5 then
                return
            end
            local c6 = RaycastParams.new()
            c6.FilterType = Enum.RaycastFilterType.Exclude
            c6.FilterDescendantsInstances = {[1] = c3}
            b22(c5, -b5.Speed)
            local c7 = os.clock()
            b8 = b2.Heartbeat:Connect(function()
                if b14 ~= c2 then
                    return
                end
                local d1, d2, d3 = b18()
                if d3 ~= c5 or os.clock() - c7 > 120 then
                    b20()
                    return
                end
                if b10 and b5.Speed > 80 and b3:Raycast(c5.Position, Vector3.new(0, -b5.Speed * 0.5, 0), c6) then
                    b10.LineVelocity = -80
                end
                local d4 = b3:Raycast(c5.Position, Vector3.new(0, -(b19(d2, c5) + 4), 0), c6)
                if d4 or d2.FloorMaterial ~= Enum.Material.Air then
                    b20()
                    c5.AssemblyLinearVelocity = Vector3.zero
                    a72(b6 .. ": back down", "ok")
                end
            end)
        end
        b15.SetFreeze = function(c1)
            b5.Freeze = c1
            if not c1 then
                b16()
            elseif b7 and not b11 then
                local c2, c3, c4 = b18()
                if c4 then
                    b17(c4)
                end
            end
        end
        a39(b4.CharacterAdded:Connect(function()
            b15.Down(true)
            if b15.OnReset then
                pcall(b15.OnReset)
            end
        end))
        return b15
    end
    local a150 = a149({Height = 1100, Speed = 80, Label = "Sky Platform"})
    local a151 = a149({Height = 10000, Speed = 1000, Freeze = true, Label = "Auto Farm"})
    local a152 = {Interval = 0.1, IdleInterval = 1}
    local a153 = {
        Scan = function()
            return a147.Scan()
        end,
        AutoItem = function(b1)
        
        end
    }
    local a154 = false
    local a155 = function()
    
    end
    local a156 = function()
    
    end
    local a157 = nil
    local a158 = function()
    
    end
    local function a159(b1)
        if a147.IsBusy() then
            a67("Item Menu", "Still working, hold on.", 2)
            return
        end
        if a147.Holding(b1) then
            a67("Item Menu", "You already have " .. b1 .. ".", 3)
            a72("Already holding " .. b1, "ok")
            return
        end
        task.spawn(function()
            local c1, c2 = a147.Grab(b1)
            a158()
            if c1 then
                a67("Item Menu", "Collected " .. b1 .. ".", 3)
                a72("Collected " .. b1, "accent")
            else
                local c3 = "Could not get " .. b1 .. " (" .. tostring(c2) .. ")."
                a67("Item Menu", c3, 4)
                a72(c3, "warn")
            end
        end)
    end
    local a161 = false
    local a160 = false
    local function a162(b1)
        a160 = b1
        if not b1 or a161 then
            return
        end
        if not a157 then
            a67("Auto Item", "Select an item first. Auto Item only grabs the selected one.", 4)
        end
        a161 = true
        task.spawn(function()
            while a160 and a37 do
                local c1 = a152.Interval
                local c2 = a157
                if c2 and not a147.IsBusy() then
                    if a147.Holding(c2) then
                        c1 = a152.IdleInterval
                        a72("Auto Item: already holding " .. c2, "ok")
                    else
                        local c3, c4 = a147.Grab(c2)
                        a158()
                        if c3 then
                            a72("Auto Item: collected " .. c2, "accent")
                        elseif c4 == "not in the world right now" then
                            a72("Auto Item: waiting for " .. c2 .. " to spawn", "ok")
                            a147.WaitForSpawn(c2, a152.IdleInterval)
                            c1 = 0
                        elseif c4 then
                            a72("Auto Item: " .. tostring(c4), "warn")
                        end
                    end
                end
                task.wait(c1)
            end
            a161 = false
        end)
    end
    a153.AutoItem = a162
    local a163 = a40("CanvasGroup", {
        Name = "ItemMenu",
        BackgroundColor3 = a32.Background,
        Position = UDim2.fromOffset(130, 32),
        Size = UDim2.fromOffset(470, 326),
        GroupTransparency = 1,
        Visible = false,
        Active = true,
        Parent = a84
    })
    a40("TextLabel", {
        Text = "ITEM MENU",
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(16, 6),
        Size = UDim2.fromOffset(200, 20),
        Parent = a163
    })
    local a164 = a40("TextLabel", {
        TextSize = 10,
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
        Position = UDim2.fromOffset(16, 26),
        Size = UDim2.fromOffset(208, 14),
        Parent = a163
    })
    a40("Frame", {
        BackgroundColor3 = a32.Stroke,
        Position = UDim2.fromOffset(0, 44),
        Size = UDim2.new(1, 0, 0, 1),
        Parent = a163
    })
    local function a165()
        if not a154 then
            return
        end
        a154 = false
        local b1 = a41(a163, 0.15, {GroupTransparency = 1})
        b1.Completed:Once(function()
            if not a154 then
                a163.Visible = false
            end
        end)
    end
    local a166 = a40("ScrollingFrame", {
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(0, 116),
        Size = UDim2.new(1, 0, 1, -116),
        ScrollBarThickness = 3,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(),
        Parent = a163
    })
    a35(a166, "ScrollBarImageColor3")
    a40("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder, Parent = a166})
    a40("UIPadding", {
        PaddingLeft = UDim.new(0, 16),
        PaddingRight = UDim.new(0, 16),
        PaddingTop = UDim.new(0, 8),
        PaddingBottom = UDim.new(0, 12),
        Parent = a166
    })
    local a167 = {}
    local a168 = 0
    V.a169 = nil
    V.a170 = nil
    V.a171 = a40("Frame", {
        BackgroundColor3 = a32.Panel,
        Position = UDim2.fromOffset(232, 10),
        Size = UDim2.fromOffset(144, 24),
        Parent = a163
    })
    V.a172 = a49(V.a171, a32.Stroke)
    V.a170 = a40("TextBox", {
        BackgroundTransparency = 1,
        PlaceholderText = "FILTER...",
        PlaceholderColor3 = a32.Muted,
        ClearTextOnFocus = false,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
        Size = UDim2.fromScale(1, 1),
        Parent = V.a171
    })
    a40("UIPadding", {PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), Parent = V.a170})
    V.a173 = false
    a34(function()
        V.a172.Color = V.a173 and a32.Accent or a32.Stroke
    end)
    V.a170.Focused:Connect(function()
        V.a173 = true
        a41(V.a172, 0.12, {Color = a32.Accent})
    end)
    V.a170.FocusLost:Connect(function()
        V.a173 = false
        a41(V.a172, 0.12, {Color = a32.Stroke})
    end)
    V.a174 = function()
        local b1 = string.lower(V.a170.Text)
        for b5, b6 in pairs(a167) do
            b6.Frame.Visible = b1 == "" or string.find(string.lower(b5), b1, 1, true) ~= nil
        end
    end
    V.a170:GetPropertyChangedSignal("Text"):Connect(V.a174)
    V.a175 = function()
        a164.Text = tostring(a168) .. " ITEMS" .. (a157 and "  \194\183  SELECTED: " .. string.upper(a157) or "")
    end
    V.a176 = function()
        V.a175()
        if V.a169 then
            V.a169()
        end
        for b4, b5 in pairs(a167) do
            local b6 = b4 == a157
            b5.Stroke.Color = b6 and a32.Accent or a32.Stroke
            b5.Frame.BackgroundColor3 = b6 and a32.Lift or a32.Panel
            local b7 = b5.Badge
            if b7 then
                b7.Stroke.Color = b7.Lit and a32.Accent or a32.Stroke
                b7.Label.TextColor3 = b7.Lit and a32.Accent or a32.Muted
            end
        end
    end
    a34(V.a176)
    V.a177 = function(b1)
        local b2 = a166.CanvasPosition
        for b6, b7 in ipairs(a166:GetChildren()) do
            if b7:IsA("Frame") or b7:IsA("TextLabel") then
                b7:Destroy()
            end
        end
        a167 = {}
        b1 = b1 or {}
        a168 = 0
        for b11, b12 in ipairs(b1) do
            a168 = a168 + (type(b12) == "table" and b12.Count or 1)
        end
        if a157 then
            local b13 = false
            for b17, b18 in ipairs(b1) do
                local b19 = type(b18) == "string" and b18 or b18.Name
                if b19 == a157 then
                    b13 = true
                end
            end
            if not b13 then
                a157 = nil
            end
        end
        V.a175()
        if #b1 == 0 then
            a40("TextLabel", {
                Text = "No items detected. Press Refresh (or get closer to some).",
                TextColor3 = a32.Muted,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = UDim2.new(1, 0, 0, 24),
                Parent = a166
            })
            return
        end
        for b23, b24 in ipairs(b1) do
            if type(b24) == "string" then
                b24 = {Name = b24}
            end
            local b25 = b24.Name or "Item"
            local b26 = b24.Count
            local b27 = b26 == 0
            local b28 = a40("Frame", {BackgroundColor3 = a32.Panel, Size = UDim2.new(1, -6, 0, 42), LayoutOrder = b23, Parent = a166})
            local b29 = a49(b28, a32.Stroke)
            a167[b25] = {Frame = b28, Stroke = b29}
            a40("TextLabel", {
                Text = b25,
                Font = Enum.Font.GothamBold,
                TextSize = 12,
                TextColor3 = b27 and a32.Muted or a32.Text,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(12, 6),
                Size = UDim2.new(1, -70, 0, 16),
                Parent = b28
            })
            a40("TextLabel", {
                Text = b24.Description or "",
                TextColor3 = a32.Muted,
                TextTransparency = b27 and 0.4 or 0,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(12, 23),
                Size = UDim2.new(1, -70, 0, 14),
                Parent = b28
            })
            if b26 then
                local b30 = a40("Frame", {
                    BackgroundColor3 = a32.Background,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    Size = UDim2.fromOffset(40, 20),
                    Parent = b28
                })
                local b31 = a49(b30, a32.Stroke)
                local b32 = a40("TextLabel", {
                    Text = "x" .. tostring(b26),
                    Font = Enum.Font.GothamBold,
                    TextColor3 = a32.Muted,
                    Size = UDim2.fromScale(1, 1),
                    Parent = b30
                })
                a167[b25].Badge = {Stroke = b31, Label = b32, Lit = not b27}
            end
            local b33 = a40("TextButton", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Parent = b28})
            b33.MouseButton1Click:Connect(function()
                if a157 == b25 then
                    a157 = nil
                else
                    a157 = b25
                end
                V.a176()
                a72(a157 and "Selected: " .. b25 or "Selection cleared", "ok")
            end)
        end
        V.a176()
        V.a174()
        task.defer(function()
            a166.CanvasPosition = b2
        end)
    end
    V.a178 = nil
    V.a179 = function(b1)
        local b2, b3 = pcall(function()
            return a153.Scan()
        end)
        if b2 and b3 then
            local b5 = 0
            local b4 = {}
            for b9, b10 in ipairs(b3) do
                b5 = b5 + (b10.Count or 1)
                table.insert(b4, b10.Name .. ":" .. tostring(b10.Description))
            end
            local b11 = table.concat(b4, "|")
            if b1 or b11 ~= V.a178 then
                V.a178 = b11
                V.a177(b3)
            end
            if b1 then
                a72("Found " .. b5 .. " items in " .. #b3 .. " types", "accent")
            end
        elseif not b2 and b1 then
            a67("Error", "Scan failed: " .. tostring(b3), 4)
            a72("Scan failed: " .. tostring(b3), "warn")
        end
    end
    task.spawn(function()
        while a37 do
            task.wait(1.5)
            if a154 then
                V.a179(false)
            end
        end
    end)
    a158 = function()
        if a154 then
            task.spawn(V.a179, false)
        end
    end
    V.a180 = false
    a39(a147.Changed.Event:Connect(function()
        if not a154 or V.a180 then
            return
        end
        V.a180 = true
        task.delay(0.1, function()
            V.a180 = false
            if a154 then
                V.a179(false)
            end
        end)
    end))
    V.a181 = a74(a163, "Close", a165)
    V.a181.AnchorPoint = Vector2.new(1, 0)
    V.a181.Position = UDim2.new(1, -16, 0, 10)
    V.a181.Size = UDim2.fromOffset(70, 24)
    V.a182 = a74(a163, "Get", function()
        if not a157 then
            a67("Item Menu", "Click an item row first (it highlights).", 3)
            return
        end
        a159(a157)
    end)
    V.a182.Position = UDim2.fromOffset(16, 52)
    V.a182.Size = UDim2.fromOffset(96, 26)
    V.a183 = a74(a163, "Refresh", function()
        task.spawn(V.a179, true)
    end)
    V.a183.Position = UDim2.fromOffset(120, 52)
    V.a183.Size = UDim2.fromOffset(96, 26)
    a40("TextLabel", {
        Text = "AUTO ITEM",
        Font = Enum.Font.GothamBold,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(328, 52),
        Size = UDim2.fromOffset(62, 26),
        Parent = a163
    })
    V.a185 = a75(a163, false, function(b1)
        a73("Auto Item", a153.AutoItem, b1)
        a72("Auto Item: " .. (b1 and "ON" or "OFF"), b1 and "accent" or "ok")
    end)
    a184.Position = UDim2.fromOffset(392, 54)
    a184.Size = UDim2.fromOffset(72, 22)
    V.a186 = false
    V.a187 = 0
    V.a188 = nil
    V.a169 = function()
        if not V.a188 then
            return
        end
        if V.a186 then
            V.a188.Text = "BRINGING... (" .. V.a187 .. ")  \194\183  CLICK TO STOP"
        else
            V.a188.Text = string.upper(a157 and "Bring " .. a157 or "Bring All")
        end
    end
    V.a188 = a74(a163, "Bring All", function()
        if V.a186 then
            V.a186 = false
            a147.Stop()
            V.a169()
            return
        end
        if a147.IsBusy() then
            a67("Item Menu", "Still working, hold on.", 2)
            return
        end
        local b1 = Players.LocalPlayer.Character
        local b2 = b1 and b1:FindFirstChild("HumanoidRootPart")
        if not b2 then
            a67("Item Menu", "No character.", 3)
            return
        end
        V.a185.Set(false)
        a162(false)
        local b3 = a157
        local b4 = b3 or "items"
        local b5 = {radius = 14, points = {[1] = b2.Position}}
        V.a186 = true
        V.a187 = 0
        V.a169()
        a72("Bringing " .. b4 .. "...", "accent")
        task.spawn(function()
            local c2 = nil
            local c1 = 0
            while V.a186 and a37 do
                local c3 = a147.Tools()
                local c4, c5 = a147.Grab(b3, b5)
                if not V.a186 then
                    break
                end
                if c4 then
                    local c6, c7 = a147.Drop(c5 or b3, c3)
                    if not c6 then
                        c2 = "could not drop " .. tostring(c5 or b3) .. " (" .. tostring(c7) .. ")"
                        break
                    end
                    local c8 = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if c8 then
                        table.insert(b5.points, c8.Position)
                    end
                    V.a187 = V.a187 + 1
                    c1 = 0
                    V.a169()
                    a158()
                elseif c5 == "not in the world right now" or c5 == "stopped" then
                    break
                else
                    c1 = c1 + 1
                    if c1 >= 3 then
                        c2 = tostring(c5)
                        break
                    end
                end
            end
            V.a186 = false
            V.a169()
            a158()
            local c9 = "Brought " .. V.a187 .. " " .. b4 .. (c2 and ", stopped: " .. c2 or ".")
            a67("Item Menu", c9, 4)
            a72(c9, c2 and "warn" or "accent")
        end)
    end)
    V.a188.Position = UDim2.fromOffset(16, 84)
    V.a188.Size = UDim2.fromOffset(438, 26)
    V.a169()
    V.a189 = a74(a163, "Stop", function()
        V.a186 = false
        V.a185.Set(false)
        a162(false)
        a147.Stop()
        a72("Stopped: Auto Item is off and the grab was cancelled", "warn")
        a67("Item Menu", "Stopped. Auto Item is off.", 3)
    end)
    V.a189.Position = UDim2.fromOffset(224, 52)
    V.a189.Size = UDim2.fromOffset(96, 26)
    V.a190 = false
    V.a191 = function()
        if a154 then
            a165()
            return
        end
        a155()
        a156()
        a154 = true
        a163.Position = UDim2.fromOffset(138, 32)
        a163.GroupTransparency = 1
        a163.Visible = true
        a41(a163, 0.2, {Position = UDim2.fromOffset(130, 32), GroupTransparency = 0})
        a72("Item Menu opened", "ok")
        if not V.a190 then
            V.a190 = true
            task.spawn(V.a179, true)
        end
    end
    V.a177({})
    V.a192 = function()
    
    end
    V.a193 = {
        [1] = "Key",
        [2] = "Home",
        [3] = "Halloween",
        [4] = "Roulette",
        [5] = "Fun",
        [6] = "Player",
        [7] = "Moveset",
        [8] = "AC Bypass",
        [9] = "Settings"
    }
    V.a195 = {}
    V.a194 = {}
    V.a196 = nil
    V.a197 = function(b1)
        local b2 = a40("CanvasGroup", {
            Name = b1,
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            Visible = false,
            Parent = a112
        })
        V.a194[b1] = b2
        return b2
    end
    V.a198 = function(b1)
        a132()
        if a100 then
            a100()
        end
        a165()
        V.a192()
        a155()
        a156()
        if V.a196 == b1 then
            return
        end
        local b2 = V.a194[V.a196]
        V.a196 = b1
        for b6, b7 in pairs(V.a195) do
            b7.Refresh(true)
        end
        if b2 then
            b2.Visible = false
        end
        local b8 = V.a194[b1]
        b8.Position = UDim2.fromOffset(18, 0)
        b8.GroupTransparency = 1
        b8.Visible = true
        a41(b8, 0.3, {Position = UDim2.fromOffset(0, 0), GroupTransparency = 0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    end
    V.a199 = {Key = "MAIN", Halloween = "GAME", ["AC Bypass"] = "SYSTEM"}
    V.a200 = {
        Key = 138925339454248,
        Home = 111698108113150,
        Halloween = 103313995170391,
        Roulette = 110972471201324,
        Fun = 81693699591659,
        Player = 70958681580736,
        Moveset = 90453205451656,
        ["AC Bypass"] = 130406539366143,
        Settings = 109500513217310
    }
    V.a203, V.a202, V.a201 = ipairs(V.a193)
    while true do
        local a205 = V.a203(V.a202, V.a201)
        if a204 == nil then
            break
        end
        V.a201 = a204
        local a206 = false
        if V.a199[a205] then
            local a207 = a40("TextLabel", {
                Text = V.a199[a205],
                Font = Enum.Font.GothamBold,
                TextSize = 9,
                TextColor3 = a32.Muted,
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -1, 0, 16),
                LayoutOrder = a204 * 2 - 1,
                Parent = a106
            })
            a40("UIPadding", {PaddingLeft = UDim.new(0, 12), PaddingTop = UDim.new(0, 4), Parent = a207})
        end
        local a208 = a40("TextButton", {
            Name = a205,
            Text = string.upper(a205),
            Font = Enum.Font.GothamBold,
            TextSize = a206 and 13 or 11,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundColor3 = a32.Lift,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, -1, 0, a206 and 40 or 25),
            LayoutOrder = a204 * 2,
            Parent = a106
        })
        if a206 then
            local a209 = a40("Frame", {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -1, 0, 9),
                LayoutOrder = a204 * 2 + 1,
                Parent = a106
            })
            a40("Frame", {
                BackgroundColor3 = a32.Stroke,
                Position = UDim2.fromOffset(14, 4),
                Size = UDim2.new(1, -28, 0, 1),
                Parent = a209
            })
        end
        a40("UIPadding", {PaddingLeft = UDim.new(0, 38), Parent = a208})
        local a210 = a40("Frame", {
            Position = UDim2.fromOffset(-38, 0),
            Size = UDim2.new(0, 2, 1, 0),
            BackgroundTransparency = 1,
            Parent = a208
        })
        local a211 = a40("Frame", {
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, -31, 0.5, 0),
            Size = UDim2.fromOffset(22, 22),
            BackgroundTransparency = 1,
            Parent = a208
        })
        local a212 = a40("ImageLabel", {
            Image = V.a200[a205] and "rbxassetid://" .. V.a200[a205] or "",
            ImageColor3 = a32.Muted,
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(16, 16),
            Parent = a211
        })
        local a213 = false
        local function a214(b1)
            local b2 = V.a196 == a205
            local b3 = b1 and 0.15 or 0
            a41(a208, b3, {BackgroundTransparency = b2 and 0 or 1, TextColor3 = (b2 or a213) and a32.Text or a32.Muted})
            a41(a210, b3, {BackgroundTransparency = b2 and 0 or 1, BackgroundColor3 = a32.Accent})
            a41(a211, b3, {BackgroundTransparency = b2 and 0 or 1, BackgroundColor3 = a32.Accent})
            a41(a212, b3, {ImageColor3 = b2 and a32.Background or a213 and a32.Text or a32.Muted})
        end
        V.a195[a205] = {Refresh = a214}
        a34(function()
            a214(false)
        end)
        a208.MouseEnter:Connect(function()
            a213 = true
            a214(true)
        end)
        a208.MouseLeave:Connect(function()
            a213 = false
            a214(true)
        end)
        a60.TouchLeave(a208, function()
            if a213 then
                a213 = false
                a214(true)
            end
        end)
        a208.MouseButton1Click:Connect(function()
            V.a198(a205)
        end)
    end
    V.a215 = {}
    V.a216 = nil
    V.a217 = function()
        local b1 = 0
        for b5, b6 in pairs(V.a215) do
            b1 = b1 + #b6.Cards
        end
        if V.a216 then
            V.a216.Text = tostring(b1)
        end
    end
    V.a218 = function(b1)
        local b2 = string.lower(b1.Search.Text)
        for b6, b7 in ipairs(b1.Cards) do
            local b8 = b2 == "" or string.find(string.lower(b7.Name), b2, 1, true) ~= nil or string.find(string.lower(b7.Desc), b2, 1, true) ~= nil
            if b1.Mode and b1.Mode ~= "ALL" and b7.Mode and b7.Mode ~= b1.Mode then
                b8 = false
            end
            b7.Frame.Visible = b8
        end
    end
    V.a219 = function(b1, b2, b3)
        local b4 = b2.Name or "Feature"
        local b5 = a40("Frame", {Name = b4, BackgroundColor3 = a32.Panel, LayoutOrder = b3, Parent = b1})
        local b6 = a49(b5, a32.Stroke)
        local b8 = 0
        local b7 = false
        local function b9(c1)
            local c2 = c1 and 0.15 or 0
            a41(b6, c2, {Color = b7 and a32.Accent or a32.Stroke})
            a41(b5, c2, {BackgroundColor3 = b7 and a32.Lift or a32.Panel})
        end
        local function b10(c1)
            b8 = math.max(0, b8 + c1)
            task.defer(function()
                local d1 = b8 > 0
                if d1 ~= b7 then
                    b7 = d1
                    b9(true)
                end
            end)
        end
        a34(function()
            b9(false)
        end)
        b5.MouseEnter:Connect(function()
            b10(1)
        end)
        b5.MouseLeave:Connect(function()
            b10(-1)
        end)
        a60.TouchLeave(b5, function()
            b8 = 0
            if b7 then
                b7 = false
                b9(true)
            end
        end)
        a40("TextLabel", {
            Text = b4,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(10, 8),
            Size = UDim2.new(1, -20, 0, 16),
            Parent = b5
        })
        a40("TextLabel", {
            Text = b2.Description or "",
            TextColor3 = a32.Muted,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Position = UDim2.fromOffset(10, 26),
            Size = UDim2.new(1, -20, 0, 30),
            Parent = b5
        })
        local b12 = nil
        local b11 = nil
        local b13 = b2.Type or "Button"
        local b14 = b2.SaveKey
        local b15 = b14 and a57.Get(b14)
        local function b16(c1)
            if b14 then
                a57.Set(b14, c1)
            end
        end
        local function b17(c1)
            task.delay(1.5, function()
                if a37 then
                    c1()
                end
            end)
        end
        if b13 == "Toggle" then
            local b18 = nil
            local b19 = b2.Default and true or false
            if type(b15) == "boolean" then
                b19 = b15
            end
            b11, b18 = a75(b5, b19, function(c1)
                b16(c1)
                if c1 and b2.Allow then
                    local c2, c3 = b2.Allow()
                    if not c2 then
                        b18.Set(false)
                        a67(b4, c3 or "Not available yet.", 4)
                        return
                    end
                end
                a73(b4, b2.Callback, c1)
                a72(b4 .. ": " .. (c1 and "ON" or "OFF"), c1 and "accent" or "ok")
            end)
            if b2.OnControl then
                b2.OnControl(b18)
            end
            if type(b15) == "boolean" and b15 ~= (b2.Default and true or false) then
                b17(function()
                    if b15 and b2.Allow then
                        local c1 = b2.Allow()
                        if not c1 then
                            b18.Set(false)
                            return
                        end
                    end
                    a73(b4, b2.Callback, b15)
                end)
            end
        elseif b13 == "Slider" then
            local b20 = nil
            local b21 = b2.Default
            if type(b15) == "number" then
                b21 = math.clamp(b15, b2.Min or 0, b2.Max or 100)
            end
            b11, b20 = a76(b5, b2.Min or 0, b2.Max or 100, b21, b2.Step, b2.Suffix, function(c1)
                b16(c1)
                a73(b4, b2.Callback, c1)
            end)
            if type(b15) == "number" and b21 ~= b2.Default then
                b17(function()
                    a73(b4, b2.Callback, b21)
                end)
            end
            local b22 = b2.Default or b2.Min or 0
            b12 = a74(b5, "Reset", function()
                b20.Set(b22)
            end)
            b12.TextSize = 9
            b12.AnchorPoint = Vector2.new(1, 0)
            b12.Position = UDim2.new(1, -10, 0, 8)
            b12.Size = UDim2.fromOffset(40, 16)
        elseif b13 == "Dropdown" then
            local b23 = a74(b5, "", nil)
            b23.Text = b2.Default or "Pick..."
            if type(b15) == "table" and b15.text ~= nil and b15.value ~= nil then
                b23.Text = tostring(b15.text)
                b17(function()
                    a73(b4, b2.Callback, b15.value)
                end)
            end
            b23.TextTruncate = Enum.TextTruncate.AtEnd
            local b25 = nil
            local b24 = nil
            local function b26()
                if b24 then
                    b24:Destroy()
                    b24 = nil
                end
                if b25 then
                    b25:Destroy()
                    b25 = nil
                end
            end
            b23.MouseButton1Click:Connect(function()
                if b24 then
                    b26()
                    return
                end
                local c1 = b2.Options and b2.Options() or {}
                local c2 = a60.Screen.AbsolutePosition
                local c3 = 22
                local c4 = math.min(#c1 * c3 + 4, 180)
                b25 = a40("TextButton", {
                    Text = "",
                    BackgroundTransparency = 1,
                    Size = UDim2.fromScale(1, 1),
                    ZIndex = 80,
                    Parent = a60.Screen
                })
                b25.MouseButton1Down:Connect(b26)
                b24 = a40("ScrollingFrame", {
                    BackgroundColor3 = a32.Panel,
                    Position = UDim2.fromOffset(b23.AbsolutePosition.X - c2.X, b23.AbsolutePosition.Y + b23.AbsoluteSize.Y + 2 - c2.Y),
                    Size = UDim2.fromOffset(b23.AbsoluteSize.X, c4),
                    CanvasSize = UDim2.fromOffset(0, #c1 * c3 + 4),
                    ScrollBarThickness = 3,
                    ScrollBarImageColor3 = a32.Accent,
                    ZIndex = 81,
                    Parent = a60.Screen
                })
                a49(b24, a32.Accent)
                if #c1 == 0 then
                    a40("TextLabel", {
                        Text = "  Nothing yet",
                        TextColor3 = a32.Muted,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Size = UDim2.new(1, 0, 0, c3),
                        ZIndex = 82,
                        Parent = b24
                    })
                    b24.Size = UDim2.fromOffset(b23.AbsoluteSize.X, c3 + 4)
                end
                local c7, c6, c5 = ipairs(c1)
                while true do
                    local c9 = c7(c6, c5)
                    if c8 == nil then
                        break
                    end
                    c5 = c8
                    local c10 = a40("TextButton", {
                        Text = "  " .. c9.text,
                        Font = Enum.Font.GothamBold,
                        TextSize = 10,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        BackgroundColor3 = a32.Panel,
                        Position = UDim2.fromOffset(2, 2 + (c8 - 1) * c3),
                        Size = UDim2.new(1, -6, 0, c3),
                        ZIndex = 82,
                        Parent = b24
                    })
                    c10.MouseEnter:Connect(function()
                        c10.BackgroundColor3 = a32.Lift
                    end)
                    c10.MouseLeave:Connect(function()
                        c10.BackgroundColor3 = a32.Panel
                    end)
                    c10.MouseButton1Click:Connect(function()
                        b23.Text = c9.text
                        b26()
                        if type(c9.value) ~= "table" and type(c9.value) ~= "userdata" then
                            b16({text = c9.text, value = c9.value})
                        end
                        a73(b4, b2.Callback, c9.value)
                    end)
                end
            end)
            b11 = b23
        elseif b13 == "Input" then
            local b27 = a40("Frame", {BackgroundColor3 = a32.Background, Parent = b5})
            local b28 = a49(b27, a32.Stroke)
            local b29 = a40("TextBox", {
                BackgroundTransparency = 1,
                Text = type(b15) == "string" and b15 or b2.Default or "",
                PlaceholderText = b2.Placeholder or "Type here...",
                PlaceholderColor3 = a32.Muted,
                ClearTextOnFocus = false,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = UDim2.fromScale(1, 1),
                Parent = b27
            })
            a40("UIPadding", {PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), Parent = b29})
            b29.Focused:Connect(function()
                a41(b28, 0.12, {Color = a32.Accent})
            end)
            b29.FocusLost:Connect(function()
                a41(b28, 0.12, {Color = a32.Stroke})
                b16(b29.Text)
                a73(b4, b2.Callback, b29.Text)
            end)
            if type(b15) == "string" and b15 ~= (b2.Default or "") then
                b17(function()
                    a73(b4, b2.Callback, b15)
                end)
            end
            b11 = b27
        else
            b11 = a74(b5, b2.ButtonText or "Execute", function()
                a73(b4, b2.Callback)
                a72("Executed: " .. b4, "accent")
            end)
        end
        b11.Position = UDim2.fromOffset(10, 62)
        b11.Size = UDim2.new(1, -20, 0, 22)
        if b2.Box then
            local b30 = b2.Box
            local b31 = b30.Width or 56
            local b32 = b14 and b14 .. "/box"
            local b33 = tonumber(b32 and a57.Get(b32)) or b30.Default or 0
            local b34 = b30.Suffix or ""
            b11.Size = UDim2.new(1, -26 - b31, 0, 22)
            local b35 = a40("Frame", {
                BackgroundColor3 = a32.Background,
                AnchorPoint = Vector2.new(1, 0),
                Position = UDim2.new(1, -10, 0, 62),
                Size = UDim2.fromOffset(b31, 22),
                Parent = b5
            })
            local b36 = a49(b35, a32.Stroke)
            local b37 = a40("TextBox", {
                BackgroundTransparency = 1,
                Text = tostring(b33) .. b34,
                PlaceholderText = b30.Placeholder or "",
                PlaceholderColor3 = a32.Muted,
                ClearTextOnFocus = false,
                Font = Enum.Font.GothamBold,
                TextSize = 11,
                Size = UDim2.fromScale(1, 1),
                Parent = b35
            })
            b37.Focused:Connect(function()
                a41(b36, 0.12, {Color = a32.Accent})
                b37.Text = tostring(b33)
            end)
            b37.FocusLost:Connect(function()
                a41(b36, 0.12, {Color = a32.Stroke})
                local c1 = tonumber(string.match(b37.Text, "%-?[%d%.]+") or "")
                if c1 then
                    b33 = math.clamp(c1, b30.Min or -math.huge, b30.Max or math.huge)
                    if b32 then
                        a57.Set(b32, b33)
                    end
                    if b30.Callback then
                        a73(b4, b30.Callback, b33)
                    end
                end
                b37.Text = tostring(b33) .. b34
            end)
            if b30.Callback then
                a73(b4, b30.Callback, b33)
            end
            b35.MouseEnter:Connect(function()
                b10(1)
            end)
            b35.MouseLeave:Connect(function()
                b10(-1)
            end)
        end
        for b41, b42 in ipairs({[1] = b11, [2] = b12}) do
            b42.MouseEnter:Connect(function()
                b10(1)
            end)
            b42.MouseLeave:Connect(function()
                b10(-1)
            end)
        end
        return b5
    end
    V.a220 = function(b1)
        local b2 = V.a197(b1)
        local b3 = a40("Frame", {
            BackgroundColor3 = a32.Panel,
            Position = UDim2.fromOffset(10, 10),
            Size = UDim2.new(1, -20, 0, 28),
            Parent = b2
        })
        local b4 = a49(b3, a32.Stroke)
        local b5 = a40("TextBox", {
            BackgroundTransparency = 1,
            PlaceholderText = "SEARCH...",
            PlaceholderColor3 = a32.Muted,
            ClearTextOnFocus = false,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = UDim2.fromScale(1, 1),
            Parent = b3
        })
        a40("UIPadding", {PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10), Parent = b5})
        local b6 = false
        a34(function()
            b4.Color = b6 and a32.Accent or a32.Stroke
        end)
        b5.Focused:Connect(function()
            b6 = true
            a41(b4, 0.12, {Color = a32.Accent})
        end)
        b5.FocusLost:Connect(function()
            b6 = false
            a41(b4, 0.12, {Color = a32.Stroke})
        end)
        local b7 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(10, 46),
            Size = UDim2.new(1, -20, 1, -56),
            ScrollBarThickness = 3,
            ScrollingDirection = Enum.ScrollingDirection.Y,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = b2
        })
        a35(b7, "ScrollBarImageColor3")
        a40("UIGridLayout", {
            CellSize = UDim2.fromOffset(218, 94),
            CellPadding = UDim2.fromOffset(8, 8),
            SortOrder = Enum.SortOrder.LayoutOrder,
            Parent = b7
        })
        local b8 = {Scroll = b7, Search = b5, Cards = {}}
        V.a215[b1] = b8
        b5:GetPropertyChangedSignal("Text"):Connect(function()
            V.a218(b8)
        end)
    end
    if a96 then
        local a221 = nil
        a96:GetPropertyChangedSignal("Text"):Connect(function()
            local b1 = string.lower(a96.Text)
            if b1 == "" then
                if a221 and V.a215[a221] then
                    V.a215[a221].Search.Text = ""
                end
                a221 = nil
                return
            end
            for b5, b6 in ipairs(V.a193) do
                local b7 = V.a215[b6]
                if b7 then
                    for b11, b12 in ipairs(b7.Cards) do
                        if string.find(string.lower(b12.Name), b1, 1, true) or string.find(string.lower(b12.Desc), b1, 1, true) then
                            if a221 and a221 ~= b6 and V.a215[a221] then
                                V.a215[a221].Search.Text = ""
                            end
                            a221 = b6
                            V.a198(b6)
                            b7.Search.Text = a96.Text
                            return
                        end
                    end
                end
            end
            a72("Search: nothing found for \"" .. a96.Text .. "\"", "warn")
        end)
    end
    V.a222 = function(b1, b2)
        local b3 = V.a215[b1]
        if not b3 then
            return
        end
        if b2.SaveKey == nil and not b2.NoSave then
            b2.SaveKey = "card/" .. b1 .. "/" .. (b2.Name or "")
        end
        local b4 = V.a219(b3.Scroll, b2, #b3.Cards + 1)
        table.insert(b3.Cards, {Frame = b4, Name = b2.Name or "", Desc = b2.Description or "", Mode = b2.Mode})
        V.a218(b3)
        V.a217()
        return b4
    end
    V.a223 = V.a197("Home")
    a40("TextLabel", {
        Text = "WELCOME TO " .. a5.Name,
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(16, 16),
        Size = UDim2.new(1, -32, 0, 24),
        Parent = V.a223
    })
    a40("TextLabel", {
        Text = "Jujutsu Shenanigans hub  \194\183  UI preview build",
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(16, 42),
        Size = UDim2.new(1, -32, 0, 16),
        Parent = V.a223
    })
    V.a224 = function(b1, b2, b3, b4)
        local b5 = a40("Frame", {
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(b2, 72),
            Size = UDim2.fromOffset(46, 20),
            Parent = V.a223
        })
        local b6 = a49(b5, a32.Stroke)
        local b7 = a40("TextLabel", {
            Text = b1,
            Font = Enum.Font.GothamBold,
            TextColor3 = a32.Muted,
            Size = UDim2.fromScale(1, 1),
            Parent = b5
        })
        if b3 then
            a35(b6, "Color")
            a35(b7, "TextColor3")
        end
        if b4 then
            local b8 = a40("TextButton", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 2, Parent = b5})
            b8.MouseEnter:Connect(function()
                a41(b6, 0.12, {Color = a32.Accent})
                a41(b7, 0.12, {TextColor3 = a32.Text})
            end)
            b8.MouseLeave:Connect(function()
                a41(b6, 0.12, {Color = a32.Stroke})
                a41(b7, 0.12, {TextColor3 = a32.Muted})
            end)
            b8.MouseButton1Click:Connect(b4)
        end
    end
    V.a224(a5.Game, 16, true)
    V.a224(a5.Version, 70, false, function()
        a99()
    end)
    a40("TextLabel", {
        Text = "click the version for the changelog",
        TextSize = 10,
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(124, 72),
        Size = UDim2.fromOffset(240, 20),
        Parent = V.a223
    })
    V.a225 = os.clock()
    V.a226 = "Unknown"
    if typeof(identifyexecutor) == "function" then
        local a227, a228 = pcall(identifyexecutor)
        if a227 and a228 then
            V.a226 = tostring(a228)
        end
    end
    V.a229 = function(b1, b2)
        local b3 = a40("Frame", {
            BackgroundColor3 = a32.Panel,
            Position = UDim2.fromOffset(b2, 108),
            Size = UDim2.fromOffset(140, 64),
            Parent = V.a223
        })
        a49(b3, a32.Stroke)
        a40("TextLabel", {
            Text = b1,
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(10, 10),
            Size = UDim2.new(1, -20, 0, 12),
            Parent = b3
        })
        return a40("TextLabel", {
            Font = Enum.Font.GothamBold,
            TextSize = 16,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Position = UDim2.fromOffset(10, 28),
            Size = UDim2.new(1, -20, 0, 24),
            Parent = b3
        })
    end
    V.a216 = V.a229("FEATURES", 16)
    V.a216.Text = "0"
    V.a230 = V.a229("SESSION", 164)
    V.a231 = V.a229("EXECUTOR", 312)
    V.a231.Text = V.a226
    task.spawn(function()
        while a37 do
            local b1 = math.floor(os.clock() - V.a225)
            V.a230.Text = string.format("%02d:%02d", math.floor(b1 / 60), b1 % 60)
            task.wait(1)
        end
    end)
    V.a232 = a74(V.a223, "Copy Discord Invite", function()
        if typeof(setclipboard) == "function" then
            setclipboard(a5.DiscordLink)
            a67("Discord", "Invite copied to clipboard.", 3)
        else
            a67("Discord", a5.DiscordLink, 5)
        end
    end)
    V.a232.Position = UDim2.fromOffset(16, 190)
    V.a232.Size = UDim2.fromOffset(220, 28)
    V.a233 = a20 or {}
    V.a234 = V.a197("Key")
    V.a235 = Color3.fromHex("FF4D4D")
    a40("TextLabel", {
        Text = "YOUR KEY",
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(16, 16),
        Size = UDim2.new(1, -32, 0, 24),
        Parent = V.a234
    })
    a40("TextLabel", {
        Text = "Panda Auth  \194\183  verified when the script started",
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(16, 42),
        Size = UDim2.new(1, -32, 0, 16),
        Parent = V.a234
    })
    V.a236 = a40("Frame", {Position = UDim2.fromOffset(16, 72), Size = UDim2.new(1, -32, 0, 84), Parent = V.a234})
    a49(V.a236, a32.Stroke)
    V.a237 = a40("Frame", {Size = UDim2.new(0, 2, 1, 0), Parent = V.a236})
    a35(V.a237, "BackgroundColor3")
    a40("TextLabel", {
        Text = "TIME LEFT",
        TextSize = 10,
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(14, 10),
        Size = UDim2.fromOffset(120, 12),
        Parent = V.a236
    })
    V.a238 = a40("TextLabel", {
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        TextXAlignment = Enum.TextXAlignment.Right,
        AnchorPoint = Vector2.new(1, 0),
        Position = UDim2.new(1, -14, 0, 10),
        Size = UDim2.fromOffset(160, 12),
        Parent = V.a236
    })
    V.a239 = a40("TextLabel", {
        Font = Enum.Font.GothamBold,
        TextSize = 28,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(14, 30),
        Size = UDim2.new(1, -28, 0, 40),
        Parent = V.a236
    })
    V.a240 = tostring(V.a233.Expiry or "")
    V.a241 = V.a233.TimeLeft == nil and (V.a240 == "" or string.lower(V.a240) == "lifetime")
    V.a242 = type(V.a233.TimeLeft) == "number" and os.time() + V.a233.TimeLeft or nil
    V.a243 = function(b1)
        local b2 = math.floor(b1 / 86400)
        local b3 = math.floor(b1 % 86400 / 3600)
        local b4 = math.floor(b1 % 3600 / 60)
        local b5 = math.floor(b1 % 60)
        if b2 > 0 then
            return string.format("%dd %02dh %02dm %02ds", b2, b3, b4, b5)
        end
        return string.format("%02dh %02dm %02ds", b3, b4, b5)
    end
    V.a244 = function(b1, b2)
        V.a238.Text = b1
        V.a238.TextColor3 = b2
    end
    V.a245 = false
    task.spawn(function()
        while a37 do
            if V.a241 then
                V.a239.Text = "LIFETIME"
                V.a244("ACTIVE", a32.Ok)
            elseif V.a242 then
                local b1 = V.a242 - os.time()
                if b1 <= 0 then
                    V.a239.Text = "EXPIRED"
                    V.a244("EXPIRED", V.a235)
                else
                    V.a239.Text = V.a243(b1)
                    if b1 < 600 then
                        V.a244("EXPIRING SOON", a32.Warn)
                        if not V.a245 then
                            V.a245 = true
                            a67("Key", "Your key has less than 10 minutes left.", 6)
                        end
                    else
                        V.a244("ACTIVE", a32.Ok)
                    end
                end
            else
                V.a239.Text = string.upper(V.a240)
                V.a244("ACTIVE", a32.Ok)
            end
            task.wait(1)
        end
    end)
    V.a246 = function(b1, b2, b3)
        local b4 = a40("Frame", {Position = UDim2.fromOffset(b2, 170), Size = UDim2.fromOffset(140, 56), Parent = V.a234})
        a49(b4, a32.Stroke)
        a40("TextLabel", {
            Text = b1,
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(10, 8),
            Size = UDim2.new(1, -20, 0, 12),
            Parent = b4
        })
        a40("TextLabel", {
            Text = b3,
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Position = UDim2.fromOffset(10, 26),
            Size = UDim2.new(1, -20, 0, 22),
            Parent = b4
        })
    end
    V.a247 = "NEVER"
    if V.a242 then
        local a248, a249 = pcall(os.date, "%b %d, %H:%M", V.a242)
        V.a247 = a248 and tostring(a249) or V.a240
    elseif not V.a241 then
        V.a247 = V.a240
    end
    V.a250 = tostring(V.a233.Key or "")
    V.a251 = #V.a250 > 8 and string.sub(V.a250, 1, 4) .. "\226\128\162\226\128\162\226\128\162\226\128\162" .. string.sub(V.a250, -4) or string.rep("\226\128\162", #V.a250)
    V.a246("PLAN", 16, V.a233.Premium and "PREMIUM" or "FREE")
    V.a246("EXPIRES", 164, string.upper(V.a247))
    V.a246("KEY", 312, V.a251)
    V.a252 = a74(V.a234, "Copy Key", function()
        if V.a250 ~= "" and typeof(setclipboard) == "function" then
            setclipboard(V.a250)
            a67("Key", "Key copied to clipboard.", 3)
        else
            a67("Key", "Cannot copy on this executor.", 3)
        end
    end)
    V.a252.Position = UDim2.fromOffset(16, 240)
    V.a252.Size = UDim2.fromOffset(140, 28)
    V.a253 = a74(V.a234, "Forget Saved Key", function()
        a18.Clear()
        a67("Key", "Saved key removed. You will be asked for it next run.", 4)
    end)
    V.a253.Position = UDim2.fromOffset(164, 240)
    V.a253.Size = UDim2.fromOffset(160, 28)
    V.a254 = (function()
        local b1 = game:GetService("RunService")
        local b2 = Players.LocalPlayer
        local b3 = 140
        local b4 = 60
        local b5 = 8
        local b6 = Color3.fromRGB(0, 140, 255)
        local b7 = Color3.fromRGB(80, 255, 120)
        local b8 = Color3.fromRGB(255, 200, 60)
        local b9 = Color3.fromRGB(255, 60, 60)
        local b10 = string.char(10)
        local b11 = false
        local b12 = 0
        local b13 = -math.huge
        local b18 = nil
        local b17 = nil
        local b16 = nil
        local b15 = nil
        local b14 = nil
        local function b19()
            local c1 = workspace.CurrentCamera
            if not c1 then
                return nil
            end
            local c2 = UserInputService:GetMouseLocation()
            local c4 = b3
            local c3 = nil
            for c8, c9 in ipairs(Players:GetPlayers()) do
                local c10 = c9.Character
                if c9 ~= b2 and c10 then
                    local c11 = c10:FindFirstChild("HumanoidRootPart")
                    local c12 = c10:FindFirstChildOfClass("Humanoid")
                    if c11 and c12 and c12.Health > 0 then
                        local c13, c14 = c1:WorldToViewportPoint(c11.Position)
                        if c14 then
                            local c15 = (Vector2.new(c13.X, c13.Y) - c2)["Magnitude"]
                            if c15 < c4 then
                                c4 = c15
                                c3 = c10
                            end
                        end
                    end
                end
            end
            return c3
        end
        local function b20()
            if b14 then
                b14.Adornee = nil
            end
            if b15 then
                b15.Adornee = nil
            end
        end
        local function b21()
            local c1 = b19()
            local c2 = b2.Character and b2.Character:FindFirstChild("HumanoidRootPart")
            local c3 = c1 and c1:FindFirstChild("HumanoidRootPart")
            if not (c1 and c2 and c3) then
                return b20()
            end
            local c4 = (c2.Position - c3.Position)["Magnitude"]
            local c5 = b5 - (os.clock() - b13)
            local c8 = nil
            local c7 = nil
            local c6 = nil
            if b4 and c4 > b4 then
                c8 = b9
                c7 = b9
                c6 = "OUT OF RANGE (" .. math.floor(c4) .. ")"
            elseif c5 > 0 then
                c8 = b6
                c7 = b8
                c6 = "COOLDOWN " .. string.format("%.1f", c5) .. "s"
            else
                c8 = b6
                c7 = b7
                c6 = "READY TO SWAP"
            end
            local c9 = Players:GetPlayerFromCharacter(c1)
            b16.Text = (c9 and c9.DisplayName or c1.Name) .. b10 .. c6
            b16.TextColor3 = c7
            b14.FillColor = c8
            b14.OutlineColor = c8
            b14.Adornee = c1
            b15.Adornee = c3
        end
        local function b22()
            b11 = false
            b12 = b12 + 1
            if b17 then
                b17:Disconnect()
                b17 = nil
            end
            if b18 then
                pcall(function()
                    b18:Disconnect()
                end)
                b18 = nil
            end
            if b14 then
                b14:Destroy()
                b14 = nil
            end
            if b15 then
                b15:Destroy()
                b15 = nil
            end
            b16 = nil
        end
        local function b23()
            if b11 then
                return
            end
            b11 = true
            b12 = b12 + 1
            local c1 = b12
            local c2 = a58.Parent or CoreGui
            b14 = Instance.new("Highlight")
            b14.FillColor = b6
            b14.OutlineColor = b6
            b14.FillTransparency = 0.6
            b14.OutlineTransparency = 0
            b14.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            b14.Parent = c2
            b15 = Instance.new("BillboardGui")
            b15.Size = UDim2.fromOffset(180, 44)
            b15.StudsOffset = Vector3.new(0, 3.5, 0)
            b15.AlwaysOnTop = true
            b15.Parent = c2
            b16 = Instance.new("TextLabel")
            b16.Size = UDim2.fromScale(1, 1)
            b16.BackgroundTransparency = 1
            b16.Font = Enum.Font.GothamBold
            b16.TextSize = 16
            b16.TextStrokeTransparency = 0.4
            b16.Parent = b15
            b17 = b1.RenderStepped:Connect(function()
                if a37 and b11 then
                    b21()
                end
            end)
            task.spawn(function()
                local d2 = pcall(function()
                    return require(game.ReplicatedStorage.Knit.Knit)
                end)
                if not d1 then
                    return
                end
                pcall(function()
                    d2.OnStart():await()
                end)
                if not b11 or b12 ~= c1 then
                    return
                end
                local d3, d4 = pcall(d2.GetService, "TodoService")
                if not d3 or not d4 then
                    return
                end
                b18 = d4.Effects:Connect(function(e1, e2)
                    if e1 == "Swap" and e2 == b2.Character then
                        b13 = os.clock()
                    end
                end)
            end)
        end
        return {Enable = b23, Disable = b22}
    end)()
    V.a255 = false
    V.a256 = nil
    V.a257 = (function()
        local b1 = game:GetService("RunService")
        local b2 = Players.LocalPlayer
        local b3 = workspace.CurrentCamera
        local b4 = {Speed = 16, Jump = 50, Gravity = workspace.Gravity, FOV = b3 and b3.FieldOfView or 70}
        local b5 = {}
        local b7 = false
        local b6 = false
        local b8 = {}
        local b9 = nil
        local b10 = 0
        local b11 = 0
        local function b12()
            local c1 = b2.Character
            return c1 and c1:FindFirstChildOfClass("Humanoid")
        end
        local function b13(c1, c2)
            if c1 == "Speed" then
                local c3 = b12()
                if c3 and c3.WalkSpeed ~= c2 then
                    c3.WalkSpeed = c2
                end
            elseif c1 == "Jump" then
                local c4 = b12()
                if c4 then
                    if not c4.UseJumpPower then
                        c4.UseJumpPower = true
                    end
                    if c4.JumpPower ~= c2 then
                        c4.JumpPower = c2
                    end
                end
            elseif c1 == "Gravity" then
                if workspace.Gravity ~= c2 then
                    workspace.Gravity = c2
                end
            elseif c1 == "FOV" then
                local c5 = workspace.CurrentCamera
                if c5 and c5.FieldOfView ~= c2 then
                    c5.FieldOfView = c2
                end
            end
        end
        a39(b1.Heartbeat:Connect(function()
            for c4, c5 in pairs(b5) do
                b13(c4, c5)
            end
        end))
        a39(UserInputService.JumpRequest:Connect(function()
            if b6 then
                local c1 = b12()
                if c1 then
                    c1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end))
        local function b14(c1, c2)
            for c6 in pairs(b8) do
                if not (c1 and c2[c6]) then
                    pcall(function()
                        c6.CanCollide = true
                    end)
                    b8[c6] = nil
                end
            end
        end
        local b15 = OverlapParams.new()
        b15.FilterType = Enum.RaycastFilterType.Exclude
        local b16 = nil
        local b18 = Vector3.new(8, 5, 8)
        local b17 = Vector3.new(0, 0.5, 0)
        local function b19()
            if not b7 or os.clock() < b10 then
                if next(b8) then
                    b14(false)
                end
                return
            end
            local c1 = b2.Character
            local c2 = c1 and c1:FindFirstChild("HumanoidRootPart")
            if not c2 then
                return
            end
            if b16 ~= c1 then
                b16 = c1
                b15.FilterDescendantsInstances = {[1] = c1}
            end
            local c3, c4 = pcall(workspace.GetPartBoundsInBox, workspace, CFrame.new(c2.Position + b17), b18, b15)
            if not c3 then
                return
            end
            local c5 = {}
            for c9, c10 in ipairs(c4) do
                c5[c10] = true
                if c10.CanCollide then
                    b8[c10] = true
                    c10.CanCollide = false
                end
            end
            b14(true, c5)
        end
        if not pcall(function()
            a39(b1.PreSimulation:Connect(b19))
        end) then
            a39(b1.Stepped:Connect(b19))
        end
        local b20 = {}
        local b21 = 0
        local b22 = {}
        local b24 = nil
        local b23 = nil
        local b26 = 0
        local b25 = {}
        local b28 = 0
        local b27 = 0
        local function b29()
            local c1 = workspace.FallenPartsDestroyHeight
            if type(c1) ~= "number" then
                c1 = -500
            end
            return math.max(c1, -2000) + 60
        end
        local function b30(c1)
            table.insert(b25, c1)
            while #b25 > 0 and c1 - b25[1] > 6 do
                table.remove(b25, 1)
            end
            if c1 - b26 > 2 then
                b26 = c1
                a67("Noclip", "Rubberband detected (" .. #b25 .. ").", 3)
            end
            if #b25 >= 3 then
                b25 = {}
                b10 = c1 + 2.5
                b14(false)
                a67("Noclip", "Too many snap-backs. Paused for a moment, then it checks again.", 4)
            end
        end
        local function b31(c1, c2)
            if c2 - b28 < 0.6 then
                return
            end
            b28 = c2
            b27 = b27 + 1
            b10 = c2 + 1.5
            b14(false)
            local c3 = b20[math.max(1, #b20 - (b27 - 1))]
            if c3 then
                c1.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                c1.CFrame = c3 + Vector3.new(0, 3, 0)
                a67("Noclip", "Fell out of the map. Put you back, checking again.", 3)
            else
                a67("Noclip", "Fell out of the map and no safe spot was saved yet.", 3)
            end
        end
        a39(b1.Heartbeat:Connect(function(c1)
            if not b7 or os.clock() < b11 then
                b23 = nil
                return
            end
            c1 = c1 or 0.016666666666666666
            local c2 = b2.Character
            local c3 = c2 and c2:FindFirstChild("HumanoidRootPart")
            local c4 = b12()
            if not c3 or not c4 then
                return
            end
            local c5 = os.clock()
            local c6 = c3.Position
            local c7 = c3.AssemblyLinearVelocity or Vector3.new(0, 0, 0)
            if c4.FloorMaterial ~= Enum.Material.Air and c6.Y > b29() and c5 - b21 > 0.25 then
                b21 = c5
                table.insert(b20, c3.CFrame)
                if #b20 > 12 then
                    table.remove(b20, 1)
                end
            end
            if b23 then
                local c8 = (b24 or 0) * c1 * 2 + 12
                if (c6 - b23)["Magnitude"] > c8 then
                    for c12, c13 in ipairs(b22) do
                        if c5 - c13.t > 0.3 and (c13.pos - c6)["Magnitude"] < 6 then
                            b30(c5)
                            break
                        end
                    end
                end
            end
            table.insert(b22, {t = c5, pos = c6})
            while #b22 > 0 and c5 - b22[1].t > 2 do
                table.remove(b22, 1)
            end
            b24 = c7.Magnitude
            b23 = c6
            local c14 = b20[#b20]
            if c6.Y < b29() or c14 and c6.Y < c14.Position.Y - 80 and c7.Y < -60 then
                b31(c3, c5)
            elseif c5 - b28 > 1.5 then
                b27 = 0
            end
        end))
        local b32 = {}
        b32.Default = function(c1)
            return b4[c1]
        end
        b32.Set = function(c1, c2)
            local c3 = b4[c1]
            if math.abs(c2 - c3) < 0.5 then
                b5[c1] = nil
                b13(c1, c3)
            else
                b5[c1] = c2
                b13(c1, c2)
            end
        end
        b32.InfJump = function(c1)
            b6 = c1
        end
        b32.Noclip = function(c1)
            b7 = c1
            if c1 then
                b10 = 0
                b23 = nil
                b25 = {}
                b22 = {}
                b20 = {}
            else
                b14(false)
            end
        end
        b32.AntiAFK = function(c1)
            if b9 then
                b9:Disconnect()
                b9 = nil
            end
            if c1 then
                b9 = b2.Idled:Connect(function()
                    pcall(function()
                        local e1 = game:GetService("VirtualUser")
                        e1:CaptureController()
                        e1:ClickButton2(Vector2.new())
                    end)
                end)
            end
        end
        b32.Hold = function(c1)
            b11 = os.clock() + c1
            b10 = b11
        end
        local b33 = 0
        local b34 = ""
        local function b35(c1)
            local c2 = c1
            while c2 do
                if string.sub(c2.Name, 1, 6) == "RYOIKI" then
                    return true
                end
                c2 = c2.Parent
            end
            return false
        end
        local function b36(c1)
            local c2 = false
            for c6, c7 in ipairs({[1] = "MouseButton1Click", [2] = "Activated"}) do
                local c8 = c1[c7]
                if typeof(a50.firesignal) == "function" then
                    if pcall(a50.firesignal, c8) then
                        c2 = true
                    end
                elseif typeof(a50.getconnections) == "function" then
                    pcall(function()
                        for d4, d5 in ipairs(a50.getconnections(c8)) do
                            d5:Fire()
                            c2 = true
                        end
                    end)
                end
            end
            return c2
        end
        local b37 = nil
        local function b38()
            local c1, c2 = pcall(function()
                return game:GetService("StarterGui"):GetCore("ResetButtonCallback")
            end)
            if c1 and typeof(c2) == "Instance" and c2:IsA("BindableEvent") then
                b37 = c2
            end
            return b37
        end
        task.spawn(function()
            while a37 do
                b38()
                task.wait(1)
            end
        end)
        local b39 = {
            [1] = function()
                local c1 = b38()
                if c1 then
                    c1:Fire()
                    return "the reset hook"
                end
            end,
            [2] = function()
                local c1 = {b2:FindFirstChildOfClass("PlayerGui")}
                local c2 = game:GetService("CoreGui"):FindFirstChild("RobloxGui")
                if c2 then
                    table.insert(c1, c2)
                end
                for c6, c7 in ipairs(c1) do
                    for c11, c12 in ipairs(c7:GetDescendants()) do
                        if (c12:IsA("TextButton") or c12:IsA("ImageButton")) and c12.Visible and not b35(c12) then
                            local c13 = c12:IsA("TextButton") and c12.Text or ""
                            local c14 = string.lower(c12.Name .. " " .. c13)
                            if string.find(c14, "reset", 1, true) and not string.find(c14, "onspawn", 1, true) and b36(c12) then
                                return "the button " .. c12.Name
                            end
                        end
                    end
                end
            end,
            [3] = function()
                local c1 = {reset = true, resetcharacter = true, resetchar = true, resetplayer = true, respawn = true}
                for c5, c6 in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                    if c6:IsA("RemoteEvent") and c1[string.lower(c6.Name)] then
                        c6:FireServer()
                        return "the remote " .. c6.Name
                    end
                end
            end
        }
        local function b40(c1, c2, c3)
            if b2.Character ~= c2 or c3 and c1.Parent == nil then
                return true
            end
            if c1:GetAttribute("Dead") == true then
                return true
            end
            local c4 = c1:FindFirstChildOfClass("Humanoid")
            local c6 = nil
            local c5 = false
            if c4 then
                if c4.Health <= 0 then
                    return true
                end
                c5, c6 = pcall(function()
                    return c4:GetState()
                end)
            end
            return c5 and c6 == Enum.HumanoidStateType.Dead
        end
        b32.CancelReset = function()
            b33 = b33 + 1
        end
        b32.ResetNow = function(c1, c2, c3)
            b33 = b33 + 1
            local c4 = b33
            local c5 = b2.Character
            if not c5 then
                return false
            end
            local c6 = c5.Parent ~= nil
            local c7 = os.clock()
            local c8 = false
            local c9 = 0
            while a37 and c4 == b33 and os.clock() - c7 < c1 do
                c9 = c9 + 1
                if c3 and c9 > #b39 then
                    local c10 = os.clock()
                    while a37 and c4 == b33 and os.clock() - c10 < 4 and os.clock() - c7 < c1 do
                        if b40(c5, c5, c6) then
                            return true
                        end
                        pcall(b39[1], c5)
                        task.wait(0.25)
                    end
                    break
                end
                local c11 = b39[(c9 - 1) % #b39 + 1]
                local c12, c13 = pcall(c11, c5)
                if c12 and c13 then
                    local c14 = os.clock()
                    while os.clock() - c14 < 0.8 do
                        if b40(c5, c5, c6) then
                            b34 = c13
                            return true
                        end
                        task.wait(0.05)
                    end
                    if not c8 and not c2 then
                        c8 = true
                        a67("Reset", "Reset didn't go through yet. Retrying...", 4)
                    end
                else
                    task.wait(0.05)
                end
            end
            return b40(c5, c5, c6)
        end
        b32.ResetFast = function(c1)
            local c2 = b2.Character
            if not c2 then
                return false
            end
            local c3, c4 = pcall(b39[1], c2)
            if not (c3 and c4) then
                return b32.ResetNow(c1, true)
            end
            b33 = b33 + 1
            local c5 = b33
            local c6 = c2.Parent ~= nil
            local c8 = os.clock() + 0.4
            local c7 = os.clock()
            while a37 and c5 == b33 and os.clock() - c7 < c1 do
                if b40(c2, c2, c6) then
                    b34 = c4
                    return true
                end
                if os.clock() >= c8 then
                    c8 = os.clock() + 0.4
                    pcall(b39[1], c2)
                end
                b1.Heartbeat:Wait()
            end
            return b40(c2, c2, c6)
        end
        local b41 = false
        local function b42(c1)
            pcall(function()
                c1:BreakJoints()
            end)
            local c4, c3, c2 = ipairs(c1:GetDescendants())
            while true do
                local c6 = c4(c3, c2)
                if c5 == nil then
                    break
                end
                c2 = c5
                if c6:IsA("Motor6D") and (c6.Name == "Neck" or c6.Name == "RootJoint" or c6.Name == "Root") then
                    pcall(function()
                        c6:Destroy()
                    end)
                end
            end
            local c7 = c1:FindFirstChildOfClass("Humanoid")
            if c7 then
                pcall(function()
                    c7:ChangeState(Enum.HumanoidStateType.Dead)
                end)
                pcall(function()
                    c7.Health = 0
                end)
            end
        end
        local function b43(c1)
            local c2 = c1:FindFirstChild("HumanoidRootPart")
            local c3 = c1:FindFirstChildOfClass("Humanoid")
            if not c2 then
                return nil
            end
            if c3 then
                pcall(function()
                    c3.PlatformStand = true
                    c3:ChangeState(Enum.HumanoidStateType.Physics)
                end)
            end
            local c4 = os.clock()
            local c6 = 0
            local c5 = {}
            return b1.Stepped:Connect(function()
                if c3 and c3.Parent and not c3.PlatformStand then
                    c3.PlatformStand = true
                end
                local d1 = os.clock()
                if d1 >= c6 then
                    c6 = d1 + 0.5
                    c5 = {}
                    for d5, d6 in ipairs(c1:GetDescendants()) do
                        if d6:IsA("BasePart") then
                            c5[#c5 + 1] = d6
                        end
                    end
                end
                for d10 = 1, #c5 do
                    local d11 = c5[d10]
                    if d11.CanCollide then
                        d11.CanCollide = false
                    end
                end
                if c2.Parent then
                    local d12 = math.min(80 + 250 * (os.clock() - c4), 500)
                    local d13 = c2.AssemblyLinearVelocity
                    c2.AssemblyLinearVelocity = Vector3.new(d13.X * 0.5, -d12, d13.Z * 0.5)
                end
            end)
        end
        local function b44()
            local c1 = workspace.FallenPartsDestroyHeight
            return type(c1) == "number" and c1 or -500
        end
        b32.ForceKill = function(c1, c2, c3)
            local c4 = b2.Character
            if not c4 or b41 or not (c1 or c2) then
                return false
            end
            b41 = true
            local c5 = nil
            if c2 then
                local c6, c7 = pcall(b43, c4)
                c5 = c6 and c7 or nil
            end
            local c8 = os.clock()
            local c9 = false
            local c10 = false
            local c11 = 0
            while a37 and os.clock() - c8 < (c3 or 8) do
                if b2.Character ~= c4 or c4.Parent == nil then
                    c10 = true
                    break
                end
                local c12 = c4:FindFirstChild("HumanoidRootPart")
                if c12 and os.clock() >= (c11 or 0) then
                    c11 = os.clock() + 0.5
                    a72("Bypass: falling to void, Y = " .. math.floor(c12.Position.Y) .. " (dies at " .. math.floor(b44()) .. ")", "warn")
                end
                if c1 and not c9 and (not c2 or not c12 or c12.Position.Y < b44() + 40 or os.clock() - c8 > 4) then
                    c9 = true
                    b42(c4)
                end
                b1.Heartbeat:Wait()
            end
            if c5 then
                c5:Disconnect()
            end
            b41 = false
            if c10 then
                b34 = "void + break joints"
            end
            return c10
        end
        local b45 = false
        b32.ResetCharacter = function()
            if b45 then
                a67("Reset", "Already resetting.", 2)
                return
            end
            b45 = true
            task.spawn(function()
                local d1 = b32.ResetNow(30, true, true)
                b45 = false
                if d1 then
                    a67("Reset", "Reset worked (via " .. b34 .. ").", 3)
                elseif a37 then
                    a67("Reset", "Reset didn't go through (the game didn't kill you). Try again.", 4)
                end
            end)
        end
        b32.Reset = function()
            for c4 in pairs(b5) do
                b13(c4, b4[c4])
            end
            b5 = {}
            b7 = false
            b6 = false
            b14(false)
            b32.AntiAFK(false)
        end
        return b32
    end)()
    V.a258 = (function()
        local b1 = Players.LocalPlayer
        local b3 = 0
        local b2 = false
        local b4 = false
        local b5 = 60
        local b6 = 25
        local b7 = game:GetService("RunService")
        local function b8()
            local c1 = b1.Character
            return c1 and c1:FindFirstChild("HumanoidRootPart")
        end
        local function b9(c1)
            local c2 = os.clock()
            while a37 and os.clock() - c2 < 12 do
                local c3 = b1.Character
                local c4 = c3 and c3:FindFirstChildOfClass("Humanoid")
                if c3 and c3 ~= c1 and c3:FindFirstChild("HumanoidRootPart") and c4 and c4.Health > 0 then
                    return true
                end
                b7.Heartbeat:Wait()
            end
            return false
        end
        local function b10()
            local c1 = b8()
            local c2 = b1.Character
            if not c1 then
                return "gone"
            end
            local c3 = c1.CFrame
            local c4 = c3 + c3.LookVector * b5
            V.a257.Hold(6)
            c1.CFrame = c4
            local c5 = os.clock()
            while os.clock() - c5 < 1.5 do
                b7.Heartbeat:Wait()
                c1 = b8()
                if b1.Character ~= c2 or not c1 then
                    return "gone"
                end
                if (c1.Position - c3.Position)["Magnitude"] < b5 * 0.4 or (c1.Position - c4.Position)["Magnitude"] > b5 * 0.6 then
                    return "pulled"
                end
            end
            if (c1.Position - c4.Position)["Magnitude"] < 10 then
                return "ok"
            end
            return "pulled"
        end
        local b11 = {}
        local function b12(c1)
            b2 = c1
            if b11.OnState then
                pcall(b11.OnState, c1)
            end
        end
        b11.IsRunning = function()
            return b2
        end
        b11.IsBypassed = function()
            return b4
        end
        b11.SetDistance = function(c1)
            b5 = c1
        end
        b11.Stop = function()
            b12(false)
            b3 = b3 + 1
            pcall(V.a257.CancelReset)
        end
        b11.Start = function()
            if b2 then
                a67("AC Bypass", "Already running. Press Stop to cancel.", 3)
                return
            end
            b12(true)
            b3 = b3 + 1
            local c1 = b3
            task.spawn(function()
                local d2 = pcall(function()
                    return game:GetService("VirtualInputManager")
                end)
                if not (d1 and d2) then
                    return
                end
                while b2 and c1 == b3 and a37 do
                    if not UserInputService:GetFocusedTextBox() then
                        pcall(function()
                            d2:SendKeyEvent(true, Enum.KeyCode.R, false, game)
                        end)
                        task.wait(0.03)
                        pcall(function()
                            d2:SendKeyEvent(false, Enum.KeyCode.R, false, game)
                        end)
                    end
                    task.wait(0.07)
                end
            end)
            task.spawn(function()
                local d1 = 0
                local d2 = false
                local d3 = os.clock()
                local d4 = 0
                while b2 and c1 == b3 and a37 and d1 < b6 do
                    d1 = d1 + 1
                    a72("Bypass: attempt " .. d1, "accent")
                    local d5 = b1.Character
                    local d6 = b10()
                    if d6 == "ok" then
                        d2 = true
                        b4 = true
                        a67("AC Bypass", "Teleport held after " .. d1 .. (d1 == 1 and " try" or " tries") .. string.format(" (%.1fs). Bypassed.", os.clock() - d3), 5)
                        a72("Bypass: success", "ok")
                        break
                    end
                    if d6 ~= "gone" then
                        a67("AC Bypass", "Rubberband detected (try " .. d1 .. ").", 2)
                        local d7 = false
                        if d4 < 3 then
                            a72("Bypass: rubberband, reset + break joints + void", "warn")
                            task.spawn(V.a257.ResetFast, 8)
                            d7 = V.a257.ForceKill(true, true, 8)
                            if d7 then
                                d4 = 0
                            else
                                d4 = d4 + 1
                                if d4 >= 3 then
                                    a67("AC Bypass", "Void fall failed 3 times in a row. Using normal reset from now on.", 4)
                                end
                            end
                        else
                            a72("Bypass: rubberband, resetting", "warn")
                            d7 = V.a257.ResetNow(60, true)
                        end
                        if not d7 and not V.a257.ResetFast(60) then
                            if b2 and c1 == b3 then
                                a67("AC Bypass", "Reset didn't go through. Stopped.", 5)
                            end
                            break
                        end
                    end
                    if not b9(d5) then
                        break
                    end
                end
                if c1 == b3 then
                    b12(false)
                    if not d2 and d1 >= b6 then
                        a67("AC Bypass", "Gave up after " .. b6 .. " tries.", 5)
                    end
                end
            end)
        end
        return b11
    end)()
    V.a259 = (function()
        local b1 = game:GetService("RunService")
        local b2 = Players.LocalPlayer
        local b3 = {
            Enabled = false,
            Auto = false,
            WallCrawl = false,
            Return = false,
            ReturnTo = "Body",
            GetUp = 1,
            FlySpeed = 110,
            Hold = false,
            MaxFly = 1.5,
            Paused = false
        }
        local b4 = {}
        local b6 = nil
        local b5 = nil
        local b7 = nil
        local function b8(c1)
            local c2 = c1:FindFirstAncestorWhichIsA("Model")
            for c6 = 1, 3 do
                if not c2 then
                    return nil
                end
                if c2:FindFirstChildOfClass("Humanoid") then
                    return c2
                end
                c2 = c2:FindFirstAncestorWhichIsA("Model")
            end
            return nil
        end
        local function b9(c1, c2, c3, c4)
            for c8 = 1, 4 do
                local c9 = nil
                if c4 then
                    local c10, c11 = pcall(function()
                        return workspace:Spherecast(c1, c4, c2, c3)
                    end)
                    c9 = c10 and c11 or workspace:Raycast(c1, c2, c3)
                else
                    c9 = workspace:Raycast(c1, c2, c3)
                end
                if not c9 then
                    return nil
                end
                local c12 = b8(c9.Instance)
                if not c12 then
                    return c9
                end
                local c13 = c3.FilterDescendantsInstances
                table.insert(c13, c12)
                c3.FilterDescendantsInstances = c13
            end
            return nil
        end
        local b11 = nil
        local b10 = {}
        local b12 = {}
        local b13 = nil
        local function b14()
            if b13 then
                return b13
            end
            pcall(function()
                local d1 = require(b2:WaitForChild("PlayerScripts", 2):WaitForChild("PlayerModule", 2))
                b13 = d1:GetControls()
            end)
            return b13
        end
        local b15 = game:GetService("UserInputService")
        local function b16()
            local c1 = Vector3.zero
            if not b15:GetFocusedTextBox() then
                local c2 = (b15:IsKeyDown(Enum.KeyCode.D) and 1 or 0) - (b15:IsKeyDown(Enum.KeyCode.A) and 1 or 0)
                local c3 = (b15:IsKeyDown(Enum.KeyCode.S) and 1 or 0) - (b15:IsKeyDown(Enum.KeyCode.W) and 1 or 0)
                c1 = Vector3.new(c2, 0, c3)
            end
            local c4 = c1.Magnitude < 0.05 and b14() or nil
            if c4 then
                local c5, c6 = pcall(function()
                    return c4:GetMoveVector()
                end)
                if c5 and c6 then
                    c1 = c6
                end
            end
            if c1.Magnitude < 0.05 then
                return Vector3.zero
            end
            local c7 = workspace.CurrentCamera
            local c8 = c7.CFrame.LookVector
            local c9 = Vector3.new(c8.X, 0, c8.Z)
            c9 = c9.Magnitude > 0.01 and c9.Unit or Vector3.new(0, 0, -1)
            local c10 = Vector3.new(-c9.Z, 0, c9.X)
            local c11 = c10 * c1.X + c9 * -c1.Z
            return c11.Magnitude > 1 and c11.Unit or c11
        end
        local b17 = game:GetService("ContextActionService")
        local b18 = "RYOIKI_SkinSink"
        local b19 = false
        local function b20(c1)
            if c1 == b19 then
                return
            end
            b19 = c1
            local c2 = b14()
            if c1 then
                if c2 then
                    pcall(function()
                        c2:Disable()
                    end)
                end
                pcall(function()
                    b17:BindActionAtPriority(b18, function()
                        return Enum.ContextActionResult.Sink
                    end, false, 3000, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.Up, Enum.KeyCode.Down, Enum.KeyCode.Left, Enum.KeyCode.Right)
                end)
            else
                pcall(function()
                    b17:UnbindAction(b18)
                end)
                if c2 then
                    pcall(function()
                        c2:Enable()
                    end)
                end
            end
        end
        local function b21()
            b20(false)
            if b11 then
                b11:Disconnect()
                b11 = nil
            end
            local c3, c2, c1 = ipairs(b10)
            while true do
                local c5 = c3(c2, c1)
                if c4 == nil then
                    break
                end
                c1 = c4
                pcall(function()
                    c5:Destroy()
                end)
            end
            b10 = {}
            local c8, c7, c6 = ipairs(b12)
            while true do
                local c10 = c8(c7, c6)
                if c9 == nil then
                    break
                end
                c6 = c9
                pcall(function()
                    c10[1].CustomPhysicalProperties = c10[2]
                end)
            end
            b12 = {}
            local c13, c12, c11 = ipairs(b4)
            while true do
                local c15 = c13(c12, c11)
                if c14 == nil then
                    break
                end
                c11 = c14
                pcall(function()
                    if c15.orig then
                        c15.c.Enabled = c15.en
                        return
                    end
                    c15.c.UpperAngle = c15.ua
                    c15.c.TwistLimitsEnabled = c15.tw
                    if c15.neck then
                        c15.c.TwistLowerAngle = c15.tl
                        c15.c.TwistUpperAngle = c15.tu
                    end
                end)
            end
            b4 = {}
        end
        local function b22(c1, c2)
            local c3 = Instance.new("Attachment")
            c3.Name = "RYOIKI_Skin_" .. c2
            c3.Parent = c1
            table.insert(b10, c3)
            return c3
        end
        local function b23(c1, c2, c3, c4)
            local c5 = b22(c1, c2)
            local c6 = Instance.new("AlignOrientation")
            c6.Name = "RYOIKI_Skin_" .. c2
            c6.Mode = Enum.OrientationAlignmentMode.OneAttachment
            c6.Attachment0 = c5
            c6.MaxTorque = c3
            c6.Responsiveness = c4 or 25
            c6.Parent = c1
            table.insert(b10, c6)
            return c6
        end
        local function b24(c1)
            b21()
            local c2 = c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso")
            if not c2 then
                return
            end
            local c3 = 0
            for c7, c8 in ipairs(c1:GetDescendants()) do
                if c8:IsA("BasePart") then
                    c3 = c3 + c8:GetMass()
                end
            end
            c3 = math.max(c3, 1)
            local c9 = b23(c2, "Body", c3 * 550, 7)
            local c10 = b22(c2, "Legs")
            local c11 = Instance.new("VectorForce")
            c11.Name = "RYOIKI_Skin_Legs"
            c11.Attachment0 = c10
            c11.RelativeTo = Enum.ActuatorRelativeTo.World
            c11.ApplyAtCenterOfMass = true
            c11.Force = Vector3.zero
            c11.Parent = c2
            table.insert(b10, c11)
            local c12 = {}
            for c16, c17 in ipairs({
                [1] = {[1] = "Left Leg", [2] = 1, [3] = 0.7},
                [2] = {[1] = "Right Leg", [2] = -1, [3] = 0.7},
                [3] = {[1] = "Left Arm", [2] = -1, [3] = 0.5},
                [4] = {[1] = "Right Arm", [2] = 1, [3] = 0.5},
                [5] = {[1] = "LeftUpperLeg", [2] = 1, [3] = 0.7},
                [6] = {[1] = "RightUpperLeg", [2] = -1, [3] = 0.7},
                [7] = {[1] = "LeftUpperArm", [2] = -1, [3] = 0.5},
                [8] = {[1] = "RightUpperArm", [2] = 1, [3] = 0.5}
            }) do
                local c18 = c1:FindFirstChild(c17[1])
                if c18 then
                    local c19 = string.find(c17[1], "Arm") ~= nil
                    local c20 = string.find(c17[1], "Left") ~= nil
                    table.insert(c12, {al = b23(c18, c17[1], c3 * 140, 11), side = c17[2], amp = c17[3], arm = c19, left = c20})
                end
            end
            local c21 = {}
            for c25, c26 in ipairs({
                [1] = {[1] = "LeftHand", [2] = "Left Arm", [3] = true},
                [2] = {[1] = "RightHand", [2] = "Right Arm", [3] = false}
            }) do
                local c27 = c1:FindFirstChild(c26[1]) or c1:FindFirstChild(c26[2])
                if c27 then
                    local c28 = b22(c27, "Hand" .. (c26[3] and "L" or "R"))
                    if c27.Name == c26[2] then
                        c28.Position = Vector3.new(0, -c27.Size.Y / 2 + 0.2, 0)
                    end
                    local c29 = Instance.new("AlignPosition")
                    c29.Name = "RYOIKI_Skin_Grab"
                    c29.Mode = Enum.PositionAlignmentMode.OneAttachment
                    c29.Attachment0 = c28
                    c29.MaxForce = c3 * workspace.Gravity * 2
                    c29.Responsiveness = 30
                    c29.Enabled = false
                    c29.Parent = c27
                    table.insert(b10, c29)
                    table.insert(c21, {ap = c29, left = c26[3], grab = nil})
                end
            end
            local c32, c31, c30 = ipairs(c1:GetDescendants())
            while true do
                local c34 = c32(c31, c30)
                if c33 == nil then
                    break
                end
                c30 = c33
                if c34:IsA("BallSocketConstraint") and c34.Attachment0 and c34.Attachment1 then
                    local c36 = c34.Attachment1.Parent and c34.Attachment1.Parent.Name or ""
                    local c35 = c34.Attachment0.Parent and c34.Attachment0.Parent.Name or ""
                    local c37 = string.find(c35, "Torso") or string.find(c36, "Torso")
                    if c37 and (c35 == "Head" or c36 == "Head") then
                        table.insert(b4, {
                            c = c34,
                            ua = c34.UpperAngle,
                            tw = c34.TwistLimitsEnabled,
                            tl = c34.TwistLowerAngle,
                            tu = c34.TwistUpperAngle,
                            neck = true
                        })
                        pcall(function()
                            c34.UpperAngle = 10
                            c34.TwistLimitsEnabled = true
                            c34.TwistLowerAngle = -15
                            c34.TwistUpperAngle = 15
                        end)
                    end
                end
            end
            local c38 = {}
            for c42, c43 in ipairs({
                [1] = {
                    [1] = "Left Arm",
                    [2] = "LeftUpperArm",
                    [3] = -1,
                    [4] = "LeftShoulderRigAttachment",
                    [5] = "Left Shoulder"
                },
                [2] = {
                    [1] = "Right Arm",
                    [2] = "RightUpperArm",
                    [3] = 1,
                    [4] = "RightShoulderRigAttachment",
                    [5] = "Right Shoulder"
                }
            }) do
                local c44 = c1:FindFirstChild(c43[1]) or c1:FindFirstChild(c43[2])
                if c44 then
                    for c48, c49 in ipairs(c1:GetDescendants()) do
                        if c49:IsA("Constraint") and c49.Attachment0 and c49.Attachment1 then
                            local c51 = c49.Attachment1.Parent
                            local c50 = c49.Attachment0.Parent
                            if c50 == c2 and c51 == c44 or c50 == c44 and c51 == c2 then
                                table.insert(b4, {c = c49, orig = true, en = c49.Enabled})
                            end
                        end
                    end
                    local c53 = nil
                    local c52 = nil
                    local c55 = c44:FindFirstChild(c43[4])
                    local c54 = c2:FindFirstChild(c43[4])
                    if c54 and c55 and c54:IsA("Attachment") and c55:IsA("Attachment") then
                        c53 = c55.CFrame
                        c52 = c54.CFrame
                    else
                        local c56 = c2:FindFirstChild(c43[5])
                        if c56 and c56:IsA("Motor6D") then
                            c53 = c56.C1
                            c52 = c56.C0
                        else
                            c53 = CFrame.new(-c43[3] * 0.5, 0.5, 0)
                            c52 = CFrame.new(c43[3], 0.5, 0)
                        end
                    end
                    local c57 = b22(c2, "Shoulder" .. c43[3])
                    c57.CFrame = c52
                    local c58 = b22(c44, "Shoulder" .. c43[3])
                    c58.CFrame = c53
                    local c59 = Instance.new("BallSocketConstraint")
                    c59.Name = "RYOIKI_Skin_Shoulder"
                    c59.Attachment0 = c57
                    c59.Attachment1 = c58
                    c59.LimitsEnabled = false
                    c59.Enabled = false
                    c59.Parent = c2
                    table.insert(b10, c59)
                    local c60 = Instance.new("NoCollisionConstraint")
                    c60.Name = "RYOIKI_Skin_NoCollide"
                    c60.Part0 = c2
                    c60.Part1 = c44
                    c60.Parent = c2
                    table.insert(b10, c60)
                    table.insert(c38, c59)
                end
            end
            local c61 = false
            local function c62(d1)
                if d1 == c61 then
                    return
                end
                c61 = d1
                for d5, d6 in ipairs(c38) do
                    if d1 then
                        d6.Enabled = true
                    end
                end
                local d9, d8, d7 = ipairs(b4)
                while true do
                    local d11 = d9(d8, d7)
                    if d10 == nil then
                        break
                    end
                    d7 = d10
                    if d11.orig then
                        pcall(function()
                            d11.c.Enabled = not d1 and d11.en or false
                        end)
                    end
                end
                for d15, d16 in ipairs(c38) do
                    if not d1 then
                        d16.Enabled = false
                    end
                end
            end
            local c63 = c1:FindFirstChild("Head")
            local c64 = c63 and b23(c63, "Head", c3 * 300, 30) or nil
            local function c65(d1, d2)
                c9.CFrame = d1
                if c64 then
                    c64.CFrame = d2 or d1
                end
            end
            local function c66()
                for d4, d5 in ipairs(c21) do
                    d5.ap.Enabled = false
                    d5.grab = nil
                end
                c62(false)
            end
            local c69, c68, c67 = ipairs(c1:GetDescendants())
            while true do
                local c71 = c69(c68, c67)
                if c70 == nil then
                    break
                end
                c67 = c70
                if c71:IsA("BasePart") and (string.find(c71.Name, "Leg") or string.find(c71.Name, "Foot")) then
                    table.insert(b12, {[1] = c71, [2] = c71.CustomPhysicalProperties})
                    pcall(function()
                        local d1 = c71.CustomPhysicalProperties or PhysicalProperties.new(c71.Material)
                        c71.CustomPhysicalProperties = PhysicalProperties.new(d1.Density, 0, d1.Elasticity, 100, d1.ElasticityWeight)
                    end)
                end
            end
            pcall(function()
                workspace.CurrentCamera.CameraSubject = c1:FindFirstChild("Head") or c2
            end)
            if game:GetService("UserInputService").KeyboardEnabled then
                b20(true)
            end
            local c72 = RaycastParams.new()
            c72.FilterType = Enum.RaycastFilterType.Exclude
            c72.FilterDescendantsInstances = {[1] = c1}
            c72.RespectCanCollide = true
            local c73 = c2.CFrame.LookVector
            c73 = Vector3.new(c73.X, 0, c73.Z)
            c73 = c73.Magnitude > 0.01 and c73.Unit or Vector3.new(0, 0, -1)
            local c74 = 0
            local c76 = os.clock() + 2.5 + math.random() * 3
            local c75 = 0
            local c77 = math.random() * 100
            local c79 = 0
            local c78 = 0
            local c81 = 0
            local c80 = 0
            local c84 = 0
            local c83 = 0
            local c82 = 0
            local c85 = 2.6
            local c88 = 0
            local c87 = nil
            local c86 = false
            local c89 = false
            local c92 = false
            local c91 = 0
            local c90 = 1
            local c97 = 0
            local c96 = 0
            local c95 = nil
            local c94 = nil
            local c93 = nil
            local c99 = nil
            local c98 = 0
            b11 = b1.Heartbeat:Connect(function(d1)
                if not b3.Enabled or not c2.Parent or b2.Character ~= c1 then
                    b21()
                    return
                end
                c74 = c74 + d1
                b5 = c2.Position
                if b3.Hold then
                    if not c89 then
                        c89 = true
                        c11.Force = Vector3.zero
                        c9.Enabled = false
                        if c64 then
                            c64.Enabled = false
                        end
                        for d5, d6 in ipairs(c12) do
                            d6.al.Enabled = false
                        end
                        c86 = false
                        c66()
                    end
                    return
                elseif c89 then
                    c89 = false
                    c9.Enabled = true
                    if c64 then
                        c64.Enabled = true
                    end
                    for d10, d11 in ipairs(c12) do
                        d11.al.Enabled = true
                    end
                    c79 = os.clock() + 1.2
                end
                local d12 = b16()
                local d13 = false
                if b3.Auto and d12.Magnitude < 0.05 then
                    local d14 = math.noise(c74 * 0.25, c77 + 11) * 1.1
                    local d15 = b9(c2.Position, c73 * 4, c72)
                    local d16 = b9(c2.Position + c73 * 3, Vector3.new(0, -8, 0), c72)
                    d13 = d15 ~= nil or d16 == nil
                    if d13 then
                        d14 = 2.6
                    end
                    local d17 = CFrame.fromAxisAngle(Vector3.yAxis, d14 * d1):VectorToWorldSpace(c73)
                    d12 = Vector3.new(d17.X, 0, d17.Z).Unit
                end
                local d18 = d12.Magnitude > 0.05
                c81 = c81 + ((d18 and 1 or 0) - c81) * math.clamp(d1 * 6, 0, 1)
                c80 = c80 + d1 * (2.6 + 4.6 * c81)
                local d19 = math.sin(c80) * (0.45 + 0.55 * c81)
                if os.clock() >= c76 then
                    c75 = 1
                    c76 = os.clock() + 3 + math.random() * 4
                end
                c75 = c75 * (1 - math.clamp(d1 * 2.5, 0, 1))
                local d20 = math.deg(math.acos(math.clamp(c2.CFrame.UpVector.Y, -1, 1)))
                c78 = d20 > 50 and c78 + d1 or 0
                if c78 > 0.8 then
                    c79 = os.clock() + 1.2
                    c78 = 0
                end
                local d21 = os.clock() < c79
                c9.MaxTorque = c3 * (d21 and 3200 or 720)
                c9.Responsiveness = d21 and 22 or 8
                local d22 = workspace.Gravity
                local d23 = c2.AssemblyLinearVelocity
                local function d24(e1, e2)
                    local e3 = {}
                    local e5 = nil
                    local e4 = nil
                    for e9, e10 in ipairs({[1] = 0.9, [2] = 0, [3] = -0.8}) do
                        local e11 = b9(c2.Position + Vector3.new(0, e10, 0), e1 * e2, c72)
                        if e11 and math.abs(e11.Normal.Y) < 0.6 then
                            table.insert(e3, e11)
                            if not e4 or e11.Distance < e4.Distance then
                                e5 = e10
                                e4 = e11
                            end
                        end
                    end
                    local e12 = 0
                    if e4 then
                        for e16, e17 in ipairs(e3) do
                            if e17.Normal:Dot(e4.Normal) > 0.85 and math.abs(e17.Distance - e4.Distance) < 1.2 then
                                e12 = e12 + 1
                            end
                        end
                    end
                    return e4, e5, e12
                end
                if b3.WallCrawl and not d21 then
                    if not c86 and d18 then
                        local d25, d26, d27 = d24(c73, 2.4)
                        if not d25 or d27 < 2 then
                            d25, d26, d27 = d24(d12.Unit, 2.4)
                        end
                        if d25 and d27 >= 2 and d12.Unit:Dot(-d25.Normal) > 0.55 then
                            c88 = c88 + d1
                            if c88 > 0.15 then
                                c87 = Vector3.new(d25.Normal.X, 0, d25.Normal.Z).Unit
                                c86 = true
                                c88 = 0
                                c95 = nil
                                c94 = nil
                                c93 = nil
                                c91 = 0
                                c90 = 1
                                c92 = not c92
                                c62(true)
                            end
                        else
                            c88 = 0
                        end
                    end
                    if c86 then
                        local d28, d29 = d24(-c87, 3.2)
                        if d28 and d29 > -0.5 then
                            c87 = c87:Lerp(Vector3.new(d28.Normal.X, 0, d28.Normal.Z).Unit, math.clamp(d1 * 8, 0, 1)).Unit
                            local d30 = d18 and d12.Unit:Dot(-c87) or 0
                            if d30 < -0.4 then
                                c86 = false
                                c66()
                                c2.AssemblyLinearVelocity = d23 + c87 * 6
                            else
                                local d31 = -c87
                                local d32 = d31:Cross(Vector3.yAxis).Unit
                                local d33 = d18 and d12.Unit:Dot(d32) or 0
                                local d34 = d30 > 0.1 and d30 or 0
                                local d35 = d34 > 0.1 or math.abs(d33) > 0.15
                                local function d36(e1)
                                    return c2.Position + Vector3.new(0, 0.5, 0) + d32 * (e1 and -1 or 1) * 1.1
                                end
                                local function d37(e1, e2, e3)
                                    local e4 = e1 and -1 or 1
                                    local e5 = d36(e1) + Vector3.new(0, e2, 0) + d32 * (e4 * 0.4 + e3) + c87 * 0.8
                                    local e6 = b9(e5, d31 * 3.5, c72)
                                    return e6 and e6.Position + e6.Normal * 0.3 or nil
                                end
                                for d41, d42 in ipairs(c21) do
                                    if d42 ~= c93 and (not d42.grab or (d42.grab - d36(d42.left))["Magnitude"] > 3.6) then
                                        d42.grab = d37(d42.left, 1.2, 0)
                                    end
                                end
                                local d44 = 0.34
                                local d43 = 0.3
                                local d48 = -0.12
                                local d47 = 0
                                local d46 = 0
                                local d45 = 0
                                if d35 or c91 > 0 then
                                    if c91 == 0 and (c90 == 1 or c90 == 3) then
                                        local d49 = c90 == 1 == c92
                                        for d53, d54 in ipairs(c21) do
                                            if d54.left == d49 then
                                                c93 = d54
                                            end
                                        end
                                        if c93 then
                                            local d55 = d37(d49, 0.5 + 1.5 * d34, d33 * 1.6) or d37(d49, 0.5, d33 * 1.6)
                                            c95 = d55
                                            c94 = c93.grab or d55
                                            if not d55 then
                                                c93 = nil
                                            end
                                        end
                                        c97 = d33
                                        c96 = d34
                                    end
                                    c91 = c91 + d1
                                    local d56 = (c90 == 1 or c90 == 3) and d43 or d44
                                    local d57 = math.clamp(c91 / d56, 0, 1)
                                    if c90 == 1 or c90 == 3 then
                                        if c93 and c94 and c95 then
                                            local d58 = d57 * d57 * (3 - 2 * d57)
                                            c93.grab = c94:Lerp(c95, d58) + c87 * math.sin(math.pi * d57) * 0.8
                                            d47 = (c93.left and 1 or -1) * 0.1 * math.sin(math.pi * d57)
                                        end
                                    else
                                        local d59 = math.pi / (2 * d44) * math.sin(math.pi * d57)
                                        d45 = 1.5 * c96 * d59
                                        d46 = 1.3 * c97 * d59
                                        d48 = -0.12 - 0.12 * math.sin(math.pi * d57)
                                    end
                                    if d57 >= 1 then
                                        if c93 and c95 then
                                            c93.grab = c95
                                        end
                                        c95 = nil
                                        c94 = nil
                                        c93 = nil
                                        c91 = 0
                                        c90 = c90 % 4 + 1
                                    end
                                end
                                local d60 = math.clamp(c3 * (d22 + (d45 - d23.Y) * 12), -c3 * d22, c3 * d22 * 3)
                                local d61 = d23:Dot(d31)
                                local d62 = math.clamp(c3 * ((d28.Distance - 1) * 60 - d61 * 10 + 4), -c3 * 80, c3 * 80)
                                local d63 = math.clamp(c3 * (d46 - d23:Dot(d32)) * 10, -c3 * 40, c3 * 40)
                                c11.Force = Vector3.new(0, d60, 0) + d31 * d62 + d32 * d63
                                c73 = d31
                                c83 = 0
                                c82 = 0
                                c9.MaxTorque = c3 * 2500
                                c9.Responsiveness = 18
                                local d64 = CFrame.lookAt(Vector3.zero, c73)
                                c65(d64 * CFrame.Angles(d48, 0, d47 + math.noise(c74 * 1.1, c77) * 0.04), d64 * CFrame.Angles(0.15, 0, 0))
                                local d65 = c91 > 0 and (c90 == 2 or c90 == 4)
                                for d69, d70 in ipairs(c21) do
                                    if d70.grab then
                                        d70.ap.Position = d70.grab
                                        d70.ap.MaxForce = c3 * d22 * (d70 == c93 and 0.8 or d65 and 0.5 or 1.2)
                                        d70.ap.Responsiveness = d70 == c93 and 45 or 30
                                        d70.ap.Enabled = true
                                    else
                                        d70.ap.Enabled = false
                                    end
                                end
                                for d74, d75 in ipairs(c12) do
                                    local d76 = nil
                                    if d75.arm then
                                        local d77 = nil
                                        for d81, d82 in ipairs(c21) do
                                            if d82.left == d75.left then
                                                d77 = d82
                                            end
                                        end
                                        local d83 = d77 and d77.grab and d77.grab - d36(d75.left) or Vector3.new(0, 1, 0) + d31 * 0.4
                                        local d84 = -d83.Unit
                                        local d85 = d32 - d84 * d32:Dot(d84)
                                        d85 = d85.Magnitude > 0.05 and d85.Unit or d84:Cross(c87).Unit
                                        d76 = CFrame.fromMatrix(Vector3.zero, d85, d84)
                                    else
                                        local d86 = 0.35
                                        local d87 = c91 / ((c90 == 1 or c90 == 3) and d43 or d44)
                                        if c93 and c93.left ~= d75.left then
                                            d86 = 0.35 + 0.5 * math.sin(math.pi * math.clamp(d87, 0, 1))
                                        elseif d65 then
                                            d86 = 0.35 - 0.2 * math.sin(math.pi * math.clamp(d87, 0, 1))
                                        end
                                        d76 = d64 * CFrame.Angles(d86, 0, (d75.left and -1 or 1) * 0.2)
                                    end
                                    d75.al.CFrame = d76
                                    d75.al.MaxTorque = c3 * 400
                                end
                                return
                            end
                        else
                            c86 = false
                            c66()
                            c99 = -c87
                            c98 = os.clock() + 0.6
                        end
                    end
                elseif c86 then
                    c86 = false
                    c66()
                end
                if not c86 then
                    for d91, d92 in ipairs(c12) do
                        d92.al.MaxTorque = c3 * 140
                    end
                end
                if os.clock() < c98 and c99 then
                    local d93 = math.clamp(c3 * (d22 + (8 - d23.Y) * 10), 0, c3 * d22 * 3)
                    local d94 = math.clamp(c3 * (5 - d23:Dot(c99)) * 8, -c3 * 40, c3 * 40)
                    c11.Force = Vector3.new(0, d93, 0) + c99 * d94
                    c73 = c99
                    c83 = 0
                    c82 = 0
                    c65(CFrame.lookAt(Vector3.zero, c73) * CFrame.Angles(-0.3, 0, 0), CFrame.lookAt(Vector3.zero, c73))
                    return
                end
                local d95 = c2.AssemblyLinearVelocity:Dot(c73)
                if c82 > 1 and d95 < c82 * 0.3 then
                    c83 = c83 + d1
                else
                    c83 = 0
                end
                if c83 > 0.2 then
                    c84 = os.clock() + 0.5
                    c83 = 0
                end
                local d96 = os.clock() < c84
                local d97 = b9(c2.Position, Vector3.new(0, -5, 0), c72)
                local d98 = d97 and d97.Position.Y or nil
                if d98 and d18 and not d21 then
                    for d102, d103 in ipairs({[1] = 1, [2] = 1.8, [3] = 2.6}) do
                        local d104 = b9(c2.Position + c73 * d103 + Vector3.new(0, 0.8, 0), Vector3.new(0, -6, 0), c72)
                        if d104 and d104.Normal.Y > 0.5 then
                            local d105 = d104.Position.Y - d98
                            if d105 > 0.02 and d105 <= c85 then
                                d98 = math.max(d98, d104.Position.Y)
                            end
                        end
                    end
                end
                local d106 = 0
                if d98 then
                    local d107 = 2.8 + math.abs(math.cos(c80)) * 0.12 + (d96 and 1.2 or 0)
                    local d108 = d98 + d107 - c2.Position.Y
                    if d108 > -0.4 then
                        local d109 = c2.AssemblyLinearVelocity.Y
                        d106 = c3 * (d22 + d108 * 55 - d109 * 7)
                        d106 = math.clamp(d106, 0, c3 * d22 * ((d21 or d96) and 2.4 or 1.9))
                    end
                end
                if d18 and not d21 then
                    c73 = c73:Lerp(d12.Unit, math.clamp(d1 * 12, 0, 1))
                    if c73.Magnitude > 0.01 then
                        c73 = Vector3.new(c73.X, 0, c73.Z).Unit
                    end
                end
                local d110 = Vector3.new(-c73.Z, 0, c73.X)
                local d111 = c2.AssemblyLinearVelocity
                local d112 = d18 and d12.Unit:Dot(c73) or 0
                local d113 = d18 and not d21 and 6 * math.clamp(d112, 0.2, 1) * (d13 and 0.3 or 1) or 0
                c82 = d113
                local d114 = d96 and 45 or 30
                local d115 = math.clamp((d113 - d111:Dot(c73)) * c3 * 6, -c3 * 30, c3 * d114)
                local d116 = -d111:Dot(d110) * c3 * 4
                c11.Force = Vector3.new(0, d106, 0) + c73 * d115 + d110 * (d19 * c3 * 7 + d116)
                local d117 = math.noise(c74 * 0.9, c77)
                local d118 = math.noise(c77, c74 * 0.8)
                local d119 = (d21 and -0.03 or -0.03 - 0.1 * c81) + d117 * 0.06 + c75 * 0.2 * math.sin(c74 * 7)
                local d120 = d19 * 0.13 + d118 * 0.05 + c75 * 0.16 * math.cos(c74 * 6)
                local d121 = d19 * 0.07
                local d122 = CFrame.lookAt(Vector3.zero, c73)
                c65(d122 * CFrame.Angles(d119, d121, d120), d122 * CFrame.Angles(d119 * 0.5, d121 * 0.5, d120 * 0.5))
                for d126, d127 in ipairs(c12) do
                    local d129 = nil
                    local d128 = nil
                    if d127.arm then
                        d128 = d19 * 0.3 * (d127.left and 1 or -1) + math.noise(c74 * 1.3, c77 + (d127.left and 3 or 7)) * 0.12
                        d129 = (d127.left and -1 or 1) * (0.1 + math.abs(d120) * 0.8 + c75 * 0.25)
                    else
                        local d130 = d127.left and math.max(0, d19) or math.max(0, -d19)
                        local d131 = d127.left and math.max(0, -d19) or math.max(0, d19)
                        d128 = -d130 * 0.4 + d131 * 0.2 - d119 * 0.5
                        d129 = -d120 * 0.5 + (d127.left and -0.04 or 0.04)
                    end
                    d128 = math.clamp(d128, -0.5, 0.5)
                    d129 = math.clamp(d129, -0.35, 0.35)
                    d127.al.CFrame = d122 * CFrame.Angles(d128, d121 * 0.5, d129)
                end
            end)
        end
        local b25 = nil
        local function b26(c1)
            local c2 = c1:FindFirstChildOfClass("Humanoid")
            if not c2 then
                return false
            end
            if c2.Health <= 0 then
                return true
            end
            local c3, c4 = pcall(function()
                return c2:GetState()
            end)
            if c3 and c4 == Enum.HumanoidStateType.Dead then
                return true
            end
            return c1:GetAttribute("Dead") == true
        end
        local function b27(c1)
            if b25 == c1 or b3.Paused then
                return
            end
            b25 = c1
            local c2 = c1:FindFirstChild("HumanoidRootPart") or c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso")
            b6 = b7 or c2 and c2.Position or nil
            b5 = b6
            local c3 = os.clock()
            while b7 and os.clock() - c3 < 25 do
                task.wait(0.05)
            end
            task.wait(b3.GetUp)
            if not b3.Enabled or b2.Character ~= c1 then
                return
            end
            b24(c1)
            local c4 = c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso")
            local c5 = nil
            if c4 and typeof(isnetworkowner) == "function" then
                local c6, c7 = pcall(isnetworkowner, c4)
                c5 = c6 and c7 or nil
            end
            if c5 == false then
                a67("Skinwalker", "The game took control of your body when you died (the server moves it now), so it can't walk.", 5)
                a72("Skinwalker: body is controlled by the server", "warn")
            else
                a72("Skinwalker: you're up, walk with WASD", "accent")
            end
        end
        local function b28(c1, c2, c3)
            return b9(c1, c2, c3, 1.5)
        end
        local function b29(c1, c2)
            local c3 = c1:WaitForChild("HumanoidRootPart", 10)
            local c4 = c1:WaitForChild("Humanoid", 10)
            if not c3 or not c4 then
                return
            end
            local c5 = os.clock()
            while os.clock() - c5 < 3 and (c3.Anchored or c4.Health <= 0) do
                task.wait(0.05)
            end
            task.wait(0.15)
            if b2.Character ~= c1 or c4.Health <= 0 or not b3.Return then
                return
            end
            local c6 = c2 + Vector3.new(0, 3, 0)
            b7 = c2
            a72("Auto Skinwalker: resetting and flying back...", "accent")
            if b3.Enabled then
                task.spawn(function()
                    if not b3.ResetNow() then
                        a67("Auto Skinwalker", "Reset didn't go through. Reset yourself to keep going.", 4)
                    end
                end)
            end
            local c7 = c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso") or c3
            local c8 = RaycastParams.new()
            c8.FilterType = Enum.RaycastFilterType.Exclude
            local c9 = {}
            for c13, c14 in ipairs(Players:GetPlayers()) do
                if c14.Character then
                    table.insert(c9, c14.Character)
                end
            end
            c8.FilterDescendantsInstances = c9
            c8.RespectCanCollide = true
            local c15 = {}
            for c19, c20 in ipairs(c1:GetDescendants()) do
                if c20:IsA("BasePart") then
                    c15[c20] = c20.CanCollide
                end
            end
            pcall(function()
                c4.PlatformStand = true
            end)
            local c21 = os.clock()
            local c23 = os.clock()
            local c22 = math.huge
            local c26 = false
            local c25 = 0
            local c24 = 0
            local c27 = false
            while b2.Character == c1 and c1.Parent and c7.Parent and b3.Return and os.clock() - c21 < b3.MaxFly do
                local c28 = c7.Position
                local c29 = c6 - c28
                local c30 = c29.Magnitude
                if c30 < 2.5 then
                    c27 = true
                    break
                end
                if c30 < c22 - 1.5 then
                    c23 = os.clock()
                    c22 = c30
                elseif os.clock() - c23 > 0.8 then
                    c25 = c25 + 1
                    c23 = os.clock()
                    c22 = c30
                    c24 = os.clock() + 0.5
                    if c25 >= 4 then
                        c26 = true
                    end
                end
                if c26 then
                    for c34 in pairs(c15) do
                        c34.CanCollide = false
                    end
                end
                local c35 = c29.Unit
                local c36 = math.min(b3.FlySpeed, c30 * 5 + 10)
                local c37 = math.clamp(c36 * 0.3, 5, 35)
                local c38 = nil
                if os.clock() < c24 and not c26 then
                    c38 = Vector3.new(0, c36, 0)
                else
                    local c39 = not c26 and b28(c28, c35 * c37, c8)
                    if not c39 then
                        c38 = c35 * c36
                    else
                        local c40 = c39.Normal
                        local c41 = c35 - c40 * c35:Dot(c40)
                        if c40.Y > 0.6 then
                            c38 = (c41.Magnitude > 0.05 and c41.Unit or Vector3.yAxis) * c36 + Vector3.new(0, c36 * 0.3, 0)
                        elseif c40.Y < -0.6 then
                            c38 = (c41.Magnitude > 0.05 and c41.Unit or -c40) * c36
                        elseif not b28(c28 + Vector3.new(0, 3, 0), Vector3.new(c35.X, 0, c35.Z) * (c39.Distance + 3), c8) then
                            c38 = c35 * c36 + Vector3.new(0, c36 * 0.5, 0)
                        else
                            local c42 = Vector3.new(c41.X, 0, c41.Z)
                            c38 = Vector3.new(0, c36, 0) + c42 * c36 * 0.4
                            if b28(c28, Vector3.new(0, 5, 0), c8) then
                                c38 = (c42.Magnitude > 0.05 and c42.Unit or Vector3.new(-c40.Z, 0, c40.X)) * c36
                            end
                        end
                    end
                end
                for c46 in pairs(c15) do
                    if c46.Parent then
                        c46.AssemblyLinearVelocity = c38
                        c46.AssemblyAngularVelocity = Vector3.zero
                    end
                end
                b1.Stepped:Wait()
            end
            for c50 in pairs(c15) do
                pcall(function()
                    c50.AssemblyLinearVelocity = Vector3.zero
                end)
            end
            pcall(function()
                c4.PlatformStand = false
            end)
            local c53, c52, c51 = pairs(c15)
            while true do
                local c55 = c53(c52, c51)
                local c54 = c53(c52, c51)
                if c54 == nil then
                    break
                end
                c51 = c54
                pcall(function()
                    c54.CanCollide = c55
                end)
            end
            b7 = nil
            if c27 then
                a72("Auto Skinwalker: back where you were", "accent")
            else
                a72("Auto Skinwalker: took too long, dropped you here", "warn")
            end
        end
        a39(b2.CharacterAdded:Connect(function(c1)
            local c2 = b25 ~= nil
            b21()
            b25 = nil
            if b3.Return and c2 and not b3.Paused then
                local c3 = b3.ReturnTo == "Body" and b5 or b6
                if c3 and c3.Y < workspace.FallenPartsDestroyHeight + 30 then
                    c3 = b6
                end
                if c3 then
                    task.spawn(b29, c1, c3)
                end
            end
            b6 = nil
            b5 = nil
        end))
        local b30 = false
        b3.ResetNow = function()
            local c1 = b2.Character
            if b30 then
                local c2 = os.clock()
                while b30 and os.clock() - c2 < 10 do
                    task.wait(0.05)
                end
                return c1 ~= nil and (b2.Character ~= c1 or b26(c1))
            end
            local c3 = c1 and c1:FindFirstChildOfClass("Humanoid")
            if not c3 or c3.Health <= 0 then
                return false
            end
            b30 = true
            local c4 = V.a257.ResetFast(8)
            b30 = false
            return c4
        end
        task.spawn(function()
            while a37 do
                local c1 = b2.Character
                if b3.Enabled and c1 and b25 ~= c1 and b26(c1) then
                    task.spawn(b27, c1)
                end
                task.wait(0.2)
            end
        end)
        b3.Set = function(c1)
            b3.Enabled = c1 and true or false
            if not b3.Enabled then
                b21()
            end
        end
        return b3
    end)()
    V.a260 = (function()
        local b1 = false
        local b2 = a40("CanvasGroup", {
            Name = "SkinwalkerMenu",
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(130, 32),
            Size = UDim2.fromOffset(470, 326),
            GroupTransparency = 1,
            Visible = false,
            Active = true,
            Parent = a84
        })
        a40("TextLabel", {
            Text = "SKINWALKER",
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 6),
            Size = UDim2.fromOffset(260, 20),
            Parent = b2
        })
        a40("TextLabel", {
            Text = "When you die, your body gets back up and walks.",
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 26),
            Size = UDim2.fromOffset(330, 14),
            Parent = b2
        })
        a40("Frame", {
            BackgroundColor3 = a32.Stroke,
            Position = UDim2.fromOffset(0, 44),
            Size = UDim2.new(1, 0, 0, 1),
            Parent = b2
        })
        a155 = function()
            if not b1 then
                return
            end
            b1 = false
            local c1 = a41(b2, 0.15, {GroupTransparency = 1})
            c1.Completed:Once(function()
                if not b1 then
                    b2.Visible = false
                end
            end)
        end
        local b3 = a74(b2, "Close", a155)
        b3.AnchorPoint = Vector2.new(1, 0)
        b3.Position = UDim2.new(1, -16, 0, 10)
        b3.Size = UDim2.fromOffset(70, 24)
        local b4 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(0, 50),
            Size = UDim2.new(1, 0, 1, -56),
            ScrollBarThickness = 3,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = b2
        })
        a35(b4, "ScrollBarImageColor3")
        a40("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder, Parent = b4})
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 16),
            PaddingRight = UDim.new(0, 16),
            PaddingBottom = UDim.new(0, 6),
            Parent = b4
        })
        local b5 = 0
        local function b6(c1, c2)
            b5 = b5 + 1
            local c3 = a40("Frame", {BackgroundColor3 = a32.Panel, Size = UDim2.new(1, -6, 0, 38), LayoutOrder = b5, Parent = b4})
            a49(c3, a32.Stroke)
            a40("TextLabel", {
                Text = string.upper(c1),
                Font = Enum.Font.GothamBold,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2.fromOffset(12, 5),
                Size = UDim2.fromOffset(180, 14),
                Parent = c3
            })
            a40("TextLabel", {
                Text = c2 or "",
                TextSize = 9,
                TextColor3 = a32.Muted,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(12, 20),
                Size = UDim2.fromOffset(180, 12),
                Parent = c3
            })
            return c3
        end
        local function b7(c1, c2, c3, c4)
            local c5 = "skin/" .. c1
            local c6 = a57.Get(c5)
            if type(c6) == "boolean" then
                c3 = c6
                c4(c6)
            end
            local c7 = b6(c1, c2)
            local c8 = a75(c7, c3, function(d1)
                a57.Set(c5, d1)
                c4(d1)
            end)
            c8.Position = UDim2.fromOffset(200, 8)
            c8.Size = UDim2.fromOffset(120, 22)
        end
        local function b8(c1, c2, c3, c4, c5, c6, c7, c8)
            local c9 = "skin/" .. c1
            local c10 = a57.Get(c9)
            if type(c10) == "number" then
                c5 = math.clamp(c10, c3, c4)
                c8(c5)
            end
            local c11 = b6(c1, c2)
            local c12 = a76(c11, c3, c4, c5, c6, c7, function(d1)
                a57.Set(c9, d1)
                c8(d1)
            end)
            c12.Position = UDim2.fromOffset(200, 8)
            c12.Size = UDim2.fromOffset(220, 22)
        end
        local function b9(c1, c2, c3, c4)
            local c5 = b6(c1, c2)
            local c6 = nil
            c6 = a74(c5, c3, function()
                c4(c6)
            end)
            c6.Position = UDim2.fromOffset(200, 8)
            c6.Size = UDim2.fromOffset(120, 22)
        end
        b7("Skinwalker", "Your body gets up when you die, walk it with WASD", V.a259.Enabled, function(c1)
            V.a259.Set(c1)
        end)
        b7("Auto Walk", "Wanders by itself, WASD still takes over", V.a259.Auto, function(c1)
            V.a259.Auto = c1
        end)
        b7("Wall Crawl", "Walk into a wall to climb it. W up, A/D side, S let go", V.a259.WallCrawl, function(c1)
            V.a259.WallCrawl = c1
        end)
        b8("Get up delay", "How long the body lies there before it gets up", 0, 3, V.a259.GetUp, 0.1, "s", function(c1)
            V.a259.GetUp = c1
        end)
        b9("Reset now", "Kills you here so Skinwalker starts on the spot", "Reset", function()
            if not V.a259.Enabled then
                a67("Skinwalker", "Turn on Skinwalker first.", 3)
                return
            end
            a72("Skinwalker: resetting...", "accent")
            task.spawn(function()
                if not V.a259.ResetNow() then
                    a67("Skinwalker", "Reset didn't go through. Try again.", 4)
                end
            end)
        end)
        b7("Auto Skinwalker", "Loop: respawn, fly back to the spot, reset there", V.a259.Return, function(c1)
            V.a259.Return = c1
        end)
        if a57.Get("skin/Fly back to") == "Death" then
            V.a259.ReturnTo = "Death"
        end
        b9("Fly back to", "Where the walking body ended up, or where you died", V.a259.ReturnTo == "Body" and "BODY SPOT" or "DEATH SPOT", function(c1)
            V.a259.ReturnTo = V.a259.ReturnTo == "Body" and "Death" or "Body"
            a57.Set("skin/Fly back to", V.a259.ReturnTo)
            c1.Text = V.a259.ReturnTo == "Body" and "BODY SPOT" or "DEATH SPOT"
        end)
        b8("Fly speed", "How fast Auto Skinwalker flies you back", 30, 250, V.a259.FlySpeed, 5, "", function(c1)
            V.a259.FlySpeed = c1
        end)
        b8("Max fly time", "Flying back takes longer than this = stop and drop you", 0.5, 10, V.a259.MaxFly, 0.1, "s", function(c1)
            V.a259.MaxFly = c1
        end)
        return function()
            if b1 then
                a155()
                return
            end
            a132()
            a165()
            V.a192()
            a156()
            b1 = true
            b2.Position = UDim2.fromOffset(138, 32)
            b2.GroupTransparency = 1
            b2.Visible = true
            a41(b2, 0.2, {Position = UDim2.fromOffset(130, 32), GroupTransparency = 0})
            a72("Skinwalker menu opened", "ok")
        end
    end)()
    V.a261 = function()
    
    end
    V.a262 = function()
    
    end
    V.a263 = (function()
        local b1 = game:GetService("RunService")
        local b2 = Players.LocalPlayer
        local b3 = {Enabled = false, Speed = 120, Spin = 25, Marker = true, Shake = 0}
        local b4 = {}
        local b5 = {Speed = 450, Spin = 80, Time = 40, Radius = 120}
        local b7 = 0
        local b6 = 0
        local b9 = nil
        local b8 = nil
        local function b10(c1)
            if typeof(isnetworkowner) ~= "function" then
                return nil
            end
            local c2 = false
            for c6, c7 in ipairs({[1] = "HumanoidRootPart", [2] = "Torso", [3] = "UpperTorso", [4] = "LowerTorso", [5] = "Head"}) do
                local c8 = c1:FindFirstChild(c7)
                if c8 and c8:IsA("BasePart") then
                    local c9, c10 = pcall(isnetworkowner, c8)
                    if c9 and c10 == true then
                        return true
                    elseif c9 and c10 == false then
                        c2 = true
                    end
                end
            end
            return c2 and false or nil
        end
        local b16 = nil
        local b15 = 0
        local b14 = 0
        local b13 = 0
        local b12 = {}
        local b11 = {}
        local b20 = 0
        local b19 = 0
        local b18 = nil
        local b17 = nil
        local b22 = 0
        local b21 = 0
        local b27 = 0
        local b26 = nil
        local b25 = {}
        local b24 = 1
        local b23 = {}
        local b30 = 0
        local b29 = 0
        local b28 = false
        local b31 = false
        b5.AliveSpeed = 220
        local b32 = nil
        local b36 = nil
        local b35 = nil
        local b34 = nil
        local b33 = nil
        local b38 = nil
        local b37 = nil
        local function b39(c1)
            local c2 = c1:FindFirstChildOfClass("Humanoid")
            if c2 and c2.Health <= 0 then
                return true
            end
            local c3 = c1:GetAttribute("Ragdoll")
            if typeof(c3) == "number" and c3 > 0 or c3 == true or c1:GetAttribute("Dead") == true then
                return true
            end
            if c2 then
                if c2.PlatformStand then
                    return true
                end
                local c4, c5 = pcall(function()
                    return c2:GetState()
                end)
                if c4 and (c5 == Enum.HumanoidStateType.Physics or c5 == Enum.HumanoidStateType.Ragdoll or c5 == Enum.HumanoidStateType.FallingDown or c5 == Enum.HumanoidStateType.Dead) then
                    return true
                end
            end
            return false
        end
        local function b40()
            if not a84.Visible then
                return false
            end
            local c1 = UserInputService:GetMouseLocation()
            local c3 = a84.AbsoluteSize
            local c2 = a84.AbsolutePosition
            return c1.X >= c2.X and c1.X <= c2.X + c3.X and c1.Y >= c2.Y and c1.Y <= c2.Y + c3.Y
        end
        local b41 = RaycastParams.new()
        b41.FilterType = Enum.RaycastFilterType.Exclude
        b41.RespectCanCollide = true
        local function b42(c1)
            local c2 = workspace.CurrentCamera
            local c3 = UserInputService:GetMouseLocation()
            local c4 = c2:ViewportPointToRay(c3.X, c3.Y)
            local c5 = {[1] = c1}
            if b34 then
                table.insert(c5, b34)
            end
            if b35 then
                table.insert(c5, b35)
            end
            b41.FilterDescendantsInstances = c5
            local c6 = workspace:Raycast(c4.Origin, c4.Direction * 1500, b41)
            return c6 and c6.Position or c4.Origin + c4.Direction * 300, c6 and c6.Instance
        end
        local function b43(c1)
            if not b3.Marker or not c1 then
                if b34 then
                    b34.Transparency = 1
                end
                return
            end
            if not b34 or not b34.Parent then
                b34 = Instance.new("Part")
                b34.Name = "RYOIKI_WreckMarker"
                b34.Shape = Enum.PartType.Ball
                b34.Size = Vector3.new(1.6, 1.6, 1.6)
                b34.Material = Enum.Material.Neon
                b34.Anchored = true
                b34.CanCollide = false
                b34.CanQuery = false
                b34.CanTouch = false
                b34.CastShadow = false
                b34.Parent = workspace
            end
            b34.Color = a32.Accent
            b34.Transparency = 0.35
            b34.CFrame = CFrame.new(c1)
        end
        local b44 = {}
        local function b45(c1)
            return Vector3.new(math.random() * 2 - 1, (math.random() * 2 - 1) * c1, math.random() * 2 - 1)
        end
        local function b46(c1, c2, c3, c4, c5)
            local c6 = {}
            local c7 = math.clamp((c5 or 0) / 100, 0, 1)
            local c8 = os.clock()
            for c12, c13 in ipairs(c1) do
                local c14 = c13.Parent and c13.AssemblyRootPart
                if c14 and not c6[c14] then
                    c6[c14] = true
                    local c15 = c3 + c4:Cross(c14.Position - c2)
                    local c16 = c4
                    if c7 > 0 then
                        local c17 = b44[c14]
                        if not c17 then
                            c17 = {cur = Vector3.zero, goal = Vector3.zero, goalW = Vector3.zero, next = 0}
                            b44[c14] = c17
                        end
                        if c8 >= c17.next then
                            c17.next = c8 + 0.12
                            c17.goal = b45(0)
                            c17.goalW = b45(1)
                        end
                        c17.cur = c17.cur:Lerp(c17.goal, 0.25)
                        local c18 = math.max(Vector3.new(c3.X, 0, c3.Z).Magnitude, 40)
                        local c19 = Vector3.new(c15.X, 0, c15.Z) + c17.cur * c18 * 0.6 * c7
                        local c20 = Vector3.new(c15.X, 0, c15.Z).Magnitude
                        c20 = math.max(c20, 40)
                        if c19.Magnitude > c20 then
                            c19 = c19.Unit * c20
                        end
                        c15 = Vector3.new(c19.X, c15.Y, c19.Z)
                        c16 = c4 + c17.goalW * 25 * c7
                    end
                    c14.AssemblyLinearVelocity = c15
                    c14.AssemblyAngularVelocity = c16
                end
            end
        end
        local function b47(c1, c2, c3)
            b44 = {}
            if not c3 then
                b31 = false
                V.a259.Paused = false
            end
            b32 = nil
            if b33 then
                b33:Disconnect()
                b33 = nil
            end
            b43(nil)
            local c4 = b2.Character
            if c4 then
                local c7, c6, c5 = ipairs(c4:GetDescendants())
                while true do
                    local c9 = c7(c6, c5)
                    if c8 == nil then
                        break
                    end
                    c5 = c8
                    if c9:IsA("BasePart") then
                        pcall(function()
                            c9.AssemblyAngularVelocity = Vector3.zero
                            c9.AssemblyLinearVelocity = Vector3.zero
                        end)
                    end
                end
            end
            local c12, c11, c10 = pairs(b4)
            while true do
                local c14 = c12(c11, c10)
                local c13 = c12(c11, c10)
                if c13 == nil then
                    break
                end
                c10 = c13
                pcall(function()
                    c13.CanCollide = c14
                end)
            end
            b4 = {}
            pcall(function()
                local d1 = workspace.CurrentCamera
                if d1.CameraSubject == b35 then
                    local d2 = c4 and c4:FindFirstChildOfClass("Humanoid")
                    d1.CameraSubject = b36 and b36.Parent and b36 or d2
                end
            end)
            if b35 then
                b35:Destroy()
                b35 = nil
            end
            b36 = nil
            V.a259.Hold = false
            if c1 then
                a72(c1, c2 or "accent")
            end
        end
        local b48 = OverlapParams.new()
        b48.FilterType = Enum.RaycastFilterType.Exclude
        b48.RespectCanCollide = true
        local b49 = {}
        local function b50(c1, c2)
            local c3 = {[1] = c1}
            for c7, c8 in ipairs(Players:GetPlayers()) do
                if c8.Character then
                    table.insert(c3, c8.Character)
                end
            end
            b48.FilterDescendantsInstances = c3
            local c9 = {}
            local c10, c11 = pcall(function()
                return workspace:GetPartBoundsInRadius(c2, b5.Radius, b48)
            end)
            local c12 = 16
            local c13 = {}
            local function c14(d1, d2)
                return math.floor(d1 / c12) .. "," .. math.floor(d2 / c12)
            end
            for c18, c19 in ipairs(c10 and c11 or {}) do
                local c20 = c14(c19.Position.X, c19.Position.Z)
                c13[c20] = (c13[c20] or 0) + 1
            end
            b49 = {}
            for c24, c25 in ipairs(c10 and c11 or {}) do
                if c25.Anchored and c25.Transparency < 1 and not c25:IsA("Terrain") then
                    local c26 = c25:FindFirstAncestorWhichIsA("Model")
                    local c27 = c25.Size
                    local c28 = c25.Position.Y + c27.Y / 2
                    if not (c26 and c26:FindFirstChildOfClass("Humanoid")) and math.max(c27.X, c27.Y, c27.Z) < 400 and c27.Y > 2 and c28 > c2.Y - 1 then
                        table.insert(c9, c25)
                        local c30 = math.floor(c25.Position.Z / c12)
                        local c29 = math.floor(c25.Position.X / c12)
                        local c31 = 0
                        for c35 = -1, 1 do
                            for c39 = -1, 1 do
                                c31 = c31 + (c13[c29 + c35 .. "," .. c30 + c39] or 0)
                            end
                        end
                        b49[c25] = c31
                    end
                end
            end
            table.sort(c9, function(d1, d2)
                return (b49[d1] or 0) > (b49[d2] or 0)
            end)
            while #c9 > 120 do
                table.remove(c9)
            end
            return c9
        end
        local function b51(c1, c2)
            local c3 = c1.CFrame:PointToObjectSpace(c2)
            local c4 = c1.Size / 2
            return c1.CFrame:PointToWorldSpace(Vector3.new(math.clamp(c3.X, -c4.X, c4.X), math.clamp(c3.Y, -c4.Y, c4.Y), math.clamp(c3.Z, -c4.Z, c4.Z)))
        end
        local b52 = RaycastParams.new()
        b52.FilterType = Enum.RaycastFilterType.Exclude
        b52.RespectCanCollide = true
        local function b53(c1, c2, c3)
            local c4 = {[1] = c1}
            for c8, c9 in ipairs(Players:GetPlayers()) do
                if c9.Character then
                    table.insert(c4, c9.Character)
                end
            end
            b52.FilterDescendantsInstances = c4
            return workspace:Raycast(c2, c3, b52)
        end
        local function b54(c1, c2)
            local c4 = {}
            local c3 = {}
            local c6 = nil
            local c5 = c1
            for c10 = 1, math.min(#c2, 60) do
                local c13 = nil
                local c12 = nil
                local c11 = nil
                for c17, c18 in ipairs(c2) do
                    if not c4[c18] and c18.Parent and c18.Anchored and (b25[c18] or 0) < 3 then
                        local c19 = b51(c18, c5)
                        local c20 = Vector3.new(c19.X - c5.X, 0, c19.Z - c5.Z)
                        local c21 = c20.Magnitude
                        local c22 = c21
                        if c6 and c21 > 0.5 then
                            c22 = c21 * (1 + (1 - c20.Unit:Dot(c6)) * 0.6)
                        end
                        c22 = c22 - (b49[c18] or 0) * 0.1
                        if not c12 or c22 < c12 then
                            c13 = c19
                            c12 = c22
                            c11 = c18
                        end
                    end
                end
                if not c11 then
                    break
                end
                c4[c11] = true
                local c23 = Vector3.new(c13.X - c5.X, 0, c13.Z - c5.Z)
                if c23.Magnitude > 0.5 then
                    c6 = c23.Unit
                end
                table.insert(c3, c11)
                c5 = c13
            end
            return c3
        end
        local function b55(c1, c2)
            if b32 then
                return
            end
            local c3 = c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso") or c1:FindFirstChild("HumanoidRootPart")
            if not c3 then
                return
            end
            b7 = os.clock() + 1
            b9 = nil
            b8 = nil
            b32 = c2 or "ram"
            b37 = c3.Position
            V.a259.Hold = true
            local c4 = {}
            for c8, c9 in ipairs(c1:GetDescendants()) do
                if c9:IsA("BasePart") then
                    table.insert(c4, c9)
                end
            end
            local c10 = c1:FindFirstChild("Head")
            b35 = Instance.new("Part")
            b35.Name = "RYOIKI_WreckCam"
            b35.Size = Vector3.new(0.2, 0.2, 0.2)
            b35.Transparency = 1
            b35.Anchored = true
            b35.CanCollide = false
            b35.CanQuery = false
            b35.CanTouch = false
            b35.CFrame = CFrame.new(c10 and c10.Position or b37 + Vector3.new(0, 1.5, 0))
            b35.Parent = workspace
            local c11 = workspace.CurrentCamera
            b36 = c11.CameraSubject
            c11.CameraSubject = b35
            local c12 = Vector3.new(1, 0, 0)
            b33 = b1.Heartbeat:Connect(function(d1)
                if b2.Character ~= c1 and b32 == "destroy" then
                    return
                end
                if b2.Character ~= c1 or not c3.Parent then
                    b47()
                    return
                end
                if workspace.CurrentCamera.CameraSubject ~= b35 then
                    workspace.CurrentCamera.CameraSubject = b35
                end
                local d2 = c3.Position
                if (b32 == "ram" or b32 == "destroy") and os.clock() >= b7 then
                    b7 = os.clock() + 0.25
                    if b10(c1) == false then
                        if not b8 then
                            b9 = d2
                            b8 = os.clock()
                        elseif os.clock() - b8 > 1.5 and (d2 - b9)["Magnitude"] < 3 then
                            if b32 == "destroy" then
                                b47("DESTROY MAP: the server took control of your body, it can't move anymore", "warn")
                            else
                                b47("Wrecking Ball: the server controls your body right now, so it can't fly", "warn")
                            end
                            return
                        end
                    else
                        b8 = nil
                    end
                end
                if b32 == "ram" then
                    if not b39(c1) then
                        b47("Wrecking Ball: you got up", "ok")
                        return
                    end
                    local d3 = b42(c1)
                    b43(d3)
                    local d4 = d3 - d2
                    local d5 = d4.Magnitude
                    local d6 = d5 > 0.5 and d4.Unit * math.max(b3.Speed * 0.6, math.min(b3.Speed, d5 * 8 + 60)) or Vector3.zero
                    local d7 = d5 > 0.5 and d4.Unit:Cross(Vector3.yAxis) or c12
                    if d7.Magnitude > 0.1 then
                        c12 = c12:Lerp(d7.Unit, math.clamp(d1 * 4, 0, 1)).Unit
                    end
                    b46(c4, d2, d6, c12 * b3.Spin + Vector3.new(0, b3.Spin * 0.3, 0), b3.Shake)
                elseif b32 == "destroy" then
                    local d8 = os.clock()
                    local d9 = b5.Time - (d8 - b14)
                    local d10 = b53(c1, d2 + Vector3.new(0, 1, 0), Vector3.new(0, -60, 0))
                    local d11 = (d2 - b16)["Magnitude"] < b5.Radius + 30
                    if d10 and d2.Y > b21 - 4 and d11 then
                        b6 = 0
                        if d8 >= b27 then
                            b27 = d8 + 0.1
                            local d12, d13 = pcall(function()
                                return workspace:GetPartBoundsInRadius(d2, 1.5, b48)
                            end)
                            if d12 and #d13 == 0 then
                                b26 = d2
                            end
                        end
                    else
                        b6 = b6 + d1
                    end
                    local d14 = d2.Y < b21 - 8 or d2.Y < workspace.FallenPartsDestroyHeight + 100
                    if not b28 and (d14 or b6 > 0.06 or not d11) then
                        b28 = true
                        b22 = b22 + 1
                        if b17 then
                            b25[b17] = 99
                        end
                        b17 = nil
                    end
                    if b28 then
                        local d15 = b26 or b16
                        d15 = Vector3.new(d15.X, math.max(d15.Y, b21 + 3), d15.Z)
                        local d16 = d15 - d2
                        if d16.Magnitude < 3 then
                            b28 = false
                            b6 = 0
                            local d19, d18, d17 = pairs(b4)
                            while true do
                                local d21 = d19(d18, d17)
                                local d20 = d19(d18, d17)
                                if d20 == nil then
                                    break
                                end
                                d17 = d20
                                pcall(function()
                                    d20.CanCollide = d21
                                end)
                            end
                            b4 = {}
                            b46(c4, d2, Vector3.zero, Vector3.zero)
                        else
                            for d25, d26 in ipairs(c4) do
                                if d26.Parent then
                                    if b4[d26] == nil then
                                        b4[d26] = d26.CanCollide
                                    end
                                    d26.CanCollide = false
                                end
                            end
                            b46(c4, d2, d16.Unit * math.min(b5.Speed, d16.Magnitude * 12 + 40), Vector3.zero)
                            a72("DESTROY MAP: pulling the body back onto the map", "accent")
                        end
                        return
                    end
                    if d9 <= 0 then
                        b32 = "return"
                        b38 = d8
                        a72("DESTROY MAP: done, " .. b15 .. " wall hits" .. (b22 > 0 and ", saved from the void " .. b22 .. "x" or "") .. ". Flying back", "accent")
                        return
                    end
                    if d8 >= b13 or not b17 and b24 > #b23 then
                        b13 = d8 + 2.5
                        b11 = b50(c1, b16)
                        b24 = 1
                        b23 = b54(d2, b11)
                    end
                    if b17 then
                        local d27 = not b17.Parent or not b17.Anchored
                        local d28 = b51(b17, d2)
                        local d29 = d28 - d2
                        local d30 = c3.AssemblyLinearVelocity:Dot(d29.Magnitude > 0.1 and d29.Unit or Vector3.zero)
                        local d31 = d8 - b19 > 0.1 and d30 < b5.Speed * 0.2
                        if d27 or d29.Magnitude < 3 or d31 then
                            b15 = b15 + 1
                            if not d27 then
                                b25[b17] = (b25[b17] or 0) + 1
                            end
                            b17 = nil
                        elseif d8 > b20 then
                            b25[b17] = (b25[b17] or 0) + 1
                            b17 = nil
                        end
                    end
                    local d32 = 0
                    while not b17 and b24 <= #b23 and d32 < 10 do
                        d32 = d32 + 1
                        local d33 = b23[b24]
                        b24 = b24 + 1
                        if d33.Parent and d33.Anchored and (b25[d33] or 0) < 3 then
                            local d34 = b51(d33, d2)
                            local d35 = Vector3.new(d34.X - d2.X, 0, d34.Z - d2.Z)
                            local d36 = d34.Y < b21 + 16
                            if d36 and d35.Magnitude > 0.5 then
                                local d37 = d34 + d35.Unit * 6
                                if not b53(c1, d37 + Vector3.new(0, 3, 0), Vector3.new(0, -60, 0)) then
                                    d36 = false
                                    b25[d33] = 99
                                end
                            end
                            if d36 then
                                b19 = d8
                                b17 = d33
                                b20 = d8 + (d34 - d2)["Magnitude"] / b5.Speed + 0.35
                            end
                        end
                    end
                    local d38 = Vector3.zero
                    local d40 = math.huge
                    local d39 = nil
                    if b17 then
                        local d41 = b51(b17, d2)
                        local d42 = Vector3.new(d41.X - d2.X, 0, d41.Z - d2.Z)
                        d40 = d42.Magnitude
                        d38 = d40 > 0.3 and d42.Unit * b5.Speed or Vector3.zero
                        d39 = d41.Y
                    elseif (b16 - d2)["Magnitude"] > 4 then
                        local d43 = b16 - d2
                        d38 = Vector3.new(d43.X, 0, d43.Z).Unit * b5.Speed * 0.3
                    end
                    if d38.Magnitude > 1 then
                        local d44 = math.min(math.clamp(d38.Magnitude * 0.06, 6, 40), d40 + 6)
                        local d45 = d2 + d38.Unit * d44
                        if not b53(c1, d45 + Vector3.new(0, 3, 0), Vector3.new(0, -60, 0)) then
                            if b17 then
                                b25[b17] = 99
                            end
                            b17 = nil
                            d39 = nil
                            local d46 = (b26 or b16) - d2
                            d46 = Vector3.new(d46.X, 0, d46.Z)
                            d38 = d46.Magnitude > 1 and d46.Unit * b5.Speed * 0.5 or Vector3.zero
                        end
                    end
                    local d47 = math.clamp(d39 or b21 + 3, b21 + 2.5, b21 + 14)
                    local d48 = math.clamp((d47 - d2.Y) * 12, -50, 80)
                    d38 = Vector3.new(d38.X, d48, d38.Z)
                    local d49 = d38 * math.max(d1, 0.016666666666666666) * 2
                    if d49.Y < 0 then
                        local d50 = b53(c1, d2, Vector3.new(0, d49.Y - 3, 0))
                        if d50 and d50.Normal.Y > 0.5 then
                            d38 = Vector3.new(d38.X, math.max(d38.Y, 0), d38.Z)
                        end
                    end
                    local d51 = d38.Magnitude > 1 and Vector3.new(d38.X, 0, d38.Z):Cross(Vector3.yAxis) or Vector3.new(1, 0, 0)
                    d51 = d51.Magnitude > 0.1 and d51.Unit or Vector3.new(1, 0, 0)
                    b46(c4, d2, d38, d51 * b5.Spin + Vector3.new(0, b5.Spin * 0.3, 0), b3.Shake)
                    a72(string.format("DESTROY MAP: %ds left, %d wall hits", math.ceil(d9), b15), "accent")
                elseif b32 == "return" then
                    local d52 = b37 - d2
                    local d53 = d52.Magnitude
                    if d53 < 3 or os.clock() - b38 > 3 then
                        b47(d53 < 3 and "Wrecking Ball: back where you started" or "Wrecking Ball: couldn't get all the way back", d53 < 3 and "accent" or "warn")
                        return
                    end
                    for d57, d58 in ipairs(c4) do
                        if d58.Parent then
                            if b4[d58] == nil then
                                b4[d58] = d58.CanCollide
                            end
                            d58.CanCollide = false
                        end
                    end
                    b46(c4, d2, d52.Unit * math.min(math.max(b3.Speed, 80), d53 * 6 + 20), Vector3.zero)
                end
            end)
        end
        a39(UserInputService.InputBegan:Connect(function(c1)
            if c1.UserInputType ~= Enum.UserInputType.MouseButton1 or not b3.Enabled then
                return
            end
            if UserInputService:GetFocusedTextBox() or b40() then
                return
            end
            local c2 = b2.Character
            if c2 and b39(c2) then
                b55(c2)
            end
        end))
        a39(UserInputService.InputEnded:Connect(function(c1)
            if c1.UserInputType == Enum.UserInputType.MouseButton1 and b32 == "ram" then
                b32 = "return"
                b38 = os.clock()
                b43(nil)
            end
        end))
        local b56 = false
        local b58 = 0
        local b57 = nil
        local function b59(c1, c2)
            b57 = nil
            b31 = false
            b56 = false
            V.a259.Paused = false
            if c2 then
                a62.Add("warn", "DESTROY MAP stopped: " .. c2)
            end
            if c1 then
                a67("DESTROY MAP", c1, 4)
            end
        end
        local function b60(c1, c2)
            b58 = b58 + 1
            local c3 = b58
            b57 = c2
            b56 = true
            local function c4()
                return c3 ~= b58 or b2.Character ~= c1
            end
            local c5 = c1:WaitForChild("HumanoidRootPart", 10)
            local c6 = c1:WaitForChild("Humanoid", 10)
            local c7 = os.clock()
            while c5 and c6 and not c4() and os.clock() - c7 < 3 and (c5.Anchored or c6.Health <= 0) do
                task.wait(0.05)
            end
            if c4() then
                return
            end
            if not b31 or not a37 then
                b59()
                return
            end
            if not c5 or not c6 then
                b59(nil, "new character never loaded")
                return
            end
            a72(string.format("DESTROY MAP: respawned, flying back (%ds of wrecking left)", math.ceil(c2)), "accent")
            local c8 = (b26 or b16) + Vector3.new(0, 3, 0)
            local c10 = {}
            local c9 = {}
            for c14, c15 in ipairs(c1:GetDescendants()) do
                if c15:IsA("BasePart") then
                    table.insert(c9, c15)
                    c10[c15] = c15.CanCollide
                end
            end
            pcall(function()
                c6.PlatformStand = true
            end)
            local c16 = os.clock()
            local c18 = false
            local c17 = false
            task.spawn(function()
                c18 = V.a259.ResetNow()
                c17 = true
            end)
            while not c17 and not c4() and c5.Parent and a37 and b31 and os.clock() - c16 < 15 do
                local c19 = c8 - c5.Position
                local c20 = c19.Magnitude
                local c21 = c20 > 2 and c19.Unit * math.min(b5.AliveSpeed, c20 * 6 + 20) or Vector3.zero
                for c25, c26 in ipairs(c9) do
                    if c26.Parent then
                        c26.CanCollide = false
                        c26.AssemblyLinearVelocity = c21
                        c26.AssemblyAngularVelocity = Vector3.zero
                    end
                end
                b1.Heartbeat:Wait()
            end
            pcall(function()
                c6.PlatformStand = false
            end)
            b56 = false
            local function c27()
                local d3, d2, d1 = pairs(c10)
                while true do
                    local d5 = d3(d2, d1)
                    local d4 = d3(d2, d1)
                    if d4 == nil then
                        break
                    end
                    d1 = d4
                    pcall(function()
                        d4.CanCollide = d5
                    end)
                end
            end
            if c4() then
                c27()
                return
            end
            if not b31 then
                c27()
                b59()
                return
            end
            if not c18 then
                c27()
                b59("Got respawned and the reset didn't go through, so it stopped.", "reset failed after respawn")
                return
            end
            for c31, c32 in pairs(c10) do
                if b4[c31] == nil then
                    b4[c31] = c32
                end
            end
            task.wait(0.1)
            if c4() or not b31 then
                return
            end
            b57 = nil
            b29 = os.clock()
            b14 = os.clock() - (b5.Time - c2)
            b13 = 0
            b6 = 0
            b17 = nil
            local c33 = c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso") or c5
            b28 = true
            b55(c1, "destroy")
            b37 = b16
        end
        a39(b2.CharacterAdded:Connect(function(c1)
            local c2 = b32 ~= "destroy" and b31 and b57 ~= nil
            if b32 == "destroy" or c2 then
                local c3 = c2 and b57 or b5.Time - (os.clock() - b14)
                if c2 then
                    a62.Add("warn", string.format("DESTROY MAP: respawned again while getting back (%ds left)", math.max(0, math.floor(c3))))
                else
                    a62.Add("warn", string.format("DESTROY MAP: game respawned you %.1fs after you died (%ds left, %d void saves, was flying back: %s)", os.clock() - b29, math.max(0, math.floor(c3)), b22, b28 and "yes" or "no"))
                end
                local c4 = c3 > 2 and b30 < 40 and b16 ~= nil
                b47(nil, nil, c4)
                b28 = false
                if c4 then
                    b30 = b30 + 1
                    task.spawn(b60, c1, c3)
                else
                    b59(nil, c3 <= 2 and "out of time" or "too many respawns")
                    a72("DESTROY MAP: done (the game respawned you)", "ok")
                end
            else
                b47()
            end
        end))
        V.a262 = function(c1)
            b5.Time = c1
        end
        local function b61()
            if b56 or b32 then
                return
            end
            local c1 = b2.Character
            local c2 = c1 and c1:FindFirstChildOfClass("Humanoid")
            if not c1 or not c2 then
                return
            end
            b56 = true
            b31 = true
            V.a259.Paused = true
            task.spawn(function()
                local d1 = c1:FindFirstChild("Torso") or c1:FindFirstChild("UpperTorso") or c1:FindFirstChild("HumanoidRootPart")
                b16 = d1 and d1.Position or nil
                if c2.Health > 0 then
                    a72("DESTROY MAP: resetting...", "accent")
                    if not V.a259.ResetNow() then
                        b59("Reset didn't go through. Try again.")
                        return
                    end
                    task.wait(0.1)
                end
                b56 = false
                if b2.Character ~= c1 or not b16 then
                    b59()
                    return
                end
                b6 = 0
                b22 = 0
                b17 = nil
                b15 = 0
                b13 = 0
                b12 = {}
                b11 = {}
                b26 = b16
                b25 = {}
                b24 = 1
                b23 = {}
                b30 = 0
                b29 = os.clock()
                b28 = false
                local d2 = b53(c1, b16 + Vector3.new(0, 2, 0), Vector3.new(0, -60, 0))
                b21 = d2 and d2.Position.Y or b16.Y - 3
                b14 = os.clock()
                b55(c1, "destroy")
            end)
        end
        local b62 = a40("Frame", {
            Name = "DestroyConfirm",
            BackgroundColor3 = Color3.new(0, 0, 0),
            BackgroundTransparency = 0.45,
            Size = UDim2.fromScale(1, 1),
            ZIndex = 60,
            Visible = false,
            Active = true,
            Parent = a84
        })
        local b63 = a40("Frame", {
            BackgroundColor3 = a32.Background,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(300, 150),
            ZIndex = 61,
            Parent = b62
        })
        local b64 = a49(b63, a32.Accent)
        a34(function()
            b64.Color = a32.Accent
        end)
        a40("TextLabel", {
            Text = "DESTROY MAP?",
            Font = Enum.Font.GothamBold,
            TextSize = 15,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 12),
            Size = UDim2.new(1, -32, 0, 20),
            ZIndex = 62,
            Parent = b63
        })
        local b65 = a40("TextLabel", {
            Text = "",
            TextSize = 11,
            TextColor3 = a32.Muted,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Position = UDim2.fromOffset(16, 38),
            Size = UDim2.new(1, -32, 0, 60),
            ZIndex = 62,
            Parent = b63
        })
        local function b66()
            b62.Visible = false
        end
        local b67 = a74(b63, "RUN", function()
            b66()
            b61()
        end)
        b67.Position = UDim2.new(0, 16, 1, -38)
        b67.Size = UDim2.new(0.5, -20, 0, 26)
        b67.ZIndex = 62
        b67.TextColor3 = a32.Accent
        a34(function()
            b67.TextColor3 = a32.Accent
        end)
        local b68 = a74(b63, "CANCEL", function()
            b66()
            a72("DESTROY MAP: cancelled", "ok")
        end)
        b68.Position = UDim2.new(0.5, 4, 1, -38)
        b68.Size = UDim2.new(0.5, -20, 0, 26)
        b68.ZIndex = 62
        for b72, b73 in ipairs(b63:GetDescendants()) do
            if b73:IsA("GuiObject") then
                b73.ZIndex = 62
            end
        end
        V.a261 = function()
            if b32 == "destroy" then
                b32 = "return"
                b38 = os.clock()
                a72("DESTROY MAP: stopped, flying back", "ok")
                return
            end
            if b31 and not b32 then
                b59()
                a72("DESTROY MAP: stopped", "ok")
                return
            end
            if b56 or b32 then
                return
            end
            b65.Text = "WARNING: this can lag your device REALLY hard.\nIt resets you and slams your body into walls for " .. tostring(b5.Time) .. "s. Press DESTROY again to stop it early."
            b62.Visible = true
        end
        local b74 = false
        local b75 = a40("CanvasGroup", {
            Name = "WreckMenu",
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(130, 32),
            Size = UDim2.fromOffset(470, 326),
            GroupTransparency = 1,
            Visible = false,
            Active = true,
            Parent = a84
        })
        a40("TextLabel", {
            Text = "WRECKING BALL",
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 6),
            Size = UDim2.fromOffset(260, 20),
            Parent = b75
        })
        a40("TextLabel", {
            Text = "Ragdolled? Hold M1 to ram what your cursor is on. Let go to fly back.",
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 26),
            Size = UDim2.fromOffset(360, 14),
            Parent = b75
        })
        a40("Frame", {
            BackgroundColor3 = a32.Stroke,
            Position = UDim2.fromOffset(0, 44),
            Size = UDim2.new(1, 0, 0, 1),
            Parent = b75
        })
        a156 = function()
            if not b74 then
                return
            end
            b74 = false
            local c1 = a41(b75, 0.15, {GroupTransparency = 1})
            c1.Completed:Once(function()
                if not b74 then
                    b75.Visible = false
                end
            end)
        end
        local b76 = a74(b75, "Close", a156)
        b76.AnchorPoint = Vector2.new(1, 0)
        b76.Position = UDim2.new(1, -16, 0, 10)
        b76.Size = UDim2.fromOffset(70, 24)
        local b77 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(0, 50),
            Size = UDim2.new(1, 0, 1, -56),
            ScrollBarThickness = 3,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = b75
        })
        a35(b77, "ScrollBarImageColor3")
        a40("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder, Parent = b77})
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 16),
            PaddingRight = UDim.new(0, 16),
            PaddingBottom = UDim.new(0, 6),
            Parent = b77
        })
        local b78 = 0
        local function b79(c1, c2)
            b78 = b78 + 1
            local c3 = a40("Frame", {BackgroundColor3 = a32.Panel, Size = UDim2.new(1, -6, 0, 38), LayoutOrder = b78, Parent = b77})
            a49(c3, a32.Stroke)
            a40("TextLabel", {
                Text = string.upper(c1),
                Font = Enum.Font.GothamBold,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2.fromOffset(12, 5),
                Size = UDim2.fromOffset(180, 14),
                Parent = c3
            })
            a40("TextLabel", {
                Text = c2 or "",
                TextSize = 9,
                TextColor3 = a32.Muted,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(12, 20),
                Size = UDim2.fromOffset(180, 12),
                Parent = c3
            })
            return c3
        end
        local function b80(c1, c2, c3, c4)
            local c5 = "wreck/" .. c1
            local c6 = a57.Get(c5)
            if type(c6) == "boolean" then
                c3 = c6
                c4(c6)
            end
            local c7 = a75(b79(c1, c2), c3, function(d1)
                a57.Set(c5, d1)
                c4(d1)
            end)
            c7.Position = UDim2.fromOffset(200, 8)
            c7.Size = UDim2.fromOffset(120, 22)
        end
        local function b81(c1, c2, c3, c4, c5, c6, c7, c8)
            local c9 = "wreck/" .. c1
            local c10 = a57.Get(c9)
            if type(c10) == "number" then
                c5 = math.clamp(c10, c3, c4)
                c8(c5)
            end
            local c11 = a76(b79(c1, c2), c3, c4, c5, c6, c7, function(d1)
                a57.Set(c9, d1)
                c8(d1)
            end)
            c11.Position = UDim2.fromOffset(200, 8)
            c11.Size = UDim2.fromOffset(220, 22)
        end
        b80("Enabled", "Ragdolled: hold M1 to ram your cursor, let go to come back", b3.Enabled, function(c1)
            b3.Enabled = c1
            if not c1 and b32 then
                b47()
            end
        end)
        b81("Fly speed", "How fast you fly at the cursor", 30, 400, b3.Speed, 5, "", function(c1)
            b3.Speed = c1
        end)
        b81("Spin speed", "How fast the body spins while flying", 0, 80, b3.Spin, 1, "", function(c1)
            b3.Spin = c1
        end)
        b80("Cursor marker", "A glowing ball where you ram (only you see it)", b3.Marker, function(c1)
            b3.Marker = c1
        end)
        b81("Shake", "Body flails while flying = touches more. Also DESTROY MAP. 0 = off", 0, 100, b3.Shake, 5, "", function(c1)
            b3.Shake = c1
        end)
        return function()
            if b74 then
                a156()
                return
            end
            a132()
            a165()
            V.a192()
            a155()
            b74 = true
            b75.Position = UDim2.fromOffset(138, 32)
            b75.GroupTransparency = 1
            b75.Visible = true
            a41(b75, 0.2, {Position = UDim2.fromOffset(130, 32), GroupTransparency = 0})
            a72("Wrecking Ball menu opened", "ok")
        end
    end)()
    V.a264 = (function()
        local b1 = Players.LocalPlayer
        local b2 = {
            [1] = "John Wick",
            [2] = "spy tf2",
            [3] = "Cant touch me",
            [4] = "Brawler",
            [5] = "John Kaisen",
            [6] = "Lazy Skeleton",
            [7] = "Viltrumite"
        }
        local b3 = {List = {}, Rarity = {}, OnChange = nil}
        local function b4(c1)
            c1 = string.gsub(tostring(c1 or ""), "^%s+", "")
            c1 = string.gsub(c1, "%s+$", "")
            return c1
        end
        local function b5(c1, c2)
            c1 = b4(c1)
            if c1 == "" then
                return false
            end
            local c3 = string.lower(c1)
            for c7, c8 in ipairs(b3.List) do
                if string.lower(c8) == c3 then
                    if c2 and b3.Rarity[c8] ~= c2 then
                        b3.Rarity[c8] = c2
                        return true
                    end
                    return false
                end
            end
            table.insert(b3.List, c1)
            b3.Rarity[c1] = c2
            return true
        end
        local b6 = a57.Get("SSPKits")
        if type(b6) == "table" and type(b6.List) == "table" then
            for b10, b11 in ipairs(b6.List) do
                b5(b11, type(b6.Rarity) == "table" and b6.Rarity[b11] or nil)
            end
        end
        for b15, b16 in ipairs(b2) do
            b5(b16)
        end
        local function b17()
            a57.Set("SSPKits", {List = b3.List, Rarity = b3.Rarity})
        end
        b3.Offers = function()
            local c1 = {}
            local c2 = b1:FindFirstChildOfClass("PlayerGui")
            local c3 = c2 and c2:FindFirstChild("RouletteKit")
            local c4 = c3 and c3:FindFirstChild("Vows")
            if not c4 or c3:IsA("ScreenGui") and not c3.Enabled then
                return c1
            end
            for c8, c9 in ipairs(c4:GetChildren()) do
                local c10 = c9:FindFirstChild("Title")
                if c10 and c10:IsA("TextLabel") and b4(c10.Text) ~= "" and (not c9:IsA("GuiObject") or c9.Visible) then
                    local c11 = nil
                    for c15, c16 in ipairs({[1] = "Legendary", [2] = "Rare", [3] = "Basic"}) do
                        local c17 = c9:FindFirstChild(c16)
                        if c17 and c17:IsA("UIGradient") and c17.Enabled then
                            c11 = c16 == "Basic" and "Common" or c16
                            break
                        end
                    end
                    table.insert(c1, {name = b4(c10.Text), rarity = c11, frame = c9, button = c9:FindFirstChild("TextButton")})
                end
            end
            return c1
        end
        task.spawn(function()
            while a37 do
                local c1 = false
                for c5, c6 in ipairs(b3.Offers()) do
                    if b5(c6.name, c6.rarity) then
                        c1 = true
                    end
                end
                if c1 then
                    b17()
                    if b3.OnChange then
                        pcall(b3.OnChange)
                    end
                end
                task.wait(1)
            end
        end)
        return b3
    end)()
    V.a265 = (function()
        local b1 = Players.LocalPlayer
        local b2 = {Want = "", Running = false, OnState = nil}
        local b3 = 0
        local b4 = 40
        local function b5(c1)
            return string.lower(string.gsub(tostring(c1 or ""), "%s+", " "))
        end
        local function b6(c1)
            while c1 and not c1:IsA("ScreenGui") do
                if c1:IsA("GuiObject") and not c1.Visible then
                    return false
                end
                c1 = c1.Parent
            end
            return c1 ~= nil and c1.Enabled
        end
        local function b7()
            local c1 = b5(b2.Want)
            local c2 = b1:FindFirstChildOfClass("PlayerGui")
            if #c1 < 2 or not c2 then
                return nil
            end
            local c3 = V.a264.Offers()
            if #c3 > 0 then
                for c7, c8 in ipairs(c3) do
                    if string.find(b5(c8.name), c1, 1, true) then
                        return c8.frame, c8.button
                    end
                end
                return nil
            end
            for c12, c13 in ipairs(c2:GetDescendants()) do
                if (c13:IsA("TextLabel") or c13:IsA("TextButton")) and c13.Text ~= "" and not c13:IsDescendantOf(a58) then
                    local c14 = c13:FindFirstAncestorOfClass("ScreenGui")
                    if c14 and string.sub(c14.Name, 1, 6) ~= "RYOIKI" and string.find(b5(c13.Text), c1, 1, true) and b6(c13) then
                        return c13
                    end
                end
            end
            return nil
        end
        local function b8(c1)
            b2.Running = c1
            if b2.OnState then
                pcall(b2.OnState, c1)
            end
        end
        local function b9(c1)
            if not c1 or not c1.Parent then
                return false
            end
            local c2 = false
            local c5, c4, c3 = ipairs({[1] = "MouseButton1Click", [2] = "Activated", [3] = "MouseButton1Down"})
            while true do
                local c7 = c5(c4, c3)
                if c6 == nil then
                    break
                end
                c3 = c6
                local c9 = pcall(function()
                    return c1[c7]
                end)
                if c8 and c9 then
                    if typeof(a50.firesignal) == "function" then
                        if pcall(a50.firesignal, c9) then
                            c2 = true
                        end
                    elseif typeof(a50.getconnections) == "function" then
                        pcall(function()
                            for d4, d5 in ipairs(a50.getconnections(c9)) do
                                d5:Fire()
                                c2 = true
                            end
                        end)
                    end
                end
            end
            if not c2 then
                pcall(function()
                    local d1 = game:GetService("VirtualInputManager")
                    local d2 = c1.AbsolutePosition + c1.AbsoluteSize / 2
                    local d3 = game:GetService("GuiService"):GetGuiInset()
                    d1:SendMouseButtonEvent(d2.X + d3.X, d2.Y + d3.Y, 0, true, game, 0)
                    task.wait(0.05)
                    d1:SendMouseButtonEvent(d2.X + d3.X, d2.Y + d3.Y, 0, false, game, 0)
                    c2 = true
                end)
            end
            return c2
        end
        b2.Stop = function()
            b3 = b3 + 1
            pcall(V.a257.CancelReset)
            b8(false)
        end
        b2.Start = function()
            if b2.Running then
                return true
            end
            if #b5(b2.Want) < 2 then
                a67("Auto Moveset", "Type the moveset name first (in Soul Swap Moveset).", 4)
                b8(false)
                return false
            end
            b3 = b3 + 1
            local c1 = b3
            b8(true)
            task.spawn(function()
                local d1 = 0
                local d2 = 0
                while b2.Running and c1 == b3 and a37 do
                    local d5 = nil
                    local d4 = nil
                    local d3 = os.clock()
                    while os.clock() - d3 < 4 and b2.Running and c1 == b3 do
                        d4, d5 = b7()
                        if d4 then
                            break
                        end
                        task.wait(0.25)
                    end
                    if not (b2.Running and c1 == b3) then
                        break
                    end
                    if d4 then
                        local d6 = d5 and b9(d5)
                        a67("Auto Moveset", "Got " .. b2.Want .. (d1 > 0 and " after " .. d1 .. (d1 == 1 and " reset" or " resets") or "") .. (d6 and ", picked it" or "") .. ". Stopped.", 5)
                        a72("Auto Moveset: got " .. b2.Want, "ok")
                        break
                    end
                    if d1 >= b4 then
                        a67("Auto Moveset", "Gave up after " .. b4 .. " resets.", 5)
                        break
                    end
                    d1 = d1 + 1
                    a72("Auto Moveset: no " .. b2.Want .. ", reset " .. d1, "accent")
                    local d7 = b1.Character
                    local d8 = false
                    if d2 < 3 then
                        task.spawn(V.a257.ResetFast, 8)
                        d8 = V.a257.ForceKill(true, true, 8)
                        if d8 then
                            d2 = 0
                        else
                            d2 = d2 + 1
                            if d2 >= 3 then
                                a67("Auto Moveset", "Void fall failed 3 times in a row. Using normal reset from now on.", 4)
                            end
                        end
                    end
                    if not d8 and not V.a257.ResetNow(30, true) then
                        if b2.Running and c1 == b3 then
                            a67("Auto Moveset", "Reset didn't go through. Stopped.", 5)
                        end
                        break
                    end
                    local d9 = os.clock()
                    while os.clock() - d9 < 15 and b1.Character == d7 and a37 do
                        task.wait(0.1)
                    end
                    task.wait(1)
                end
                if c1 == b3 then
                    b8(false)
                end
            end)
            return true
        end
        return b2
    end)()
    V.a266 = (function()
        local b1 = Players.LocalPlayer
        local b2 = {
            Enabled = true,
            HitMultiplier = 1,
            RagdollMultiplier = 2.5,
            UpBoost = 10,
            MaxSpeed = 300,
            HoldTime = 0,
            UncapForce = true,
            ToggleKey = "K",
            ShowHits = true
        }
        local b3 = {}
        local b4 = a57.Get("Knockback")
        for b8, b9 in pairs(b2) do
            local b10 = nil
            if type(b4) == "table" then
                b10 = b4[b8]
            end
            if b10 ~= nil and type(b10) == type(b9) then
                b3[b8] = b10
            else
                b3[b8] = b9
            end
        end
        local b11 = {Config = b3, Defaults = b2, Hits = 0, Last = nil, Rebinding = false, OnChange = nil, OnHit = nil}
        b11.Save = function()
            local c1 = {}
            for c5 in pairs(b2) do
                c1[c5] = b3[c5]
            end
            a57.Set("Knockback", c1)
        end
        b11.SetEnabled = function(c1)
            b3.Enabled = c1 and true or false
            b11.Save()
            if b11.OnChange then
                pcall(b11.OnChange)
            end
        end
        b11.Reset = function()
            for c4, c5 in pairs(b2) do
                b3[c4] = c5
            end
            b11.Save()
        end
        local function b12(c1)
            local c2 = c1:GetAttribute("Ragdoll")
            if typeof(c2) == "number" then
                return c2 > 0
            end
            local c3 = c1:FindFirstChild("Info")
            return c3 ~= nil and c3:FindFirstChild("Knockback") ~= nil
        end
        local function b13(c1, c2, c3)
            local c4 = c1 * c2 + Vector3.new(0, c3, 0)
            if c4.Magnitude > b3.MaxSpeed then
                c4 = c4.Unit * b3.MaxSpeed
            end
            return c4
        end
        local function b14(c1, c2, c3)
            task.defer(function()
                if not a37 or not b3.Enabled or not c3.Parent then
                    return
                end
                local d1 = b12(c1)
                local d2 = d1 and b3.RagdollMultiplier or b3.HitMultiplier
                local d3 = d1 and b3.UpBoost or 0
                local d4 = b3.HoldTime
                if d2 == 1 and d3 == 0 and d4 <= 0 then
                    return
                end
                if b3.UncapForce then
                    local d6 = math.huge
                    local d5 = c3.MaxForce
                    c3.MaxForce = Vector3.new(d5.X > 0 and d6 or 0, (d5.Y > 0 or d3 > 0) and d6 or 0, d5.Z > 0 and d6 or 0)
                end
                local d7 = false
                local d8 = c3.Velocity
                local function d9(e1)
                    d7 = true
                    c3.Velocity = b13(e1, d2, d3)
                    d8 = c3.Velocity
                    d7 = false
                end
                local d10 = c3.Velocity
                d9(d10)
                c3:GetPropertyChangedSignal("Velocity"):Connect(function()
                    if not d7 and b3.Enabled and a37 then
                        d9(c3.Velocity)
                    end
                end)
                if d4 > 0 then
                    local d11 = os.clock()
                    local d12 = c3.MaxForce
                    task.delay(d4, function()
                        if c3.Parent then
                            pcall(function()
                                c3:Destroy()
                            end)
                        end
                    end)
                    c3.AncestryChanged:Connect(function(e1, e2)
                        if e2 or not a37 or not b3.Enabled or not c2.Parent then
                            return
                        end
                        local e3 = d4 - (os.clock() - d11)
                        if e3 <= 0.02 then
                            return
                        end
                        local e4 = Instance.new("BodyVelocity")
                        e4.Name = "RYOIKI_KB"
                        e4.MaxForce = d12
                        e4.Velocity = d8
                        e4.Parent = c2
                        task.delay(e3, function()
                            e4:Destroy()
                        end)
                    end)
                end
                local d13 = "unknown"
                if typeof(a50.isnetworkowner) == "function" then
                    local d14, d15 = pcall(a50.isnetworkowner, c2)
                    if d14 then
                        d13 = d15 and "you" or "server"
                    end
                end
                b11.Hits = b11.Hits + 1
                b11.Last = {rag = d1, from = d10.Magnitude, to = c3.Velocity.Magnitude, mult = d2, owner = d13, hold = d4}
                if b11.OnHit then
                    pcall(b11.OnHit, b11.Last)
                end
            end)
        end
        local function b15(c1)
            task.spawn(function()
                local d1 = c1:WaitForChild("HumanoidRootPart", 10)
                if not d1 or not a37 then
                    return
                end
                a39(d1.ChildAdded:Connect(function(e1)
                    if e1.Name == "KnockbackForce" and e1:IsA("BodyVelocity") then
                        b14(c1, d1, e1)
                    end
                end))
            end)
        end
        if b1.Character then
            b15(b1.Character)
        end
        a39(b1.CharacterAdded:Connect(b15))
        a39(UserInputService.InputBegan:Connect(function(c1, c2)
            if c2 or b11.Rebinding or c1.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end
            local c3, c4 = pcall(function()
                return Enum.KeyCode[b3.ToggleKey]
            end)
            if c3 and c4 and c1.KeyCode == c4 then
                b11.SetEnabled(not b3.Enabled)
                a67("Knockback", "Knockback multiplier " .. (b3.Enabled and "ON" or "OFF"), 2)
            end
        end))
        return b11
    end)()
    V.a267 = (function()
        local b1 = false
        local b2 = a40("CanvasGroup", {
            Name = "Knockback",
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(130, 32),
            Size = UDim2.fromOffset(470, 326),
            GroupTransparency = 1,
            Visible = false,
            Active = true,
            Parent = a84
        })
        a40("TextLabel", {
            Text = "KNOCKBACK MULTIPLIER",
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 6),
            Size = UDim2.fromOffset(260, 20),
            Parent = b2
        })
        a40("TextLabel", {
            Text = "Hits on you launch you further. Others see it too.",
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 26),
            Size = UDim2.fromOffset(330, 14),
            Parent = b2
        })
        a40("Frame", {
            BackgroundColor3 = a32.Stroke,
            Position = UDim2.fromOffset(0, 44),
            Size = UDim2.new(1, 0, 0, 1),
            Parent = b2
        })
        V.a192 = function()
            if not b1 then
                return
            end
            b1 = false
            local c1 = a41(b2, 0.15, {GroupTransparency = 1})
            c1.Completed:Once(function()
                if not b1 then
                    b2.Visible = false
                end
            end)
        end
        local b3 = a74(b2, "Close", V.a192)
        b3.AnchorPoint = Vector2.new(1, 0)
        b3.Position = UDim2.new(1, -16, 0, 10)
        b3.Size = UDim2.fromOffset(70, 24)
        local b4 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(0, 50),
            Size = UDim2.new(1, 0, 0, 204),
            ScrollBarThickness = 3,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = b2
        })
        a35(b4, "ScrollBarImageColor3")
        a40("UIListLayout", {Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder, Parent = b4})
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 16),
            PaddingRight = UDim.new(0, 16),
            PaddingBottom = UDim.new(0, 6),
            Parent = b4
        })
        local b5 = 0
        local function b6(c1, c2)
            b5 = b5 + 1
            local c3 = a40("Frame", {BackgroundColor3 = a32.Panel, Size = UDim2.new(1, -6, 0, 38), LayoutOrder = b5, Parent = b4})
            a49(c3, a32.Stroke)
            a40("TextLabel", {
                Text = string.upper(c1),
                Font = Enum.Font.GothamBold,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2.fromOffset(12, 5),
                Size = UDim2.fromOffset(180, 14),
                Parent = c3
            })
            a40("TextLabel", {
                Text = c2 or "",
                TextSize = 9,
                TextColor3 = a32.Muted,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(12, 20),
                Size = UDim2.fromOffset(180, 12),
                Parent = c3
            })
            return c3
        end
        local b7 = V.a266.Config
        local b8 = {}
        local function b9(c1, c2, c3, c4)
            local c5 = b6(c2, c3)
            local c6, c7 = a75(c5, b7[c1], function(d1)
                if c4 then
                    c4(d1)
                else
                    b7[c1] = d1
                    V.a266.Save()
                end
            end)
            c6.Position = UDim2.fromOffset(200, 8)
            c6.Size = UDim2.fromOffset(120, 22)
            b8[c1] = {Kind = "toggle", Ctl = c7}
            return c7
        end
        local function b10(c1, c2, c3, c4, c5, c6, c7)
            local c8 = b6(c2, c3)
            local c9, c10 = a76(c8, c4, c5, b7[c1], c6, c7, function(d1)
                b7[c1] = d1
                V.a266.Save()
            end)
            c9.Position = UDim2.fromOffset(200, 8)
            c9.Size = UDim2.fromOffset(220, 22)
            b8[c1] = {Kind = "slider", Ctl = c10}
            return c10
        end
        local b11 = b9("Enabled", "Enabled", "Turn the multiplier on or off", function(c1)
            V.a266.SetEnabled(c1)
        end)
        b10("HitMultiplier", "Hit multiplier", "Normal hits that do not ragdoll you", 1, 10, 0.1, "x")
        b10("RagdollMultiplier", "Ragdoll multiplier", "Hits that ragdoll you", 1, 10, 0.1, "x")
        b10("UpBoost", "Up boost", "Extra upward speed on ragdoll hits", 0, 150, 5, "")
        b10("MaxSpeed", "Max speed", "Cap so you do not leave the map", 50, 1000, 10, "")
        b10("HoldTime", "Hold time", "How long the launch lasts, 0 = game's own", 0, 2, 0.05, "s")
        b9("UncapForce", "Uncap force", "Lets the bigger launch actually reach full speed")
        b9("ShowHits", "Show hits", "Shows each boosted hit in the status bar")
        local b12 = b6("Toggle key", "Press it anywhere to switch on / off")
        local b13 = nil
        b13 = a74(b12, b7.ToggleKey, function()
            if not UserInputService.KeyboardEnabled then
                a67("Knockback", "No keyboard here. Use the Enabled switch.", 3)
                return
            end
            V.a266.Rebinding = true
            b13.Text = "PRESS A KEY..."
        end)
        b13.Position = UDim2.fromOffset(200, 8)
        b13.Size = UDim2.fromOffset(120, 22)
        a39(UserInputService.InputBegan:Connect(function(c1)
            if not V.a266.Rebinding or c1.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end
            V.a266.Rebinding = false
            if c1.KeyCode ~= Enum.KeyCode.Escape then
                b7.ToggleKey = c1.KeyCode.Name
                V.a266.Save()
            end
            b13.Text = string.upper(b7.ToggleKey)
        end))
        b8.ToggleKey = {Kind = "key", Btn = b13}
        local b14 = b6("Defaults", "Puts every setting back")
        local b15 = a74(b14, "Reset", function()
            V.a266.Reset()
            for c4, c5 in pairs(b8) do
                if c5.Kind == "toggle" then
                    c5.Ctl.Set(b7[c4])
                elseif c5.Kind == "slider" then
                    c5.Ctl.Set(b7[c4])
                elseif c5.Kind == "key" then
                    c5.Btn.Text = string.upper(b7[c4])
                end
            end
            a67("Knockback", "Settings reset.", 2)
        end)
        b15.Position = UDim2.fromOffset(200, 8)
        b15.Size = UDim2.fromOffset(120, 22)
        local b16 = a40("Frame", {
            BackgroundColor3 = a32.Panel,
            Position = UDim2.fromOffset(16, 260),
            Size = UDim2.fromOffset(438, 56),
            Parent = b2
        })
        a49(b16, a32.Stroke)
        local b17 = a40("Frame", {Size = UDim2.new(0, 2, 1, 0), Parent = b16})
        a35(b17, "BackgroundColor3")
        a40("TextLabel", {
            Text = "LAST HIT",
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(14, 6),
            Size = UDim2.fromOffset(200, 12),
            Parent = b16
        })
        local b18 = a40("TextLabel", {
            Text = "0 BOOSTED",
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Right,
            AnchorPoint = Vector2.new(1, 0),
            Position = UDim2.new(1, -14, 0, 6),
            Size = UDim2.fromOffset(160, 12),
            Parent = b16
        })
        local b19 = a40("TextLabel", {
            Text = "Nothing yet. Get hit to see it here.",
            Font = Enum.Font.GothamBold,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Position = UDim2.fromOffset(14, 24),
            Size = UDim2.new(1, -28, 0, 22),
            Parent = b16
        })
        V.a266.OnHit = function(c1)
            local c2 = string.format("%s  %.0f > %.0f  x%.1f  \194\183  owner: %s", c1.rag and "RAGDOLL" or "HIT", c1.from, c1.to, c1.mult, c1.owner) .. (c1.hold > 0 and string.format("  \194\183  hold %.2fs", c1.hold) or "")
            b19.Text = c2
            b18.Text = V.a266.Hits .. " BOOSTED"
            if c1.owner == "server" then
                b19.TextColor3 = a32.Warn
            else
                b19.TextColor3 = a32.Text
            end
            if b7.ShowHits then
                a72("Knockback: " .. c2, c1.owner == "server" and "warn" or "accent")
            end
        end
        V.a266.OnChange = function()
            b11.Set(b7.Enabled)
        end
        local function b20()
            if b1 then
                V.a192()
                return
            end
            a132()
            a165()
            a155()
            a156()
            b1 = true
            b2.Position = UDim2.fromOffset(138, 32)
            b2.GroupTransparency = 1
            b2.Visible = true
            a41(b2, 0.2, {Position = UDim2.fromOffset(130, 32), GroupTransparency = 0})
            a72("Knockback opened", "ok")
        end
        return b20
    end)()
    V.a268 = {Off = 0, Light = 0.08, Medium = 0.16, Strong = 0.3}
    V.a269 = function(b1, b2)
        if b1 == "Custom" then
            return math.clamp(tonumber(b2) or 0, 0, 5)
        end
        return V.a268[b1] or 0
    end
    V.a270 = function(b1, b2, b3)
        local b4 = V.a269(b2, b3)
        if b4 <= 0 then
            return 1
        end
        local b5 = b4 / 3
        return 1 - math.exp(-math.max(tonumber(b1) or 0.016666666666666666, 0.004166666666666667) / b5)
    end
    V.a271 = function(b1, b2, b3, b4, b5)
        if V.a269(b4, b5) <= 0 then
            return b2
        end
        return b1:Lerp(b2, V.a270(b3, b4, b5))
    end
    V.a272 = function(b1, b2)
        b1 = math.clamp(b1, 0, 1)
        if b2 == "Off" or b2 == nil then
            return b1
        end
        local b3 = b1 * b1 * (3 - 2 * b1)
        if b2 == "Light" then
            return b3
        end
        local b4 = b1 * b1 * b1 * (b1 * (b1 * 6 - 15) + 10)
        if b2 == "Medium" then
            return b4
        end
        return b3 * b3 * (3 - 2 * b3)
    end
    V.a273 = (function()
        local b1 = game:GetService("RunService")
        local b2 = game:GetService("HttpService")
        local b3 = game:GetService("ContextActionService")
        local b4 = Players.LocalPlayer
        local b5 = "ryoiki_movesets.json"
        local b6 = "RYOIKI_Anim"
        local b7 = typeof(readfile) == "function" and typeof(writefile) == "function"
        local b8 = {
            Enabled = true,
            Capture = true,
            Spy = false,
            OnCapture = nil,
            OnFire = nil,
            OnLearn = nil,
            OnTrace = nil
        }
        local function b9(c1)
            return tostring(c1 or ""):match("(%d+)%D*$")
        end
        b8.IdOf = b9
        local b10 = {}
        b8.NameOf = function(c1)
            return c1 and b10[c1] or nil
        end
        local function b11(c1, c2)
            if c1 and c2 and c2 ~= "" and (not b10[c1] or b10[c1] == "Animation") then
                b10[c1] = c2
            end
        end
        local b12 = {
            [1] = "Hit someone",
            [2] = "Hit someone (Tier 1)",
            [3] = "Hit someone (Tier 2)",
            [4] = "Got hit",
            [5] = "Got hit (Tier 1)",
            [6] = "Got hit (Tier 2)",
            [7] = "In air",
            [8] = "On ground",
            [9] = "Idle",
            [10] = "Walking",
            [11] = "Running",
            [12] = "Dashing",
            [13] = "Blocking",
            [14] = "Target in range",
            [15] = "HP above %",
            [16] = "HP below %",
            [17] = "Not stunned",
            [18] = "Moving",
            [19] = "Tag at least",
            [20] = "Game anim played",
            [21] = "Has item",
            [22] = "Item in hand"
        }
        local b13 = "Go to ELSE/END"
        local b14 = "Go to branch"
        local function b15(c1, c2, c3, c4, c5)
            return {k = c1, label = c2, kind = c3, default = c4, options = c5}
        end
        local b16 = {
            [1] = {
                key = "anim",
                label = "ANIMATION",
                short = "ANIM",
                fields = {
                    [1] = b15("id", "Animation ID", "anim", ""),
                    [2] = b15("idIdle", "Standing anim", "anim", ""),
                    [3] = b15("idWalk", "Walking anim", "anim", ""),
                    [4] = b15("idRun", "Running anim", "anim", ""),
                    [5] = b15("idDash", "Dashing anim", "anim", ""),
                    [6] = b15("idAir", "In air anim", "anim", ""),
                    [7] = b15("idBlock", "Blocking anim", "anim", ""),
                    [8] = b15("speed", "Speed", "number", 1),
                    [9] = b15("layer", "Layer (priority)", "choice", "Action4", {
                        [1] = "Core",
                        [2] = "Idle",
                        [3] = "Movement",
                        [4] = "Action",
                        [5] = "Action2",
                        [6] = "Action3",
                        [7] = "Action4"
                    }),
                    [10] = b15("weight", "Weight (0 - 1)", "number", 1),
                    [11] = b15("fade", "Fade in (s)", "number", 0.1),
                    [12] = b15("fadeOut", "Fade out (s)", "number", 0.1),
                    [13] = b15("time", "Stop after (s, 0 = full)", "number", 0),
                    [14] = b15("looped", "Looped", "bool", false),
                    [15] = b15("loopFor", "Loop for (s, 0 = until move ends)", "number", 0),
                    [16] = b15("stopPrev", "Stop previous anims", "bool", false),
                    [17] = b15("start", "Start at (s on timeline)", "number", 0),
                    b15("waitEnd", "Wait until it ends", "bool", false)
                }
            },
            [2] = {key = "wait", label = "WAIT", short = "WAIT", fields = {b15("time", "Seconds", "number", 0.3)}},
            [3] = {
                key = "tp",
                label = "TELEPORT",
                short = "TP",
                fields = {
                    [1] = b15("mode", "Relative to", "choice", "Facing", {[1] = "Facing", [2] = "World", [3] = "Target", [4] = "Behind target", [5] = "Cursor"}),
                    [2] = b15("x", "X (right)", "number", 0),
                    [3] = b15("y", "Y (up)", "number", 0),
                    [4] = b15("z", "Z (forward)", "number", 10),
                    [5] = b15("range", "Target range", "number", 60),
                    [6] = b15("prediction", "Target prediction (s)", "number", 0.15),
                    [7] = b15("stopWall", "Stop at walls / ground", "bool", false),
                    [8] = b15("smooth", "Smoothness", "choice", "Off", {[1] = "Off", [2] = "Light", [3] = "Medium", [4] = "Strong", [5] = "Custom"}),
                    b15("smoothTime", "Custom smoothness (s)", "number", 0.3)
                }
            },
            [4] = {
                key = "vel",
                label = "VELOCITY",
                short = "VEL",
                fields = {
                    [1] = b15("mode", "Relative to", "choice", "Facing", {[1] = "Facing", [2] = "World", [3] = "Target", [4] = "Away from target"}),
                    [2] = b15("range", "Target range", "number", 60),
                    [3] = b15("prediction", "Target prediction (s)", "number", 0.15),
                    [4] = b15("stopNear", "Stop this close to target (0 = off)", "number", 4),
                    [5] = b15("motion", "Mode", "choice", "Straight", {[1] = "Straight", [2] = "Curve"}),
                    [6] = b15("x", "X (right)", "number", 0),
                    [7] = b15("y", "Y (up)", "number", 0),
                    [8] = b15("yStart", "Y start (up)", "number", 65),
                    [9] = b15("yEnd", "Y end (up / down)", "number", -65),
                    [10] = b15("shape", "Vertical curve", "choice", "Smooth", {[1] = "Smooth", [2] = "Linear", [3] = "Ease In", [4] = "Ease Out"}),
                    [11] = b15("curveTime", "Duration (s)", "number", 1.25),
                    [12] = b15("z", "Z (forward)", "number", 60),
                    [13] = b15("time", "Hold (s, 0 = push once)", "number", 0.25),
                    [14] = b15("smooth", "Smoothness", "choice", "Off", {[1] = "Off", [2] = "Light", [3] = "Medium", [4] = "Strong", [5] = "Custom"}),
                    [15] = b15("smoothTime", "Custom smoothness (s)", "number", 0.3),
                    [16] = b15("ramp", "Speed", "choice", "Constant", {[1] = "Constant", [2] = "Speed up", [3] = "Slow down"}),
                    [17] = b15("endMove", "When it ends", "choice", "Keep going", {[1] = "Keep going", [2] = "Half speed", [3] = "Stop"}),
                    [18] = b15("steer", "Aim / steer", "choice", "Off", {
                        [1] = "Off",
                        [2] = "Camera",
                        [3] = "Camera 3D",
                        [4] = "Camera 360",
                        [5] = "Cursor",
                        [6] = "Move keys",
                        [7] = "Character Aim"
                    }),
                    [19] = b15("faceDir", "Face where you go", "bool", true),
                    b15("stopWall", "Stop at walls / ground", "bool", false)
                }
            },
            [5] = {
                key = "dash",
                label = "DASH",
                short = "DASH",
                fields = {
                    [1] = b15("dir", "Direction", "choice", "Move keys", {
                        [1] = "Move keys",
                        [2] = "Forward",
                        [3] = "Back",
                        [4] = "Left",
                        [5] = "Right",
                        [6] = "Camera",
                        [7] = "Cursor",
                        [8] = "To target",
                        [9] = "Away from target"
                    }),
                    [2] = b15("speed", "Speed (studs / s)", "number", 90),
                    [3] = b15("time", "Length (s, 0 = one push)", "number", 0.25),
                    [4] = b15("smooth", "Smoothness", "choice", "Off", {[1] = "Off", [2] = "Light", [3] = "Medium", [4] = "Strong", [5] = "Custom"}),
                    [5] = b15("smoothTime", "Custom smoothness (s)", "number", 0.3),
                    [6] = b15("ease", "Slow down at the end", "bool", true),
                    [7] = b15("range", "Target range", "number", 60),
                    [8] = b15("stopNear", "Stop this close to target (0 = off)", "number", 4),
                    [9] = b15("turn", "Turn to dash direction", "bool", true),
                    [10] = b15("wall", "Stop at walls", "bool", true),
                    [11] = b15("waitEnd", "Wait until it ends", "bool", true),
                    [12] = b15("up", "Up speed (0 = flat)", "number", 0),
                    b15("keep", "Keep speed after (0 - 1)", "number", 0.3)
                }
            },
            [6] = {
                key = "curve",
                label = "CURVE VELOCITY",
                short = "CURVE",
                fields = {
                    [1] = b15("mode", "Relative to", "choice", "Facing", {[1] = "Facing", [2] = "World"}),
                    [2] = b15("x", "X (right)", "number", 0),
                    [3] = b15("y", "Y start (up)", "number", 65),
                    [4] = b15("yEnd", "Y end (up / down)", "number", -65),
                    [5] = b15("z", "Z (forward)", "number", 35),
                    [6] = b15("time", "Duration (s, 0 = set end speed)", "number", 1.25),
                    [7] = b15("smooth", "Smoothness", "choice", "Off", {[1] = "Off", [2] = "Light", [3] = "Medium", [4] = "Strong", [5] = "Custom"}),
                    [8] = b15("smoothTime", "Custom smoothness (s)", "number", 0.3),
                    [9] = b15("shape", "Vertical curve", "choice", "Smooth", {[1] = "Smooth", [2] = "Linear", [3] = "Ease In", [4] = "Ease Out"}),
                    [10] = b15("steer", "Aim / steer", "choice", "Off", {
                        [1] = "Off",
                        [2] = "Camera",
                        [3] = "Camera 3D",
                        [4] = "Camera 360",
                        [5] = "Cursor",
                        [6] = "Move keys",
                        [7] = "Character Aim"
                    }),
                    [11] = b15("faceDir", "Face where you go", "bool", true),
                    b15("stopWall", "Stop at walls / ground", "bool", false)
                }
            },
            [7] = {
                key = "stun",
                label = "STUN (SELF)",
                short = "STUN",
                fields = {
                    [1] = b15("time", "Seconds", "number", 0.5),
                    [2] = b15("move", "Lock movement", "bool", true),
                    [3] = b15("jump", "Lock jump", "bool", true),
                    [4] = b15("rotate", "Direction lock", "bool", false),
                    [5] = b15("m1", "Block M1", "bool", false),
                    b15("anchor", "Freeze in place", "bool", false)
                }
            },
            [8] = {
                key = "face",
                label = "FACE",
                short = "FACE",
                fields = {
                    [1] = b15("mode", "Face", "choice", "Target", {
                        [1] = "Target",
                        [2] = "Cursor",
                        [3] = "Camera",
                        [4] = "Target 360",
                        [5] = "Cursor 360",
                        [6] = "Camera 360"
                    }),
                    [2] = b15("range", "Target range", "number", 60),
                    [3] = b15("prediction", "Target prediction (s)", "number", 0.15),
                    [4] = b15("time", "Keep facing (s, 0 = once)", "number", 0),
                    [5] = b15("smooth", "Smoothness", "choice", "Off", {[1] = "Off", [2] = "Light", [3] = "Medium", [4] = "Strong", [5] = "Custom"}),
                    b15("smoothTime", "Custom smoothness (s)", "number", 0.3)
                }
            },
            [9] = {
                key = "turn",
                label = "TURN",
                short = "TURN",
                fields = {
                    [1] = b15("mode", "Turn", "choice", "Spin", {[1] = "Spin", [2] = "Custom"}),
                    [2] = b15("yaw", "Turn right (deg, - = left)", "number", 360),
                    [3] = b15("pitch", "Tilt up (deg, - = down)", "number", 0),
                    [4] = b15("roll", "Roll (deg)", "number", 0),
                    [5] = b15("time", "Over (s, 0 = instant)", "number", 0.5),
                    [6] = b15("smooth", "Smoothness", "choice", "Off", {[1] = "Off", [2] = "Light", [3] = "Medium", [4] = "Strong", [5] = "Custom"}),
                    [7] = b15("smoothTime", "Custom smoothness (s)", "number", 0.3),
                    b15("hold", "Then stay like that (s)", "number", 0)
                }
            },
            [10] = {
                key = "key",
                label = "PRESS KEY / USE MOVE",
                short = "KEY",
                fields = {
                    [1] = b15("mode", "Do", "choice", "Press key", {[1] = "Press key", [2] = "Game move", [3] = "Use move"}),
                    [2] = b15("slot", "Game move key", "choice", "1", {[1] = "1", [2] = "2", [3] = "3", [4] = "4", [5] = "G"}),
                    [3] = b15("key", "Key (R, E, Q, 1, M1, M2...)", "text", "R"),
                    [4] = b15("time", "Hold key (s)", "number", 0.05),
                    b15("move", "Move name", "text", "Move 1")
                }
            },
            [11] = {
                key = "if",
                label = "CONDITION",
                short = "IF",
                fields = {
                    [1] = b15("check", "Check", "choice", "Hit someone", b12),
                    [2] = b15("from", "Movement from", "choice", "Move start", {[1] = "Move start", [2] = "Right now"}),
                    [3] = b15("wait", "Wait up to (s)", "number", 0.4),
                    [4] = b15("value", "Value (studs / % / speed / tag)", "number", 0),
                    [5] = b15("tag", "Tag name", "text", "combo"),
                    [6] = b15("item", "Item name (empty = any item)", "item", ""),
                    [7] = b15("anim", "Game anim ID", "anim", ""),
                    [8] = b15("yes", "If true: go to", "text", "-"),
                    [9] = b15("onFail", "If false", "choice", b13, {[1] = b13, [2] = b14, [3] = "Stop move", [4] = "Skip steps"}),
                    [10] = b15("skip", "Steps to skip", "number", 1),
                    [11] = b15("no", "If false: go to", "text", "-"),
                    b15("mode", "After the branch", "choice", "Come back", {[1] = "Come back", [2] = "End move there"})
                }
            },
            [12] = {key = "else", label = "ELSE", short = "ELSE", fields = {}},
            [13] = {key = "end", label = "END", short = "END", fields = {}},
            [14] = {
                key = "tag",
                label = "TAG",
                short = "TAG",
                fields = {
                    [1] = b15("tag", "Tag name", "text", "combo"),
                    [2] = b15("op", "Operation", "choice", "Add", {[1] = "Add", [2] = "Set"}),
                    b15("value", "Value", "number", 1)
                }
            },
            [15] = {
                key = "stop",
                label = "STOP ANIMS",
                short = "STOP",
                fields = {b15("fade", "Fade out (s)", "number", 0.1)}
            },
            [16] = {
                key = "shake",
                label = "SCREEN SHAKE",
                short = "SHAKE",
                fields = {
                    [1] = b15("strength", "Strength (1 = normal, 3 = big hit)", "number", 1),
                    b15("time", "Seconds", "number", 0.3)
                }
            },
            [17] = {
                key = "item",
                label = "GET ITEM",
                short = "ITEM",
                fields = {
                    [1] = b15("name", "Item name (like the Item Menu shows it)", "item", "Imed Ball"),
                    b15("waitEnd", "Wait until you have it", "bool", false)
                }
            },
            [18] = {
                key = "branch",
                label = "BRANCH",
                short = "BRANCH",
                fields = {
                    [1] = b15("target", "Go to branch", "text", "Branch 1"),
                    b15("mode", "Then", "choice", "Come back", {[1] = "Come back", [2] = "End move there"})
                }
            },
            [19] = {
                key = "switch",
                label = "SWITCH",
                short = "SWITCH",
                fields = {
                    [1] = b15("idle", "Standing: go to", "text", "-"),
                    [2] = b15("walk", "Walking: go to", "text", "-"),
                    [3] = b15("run", "Running: go to", "text", "-"),
                    [4] = b15("dash", "Dashing: go to", "text", "-"),
                    [5] = b15("air", "In air: go to", "text", "-"),
                    [6] = b15("block", "Blocking: go to", "text", "-"),
                    [7] = b15("default", "Anything else: go to", "text", "-"),
                    [8] = b15("from", "Movement from", "choice", "Move start", {[1] = "Move start", [2] = "Right now"}),
                    b15("mode", "Then", "choice", "Come back", {[1] = "Come back", [2] = "End move there"})
                }
            },
            [20] = {
                key = "ifbr",
                label = "IF BRANCH",
                short = "IF BR",
                fields = {
                    [1] = b15("check", "Check", "choice", "Hit someone", b12),
                    [2] = b15("from", "Movement from", "choice", "Move start", {[1] = "Move start", [2] = "Right now"}),
                    [3] = b15("wait", "Wait up to (s)", "number", 0.4),
                    [4] = b15("value", "Value (studs / % / speed / tag)", "number", 0),
                    [5] = b15("tag", "Tag name", "text", "combo"),
                    [6] = b15("item", "Item name (empty = any item)", "item", ""),
                    [7] = b15("anim", "Game anim ID", "anim", ""),
                    [8] = b15("yes", "If true: go to", "text", "-"),
                    [9] = b15("no", "If false: go to", "text", "-"),
                    b15("mode", "Then", "choice", "Come back", {[1] = "Come back", [2] = "End move there"})
                }
            }
        }
        local b17 = {}
        for b21, b22 in ipairs(b16) do
            b17[b22.key] = b22
        end
        local b23 = b8
        local b24 = b8
        b24.TypeByKey = b17
        b23.Types = b16
        b8.Advanced = {
            anim = {layer = true, weight = true, fade = true, fadeOut = true, start = true, stopPrev = true},
            tp = {prediction = true},
            vel = {prediction = true, shape = true, ramp = true, endMove = true},
            curve = {shape = true},
            dash = {up = true, keep = true},
            face = {prediction = true},
            ["if"] = {from = true, mode = true},
            ifbr = {from = true},
            switch = {from = true}
        }
        b8.BlockIf = b13
        b8.BranchIf = b14
        b8.IsBlockIf = function(c1)
            return c1.type == "if" and (c1.onFail == b13 or c1.onFail == b14)
        end
        local function b25(c1)
            return {
                k = c1 .. "TL",
                label = "   start \194\183 end \194\183 speed",
                kind = "timeline",
                keys = {[1] = c1 .. "Start", [2] = c1 .. "End", [3] = c1 .. "Speed"},
                defaults = {[1] = 0, [2] = 0, [3] = 1}
            }
        end
        local b26 = {
            [1] = b15("face", "Always face cursor", "choice", "Off", {[1] = "Off", [2] = "Always"}),
            [2] = b15("turn", "Turn speed (0.05 - 1)", "number", 0.35),
            [3] = b15("comboLen", "M1 combo length", "number", 4),
            [4] = b15("comboReset", "M1 combo resets after (s)", "number", 1.2),
            [5] = b15("look", "Look at cursor (360)", "choice", "Off", {[1] = "Off", [2] = "Head", [3] = "Head + torso"}),
            [6] = b15("lookUpDown", "Look up / down too", "bool", true),
            [7] = b15("idle", "Idle animation", "anim", ""),
            [8] = b25("idle"),
            [9] = b15("walk", "Walk animation", "anim", ""),
            [10] = b25("walk"),
            [11] = b15("run", "Run animation", "anim", ""),
            [12] = b25("run"),
            [13] = b15("jump", "Jump animation", "anim", ""),
            [14] = b25("jump"),
            [15] = b15("fall", "Fall animation", "anim", ""),
            [16] = b25("fall"),
            [17] = b15("block", "Block animation (F)", "anim", ""),
            [18] = b25("block"),
            [19] = b15("dashFront", "Front dash (Q)", "anim", ""),
            [20] = b25("dashFront"),
            [21] = b15("dashBack", "Back dash (S + Q)", "anim", ""),
            [22] = b25("dashBack"),
            [23] = b15("dashLeft", "Left dash (A + Q)", "anim", ""),
            [24] = b25("dashLeft"),
            [25] = b15("dashRight", "Right dash (D + Q)", "anim", ""),
            b25("dashRight")
        }
        local b27 = {
            [1] = b15("face", "Face cursor during this move", "bool", false),
            [2] = b15("turn", "Turn speed (0.05 - 1)", "number", 0.35),
            [3] = b15("hitMethod", "Hit detection", "choice", "Health or reaction", {
                [1] = "Health or reaction",
                [2] = "Health only",
                [3] = "Reaction only",
                [4] = "Health and reaction"
            }),
            [4] = b15("hitRange", "Hit detect range (studs)", "number", 40),
            [5] = b15("req", "Only usable if", "choice", "Always", {
                [1] = "Always",
                [2] = "Target in range",
                [3] = "In air",
                [4] = "On ground",
                [5] = "Idle",
                [6] = "Walking",
                [7] = "Running",
                [8] = "Dashing",
                [9] = "Blocking",
                [10] = "Moving",
                [11] = "Not stunned",
                [12] = "Got hit",
                [13] = "HP above %",
                [14] = "HP below %",
                [15] = "Tag at least"
            }),
            [6] = b15("reqValue", "Condition value", "number", 15),
            [7] = b15("reqTag", "Tag name", "text", "combo"),
            [8] = b15("reqNot", "Reverse it (usable when NOT true)", "bool", false),
            [9] = b15("hideGameMove", "Hide the game's animation while this move runs", "bool", true),
            [10] = b15("disableGameMove", "Disable the game's move on this key", "bool", false),
            [11] = b15("hideGameHotbar", "Hide game's hotbar slot", "bool", false),
            [12] = b15("replace", "Replace the game's move on this key", "bool", false),
            [13] = b15("pad", "On-screen button (phone)", "choice", "Auto", {[1] = "Auto", [2] = "On", [3] = "Off"}),
            [14] = b15("hotbar", "Show on game hotbar", "bool", true),
            [15] = b15("hotbarName", "Hotbar name (empty = move name)", "text", ""),
            [16] = b15("cancel", "Cancel it with", "choice", "Nothing", {[1] = "Nothing", [2] = "Any other move", [3] = "A key"}),
            [17] = b15("cancelKey", "Cancel key (1, R, Q, M1...)", "text", "1"),
            b15("debug", "Debug: pop up what it decides", "bool", false)
        }
        b8.SettingFields = b26
        b8.MoveFields = b27
        local function b28(c1, c2)
            c1 = type(c1) == "table" and c1 or {}
            local c3 = {}
            for c7, c8 in ipairs(c2) do
                if c8.kind == "timeline" then
                    for c12, c13 in ipairs(c8.keys) do
                        c3[c13] = math.max(0, tonumber(c1[c13]) or c8.defaults[c12])
                    end
                else
                    local c14 = c1[c8.k]
                    if c8.kind == "number" then
                        c14 = tonumber(c14) or c8.default
                    elseif c8.kind == "bool" then
                        if type(c14) ~= "boolean" then
                            c14 = c8.default
                        end
                    elseif c8.kind == "choice" then
                        if not table.find(c8.options, c14) then
                            c14 = c8.default
                        end
                    elseif c8.kind == "anim" then
                        c14 = b9(c14) or ""
                    elseif c8.kind == "text" then
                        c14 = type(c14) == "string" and string.sub(c14, 1, 40) or c8.default
                    end
                    c3[c8.k] = c14
                end
            end
            return c3
        end
        local function b29(c1)
            local c2 = b28(c1, b26)
            if c2.dashFront == "" and type(c1) == "table" then
                c2.dashFront = b9(c1.dash) or ""
            end
            return c2
        end
        b8.NewStep = function(c1)
            local c2 = {type = c1}
            for c6, c7 in ipairs(b17[c1].fields) do
                c2[c7.k] = c7.default
            end
            return c2
        end
        local function b30(c1)
            if type(c1) ~= "table" or not b17[c1.type] then
                return nil
            end
            local c2 = {type = c1.type}
            for c6, c7 in ipairs(b17[c1.type].fields) do
                local c8 = c1[c7.k]
                if c7.kind == "number" then
                    c8 = tonumber(c8) or c7.default
                    if c7.k == "smoothTime" then
                        c8 = math.clamp(c8, 0, 5)
                    end
                elseif c7.kind == "bool" then
                    if type(c8) ~= "boolean" then
                        c8 = c7.default
                    end
                elseif c7.kind == "choice" then
                    if not table.find(c7.options, c8) then
                        c8 = c7.default
                    end
                elseif c7.kind == "anim" then
                    c8 = b9(c8) or ""
                else
                    c8 = c8 ~= nil and tostring(c8) or c7.default
                end
                c2[c7.k] = c8
            end
            if c1.off == true then
                c2.off = true
            end
            return c2
        end
        b8.CleanStep = b30
        local b31 = {[1] = "Key + used", [2] = "On animation", [3] = "Key only"}
        b8.Triggers = b31
        local b32 = {[1] = "One", [2] = "Two", [3] = "Three", [4] = "Four"}
        local function b33(c1)
            return {
                name = "Move " .. c1,
                key = b32[c1] or "One",
                cd = 5,
                trigger = "Key + used",
                anim = "",
                alts = {},
                hide = true,
                combo = 0,
                opts = b28(nil, b27),
                steps = {},
                branches = {}
            }
        end
        b8.NewMove = b33
        local function b34(c1, c2, c3)
            local c4 = b33(c2)
            if type(c1) ~= "table" then
                return c4
            end
            c4.name = string.sub(tostring(c1.name or c4.name), 1, 24)
            local c5, c6 = pcall(function()
                return Enum.KeyCode[tostring(c1.key)]
            end)
            if c5 and c6 then
                c4.key = c6.Name
            elseif c1.key == "MouseButton1" or c1.key == "MouseButton2" then
                c4.key = c1.key
            end
            c4.combo = math.clamp(math.floor(tonumber(c1.combo) or 0), 0, 10)
            if type(c1.opts) == "table" then
                c4.opts = b28(c1.opts, b27)
                if type(c1.opts.hideGameMove) ~= "boolean" then
                    c4.opts.hideGameMove = c1.hide ~= false
                end
            elseif type(c3) == "table" then
                c4.opts = b28({hitMethod = c3.hitMethod, hitRange = c3.hitRange, turn = c3.turn}, b27)
                c4.opts.face = c3.face == "During moves"
            end
            c4.cd = math.clamp(tonumber(c1.cd) or c4.cd, 0, 300)
            if table.find(b31, c1.trigger) then
                c4.trigger = c1.trigger
            end
            c4.anim = b9(c1.anim) or ""
            if type(c1.alts) == "table" and c4.anim ~= "" then
                for c10, c11 in ipairs(c1.alts) do
                    local c12 = b9(c11)
                    if c12 and c12 ~= c4.anim and not table.find(c4.alts, c12) and #c4.alts < 4 then
                        table.insert(c4.alts, c12)
                    end
                end
            end
            c4.hide = c4.opts.hideGameMove == true
            if table.find({[1] = "Front", [2] = "Back", [3] = "Left", [4] = "Right"}, c1.dir) then
                c4.dir = c1.dir
            end
            if type(c1.steps) == "table" then
                for c16, c17 in ipairs(c1.steps) do
                    local c18 = b30(c17)
                    if c18 then
                        table.insert(c4.steps, c18)
                    end
                end
            end
            if type(c1.branches) == "table" then
                for c22, c23 in ipairs(c1.branches) do
                    if type(c23) == "table" and #c4.branches < 12 then
                        local c24 = {name = string.sub(a7(tostring(c23.name or "")), 1, 20), steps = {}}
                        if c24.name == "" or string.lower(c24.name) == "main" or c24.name == "-" then
                            c24.name = "Branch " .. #c4.branches + 1
                        end
                        for c28, c29 in ipairs(type(c23.steps) == "table" and c23.steps or {}) do
                            local c30 = b30(c29)
                            if c30 then
                                table.insert(c24.steps, c30)
                            end
                        end
                        table.insert(c4.branches, c24)
                    end
                end
            end
            return c4
        end
        local function b35(c1)
            return {name = "Moveset " .. c1, moves = {b33(1)}, settings = b29(nil)}
        end
        local function b36(c1, c2)
            local c3 = type(c1) == "table" and type(c1.settings) == "table" and c1.settings.dashMode == "Custom dash" and c1.settings or nil
            local c4 = type(c1) == "table" and c1.settings or nil
            if c3 then
                c4 = {}
                for c8, c9 in pairs(c3) do
                    c4[c8] = c9
                end
                for c13, c14 in ipairs({[1] = "dashFront", [2] = "dashBack", [3] = "dashLeft", [4] = "dashRight"}) do
                    c4[c14] = ""
                end
            end
            local c15 = {name = "Moveset " .. c2, moves = {}, settings = b29(c4)}
            if type(c1) ~= "table" then
                c15.moves = {b33(1)}
                return c15
            end
            c15.name = string.sub(tostring(c1.name or c15.name), 1, 32)
            if type(c1.moves) == "table" then
                for c19, c20 in ipairs(c1.moves) do
                    table.insert(c15.moves, b34(c20, c19, c1.settings))
                end
            elseif type(c1.map) == "table" then
                for c24, c25 in pairs(c1.map) do
                    local c26 = b9(c24)
                    local c27 = type(c25) == "table" and b9(c25.to) or b9(c25)
                    if c26 and c27 then
                        local c28 = b33(#c15.moves + 1)
                        c28.name = string.sub(type(c25) == "table" and c25.label and tostring(c25.label) or "Swap " .. c26, 1, 24)
                        c28.trigger = "On animation"
                        c28.anim = c26
                        c28.cd = 0
                        local c29 = b8.NewStep("anim")
                        c29.id = c27
                        c29.speed = tonumber(c1.speed) or 1
                        c28.steps = {[1] = c29}
                        table.insert(c15.moves, c28)
                    end
                end
            end
            if c3 then
                local c30 = b33(#c15.moves + 1)
                c30.name = "Dash"
                local c31 = a7(tostring(c3.dashKey or "Q"))
                local c32, c33 = pcall(function()
                    return Enum.KeyCode[#c31 == 1 and string.upper(c31) or c31]
                end)
                c30.key = c32 and c33 and c33.Name or "Q"
                c30.trigger = "Key only"
                c30.cd = math.clamp(tonumber(c3.dashCd) or 1, 0, 300)
                c30.hide = false
                c30.opts.hideGameMove = false
                c30.opts.replace = true
                if c3.dashAir == false then
                    c30.opts.req = "On ground"
                end
                local c34 = b8.NewStep("dash")
                if table.find({[1] = "Move keys", [2] = "Forward", [3] = "Camera", [4] = "Cursor"}, c3.dashDir) then
                    c34.dir = c3.dashDir
                end
                c34.speed = tonumber(c3.dashSpeed) or 80
                c34.time = tonumber(c3.dashTime) or 0.25
                c34.ease = c3.dashEase ~= false
                c34.turn = c3.dashTurn == true
                c34.wall = c3.dashWall ~= false
                c34.up = tonumber(c3.dashUp) or 0
                c34.keep = tonumber(c3.dashKeep) or 0.3
                c30.steps = {[1] = c34}
                table.insert(c15.moves, c30)
            end
            if #c15.moves == 0 then
                c15.moves = {b33(1)}
            end
            return c15
        end
        local b37 = {version = 2, active = 1, sets = {b35(1)}}
        if b7 then
            pcall(function()
                if typeof(isfile) ~= "function" or isfile(b5) then
                    local c1 = b2:JSONDecode(readfile(b5))
                    if type(c1) == "table" and type(c1.sets) == "table" and #c1.sets > 0 then
                        b37 = c1
                    end
                end
            end)
        end
        for b41, b42 in ipairs(b37.sets) do
            b37.sets[b41] = b36(b42, b41)
        end
        b37.version = 2
        b37.active = math.clamp(tonumber(b37.active) or 1, 1, #b37.sets)
        if b37.enabled ~= nil then
            b8.Enabled = b37.enabled == true
        end
        if b37.capture ~= nil then
            b8.Capture = b37.capture == true
        end
        if b37.spy ~= nil then
            b8.Spy = b37.spy == true
        end
        local b44 = {}
        local b43 = {}
        local b47 = nil
        local b46 = nil
        local b45 = nil
        local b48 = false
        local function b49()
            local c1, c2 = pcall(function()
                return b2:JSONEncode(b37.sets[b37.active])
            end)
            return c1 and c2 or nil
        end
        local b50 = 0
        b8.Save = function()
            local c1 = b49()
            if c1 then
                if b46 ~= b37.active or b47 ~= #b37.sets then
                    b44 = {}
                    b43 = {}
                elseif not b48 and b45 and c1 ~= b45 then
                    table.insert(b43, b45)
                    if #b43 > 60 then
                        table.remove(b43, 1)
                    end
                    b44 = {}
                end
                b47 = #b37.sets
                b46 = b37.active
                b45 = c1
            end
            if not b7 then
                return
            end
            b50 = b50 + 1
            local c2 = b50
            task.delay(0.5, function()
                if c2 ~= b50 then
                    return
                end
                local d1 = b37
                local d2 = b37
                local d3 = b37
                d3.spy = b8.Spy
                d2.capture = b8.Capture
                d1.enabled = b8.Enabled
                pcall(function()
                    writefile(b5, b2:JSONEncode(b37))
                end)
            end)
        end
        b8.Current = function()
            return b37.sets[b37.active]
        end
        b8.Index = function()
            return b37.active, #b37.sets
        end
        b8.Settings = function()
            return b8.Current().settings
        end
        local b51 = {}
        for b55, b56 in ipairs(type(b37.recent) == "table" and b37.recent or {}) do
            local b57 = b9(b56)
            if b57 and #b51 < 30 and not table.find(b51, b57) then
                table.insert(b51, b57)
            end
        end
        b37.recent = b51
        local b58 = {}
        if type(b37.reactions) == "table" then
            for b62, b63 in pairs(b37.reactions) do
                local b64 = b9(b62)
                if b64 and tonumber(b63) then
                    b58[b64] = math.floor(tonumber(b63))
                end
            end
        end
        b37.reactions = b58
        b37.reactManual = nil
        local b65 = {}
        for b69, b70 in ipairs(type(b37.favorites) == "table" and b37.favorites or {}) do
            local b71 = b9(b70)
            if b71 and not table.find(b65, b71) then
                table.insert(b65, b71)
            end
        end
        b37.favorites = b65
        b37.stateAnims = nil
        b47 = #b37.sets
        b46 = b37.active
        b45 = b49()
        b8.Favorites = function()
            return b37.favorites
        end
        b8.IsFavorite = function(c1)
            return table.find(b37.favorites, c1) ~= nil
        end
        b8.ToggleFavorite = function(c1)
            local c2 = table.find(b37.favorites, c1)
            if c2 then
                table.remove(b37.favorites, c2)
            else
                table.insert(b37.favorites, 1, c1)
            end
            b8.Save()
            return c2 == nil
        end
        b8.Recent = function()
            return b37.recent
        end
        b8.PushRecent = function(c1)
            local c2 = table.find(b37.recent, c1)
            if c2 then
                table.remove(b37.recent, c2)
            end
            table.insert(b37.recent, 1, c1)
            while #b37.recent > 30 do
                table.remove(b37.recent)
            end
            b8.Save()
        end
        local function b72()
            local c1 = b4.Character
            return c1 and c1:FindFirstChildOfClass("Humanoid")
        end
        local function b73()
            local c1 = b4.Character
            return c1 and c1:FindFirstChild("HumanoidRootPart")
        end
        local function b74()
            local c1 = b72()
            return c1 and c1:FindFirstChildOfClass("Animator")
        end
        local b75 = {}
        local function b76(c1)
            local c2 = b73()
            if not c2 then
                return nil
            end
            local c4 = c1
            local c3 = nil
            for c8 in pairs(b75) do
                if c8 ~= b4.Character and c8.Parent then
                    local c9 = c8:FindFirstChildOfClass("Humanoid")
                    local c10 = c8:FindFirstChild("HumanoidRootPart")
                    if c9 and c10 and c9.Health > 0 then
                        local c11 = (c10.Position - c2.Position)["Magnitude"]
                        if c11 <= c4 then
                            c4 = c11
                            c3 = c10
                        end
                    end
                end
            end
            return c3, c4
        end
        local b77 = {}
        local b78 = -math.huge
        local b79 = -math.huge
        local b80 = 0.15
        local b81 = -math.huge
        local b82 = false
        local b83 = nil
        local function b84()
            local c1 = UserInputService:IsKeyDown(Enum.KeyCode.W)
            local c2 = UserInputService:IsKeyDown(Enum.KeyCode.A)
            local c3 = UserInputService:IsKeyDown(Enum.KeyCode.S)
            local c4 = UserInputService:IsKeyDown(Enum.KeyCode.D)
            if c3 and not c1 then
                return "dashBack"
            elseif c2 and not c4 and not c1 then
                return "dashLeft"
            elseif c4 and not c2 and not c1 then
                return "dashRight"
            end
            return "dashFront"
        end
        local b85 = {
            [1] = "cool",
            [2] = "cd",
            [3] = "debounce",
            [4] = "break",
            [5] = "can",
            [6] = "delay",
            [7] = "time",
            [8] = "count",
            [9] = "hit",
            [10] = "last",
            [11] = "stun"
        }
        local function b86()
            if b82 then
                return true
            end
            local c1 = b4.Character
            if c1 then
                for c5, c6 in pairs(c1:GetAttributes()) do
                    local c7 = string.lower(c5)
                    if (c6 == true or type(c6) == "number" and c6 > 0) and string.find(c7, "block", 1, true) then
                        local c8 = false
                        for c12, c13 in ipairs(b85) do
                            if string.find(c7, c13, 1, true) then
                                c8 = true
                                break
                            end
                        end
                        if not c8 then
                            return true
                        end
                    end
                end
            end
            return false
        end
        local b87 = setmetatable({}, {__mode = "k"})
        local b88 = setmetatable({}, {__mode = "k"})
        local b89 = 2
        local b90 = 0.35
        local function b91(c1)
            local c2 = string.lower(tostring(c1))
            if string.find(c2, "hitbox", 1, true) then
                return false
            end
            return string.find(c2, "stun", 1, true) ~= nil or string.find(c2, "ragdoll", 1, true) ~= nil or string.find(c2, "knock", 1, true) ~= nil or string.find(c2, "hitstun", 1, true) ~= nil or string.find(c2, "launch", 1, true) ~= nil
        end
        local function b92(c1)
            local c2 = b4.Character
            local c3 = c2 and c2:FindFirstChild("HumanoidRootPart")
            local c4 = c1:FindFirstChild("HumanoidRootPart")
            if c3 and c4 then
                return (c4.Position - c3.Position)["Magnitude"]
            end
            return nil
        end
        local function b93(c1)
            local c2 = string.lower(tostring(c1))
            if string.find(c2, "ragdoll", 1, true) or string.find(c2, "knock", 1, true) or string.find(c2, "launch", 1, true) or string.find(c2, "fling", 1, true) then
                return 2
            end
            return 1
        end
        local function b94(c1, c2, c3, c4)
            if not a37 then
                return
            end
            if c1 == b4.Character then
                if c4 == 2 then
                    b78 = os.clock()
                    b79 = b78
                end
                return
            end
            local c5 = b92(c1)
            if not c5 or c5 > 150 then
                return
            end
            local c6 = os.clock()
            table.insert(b77, {t = c6, model = c1, dist = c5, kind = c2, dmg = c3 or 0, tier = c4 or 1})
            if #b77 > 40 then
                table.remove(b77, 1)
            end
        end
        local function b95(c1)
            local c2 = (b37.reactions[c1] or 0) + 1
            b37.reactions[c1] = c2
            if c2 == b89 then
                b8.Save()
            end
        end
        local function b96(c1, c2)
            local c3 = c2.Animation
            if not c3 then
                return
            end
            local c4 = b9(c3.AnimationId)
            if not c4 then
                return
            end
            local c5 = c2.Priority
            if c5 == Enum.AnimationPriority.Core or c5 == Enum.AnimationPriority.Idle or c5 == Enum.AnimationPriority.Movement then
                return
            end
            local c6 = os.clock()
            local c7 = b88[c1]
            if not c7 then
                c7 = {}
                b88[c1] = c7
            end
            table.insert(c7, {id = c4, t = c6})
            while #c7 > 0 and c6 - c7[1].t > 1 do
                table.remove(c7, 1)
            end
            if b87[c1] and c6 - b87[c1] <= b90 then
                b95(c4)
            end
            b11(c4, c3.Name)
            if (b37.reactions[c4] or 0) >= b89 then
                b94(c1, "reaction", 0, 1)
            end
        end
        local function b97(c1, c2)
            if b75[c1] then
                return
            end
            local c3 = {}
            b75[c1] = c3
            local c4 = c2.Health
            table.insert(c3, c2.HealthChanged:Connect(function(d1)
                local d2 = c4 - d1
                c4 = d1
                if d2 <= 0 or not a37 or not b8.Enabled then
                    return
                end
                if c1 == b4.Character then
                    b78 = os.clock()
                    return
                end
                local d3 = os.clock()
                b87[c1] = d3
                for d7, d8 in ipairs(b88[c1] or {}) do
                    if d3 - d8.t <= b90 then
                        b95(d8.id)
                    end
                end
                b94(c1, "health", d2, 1)
            end))
            table.insert(c3, c1.AttributeChanged:Connect(function(d1)
                if not b8.Enabled then
                    return
                end
                local d2 = c1:GetAttribute(d1)
                if d2 and d2 ~= 0 and b91(d1) then
                    b94(c1, "reaction", 0, b93(d1))
                end
            end))
            table.insert(c3, c1.ChildAdded:Connect(function(d1)
                if b8.Enabled and b91(d1.Name) and not d1:IsA("BaseScript") then
                    b94(c1, "reaction", 0, b93(d1.Name))
                end
            end))
            task.spawn(function()
                local d1 = c1:WaitForChild("HumanoidRootPart", 5)
                if d1 and b75[c1] == c3 then
                    table.insert(c3, d1.ChildAdded:Connect(function(e1)
                        if e1.Name == "KnockbackForce" then
                            b94(c1, "reaction", 0, 2)
                        end
                    end))
                end
                local d2 = c1:FindFirstChild("Info")
                if d2 and b75[c1] == c3 then
                    table.insert(c3, d2.ChildAdded:Connect(function(e1)
                        if e1.Name == "Knockback" then
                            b94(c1, "reaction", 0, 2)
                        end
                    end))
                end
            end)
            task.spawn(function()
                local d1 = c1 ~= b4.Character and c2:WaitForChild("Animator", 5)
                if d1 and b75[c1] == c3 then
                    table.insert(c3, d1.AnimationPlayed:Connect(function(e1)
                        if b8.Enabled then
                            b96(c1, e1)
                        end
                    end))
                end
            end)
        end
        a39(workspace.DescendantAdded:Connect(function(c1)
            if c1:IsA("Humanoid") and c1.Parent and c1.Parent:IsA("Model") then
                local c2 = c1.Parent
                task.defer(function()
                    if a37 and c1.Parent == c2 then
                        b97(c2, c1)
                    end
                end)
            end
        end))
        task.spawn(function()
            task.wait(1)
            local function c1(d1)
                if a37 and d1:IsA("Model") then
                    local d2 = d1:FindFirstChildOfClass("Humanoid")
                    if d2 then
                        b97(d1, d2)
                        return true
                    end
                end
                return false
            end
            for c5, c6 in ipairs(workspace:GetChildren()) do
                if not c1(c6) and (c6:IsA("Folder") or c6:IsA("Model")) then
                    for c10, c11 in ipairs(c6:GetChildren()) do
                        c1(c11)
                    end
                end
            end
            while a37 do
                task.wait(3)
                for c15, c16 in pairs(b75) do
                    if not c15:IsDescendantOf(workspace) then
                        for c20, c21 in ipairs(c16) do
                            c21:Disconnect()
                        end
                        b75[c15] = nil
                    end
                end
            end
        end)
        local function b98(c1, c2, c3)
            local c4 = {}
            for c8 = #b77, 1, -1 do
                local c9 = b77[c8]
                if c9.t < c1 then
                    break
                end
                if (c2 <= 0 or c9.dist <= c2) and c9.model.Parent then
                    if c3 == "Health or reaction" then
                        return c9
                    elseif c3 == "Health only" and c9.kind == "health" then
                        return c9
                    elseif c3 == "Reaction only" and c9.kind == "reaction" then
                        return c9
                    elseif c3 == "Health and reaction" then
                        local c10 = c4[c9.model] or {}
                        c4[c9.model] = c10
                        c10[c9.kind] = true
                        if c10.health and c10.reaction then
                            return c9
                        end
                    end
                end
            end
            return nil
        end
        local function b99(c1, c2, c3)
            local c4 = {}
            for c8 = #b77, 1, -1 do
                local c9 = b77[c8]
                if c9.t < c1 then
                    break
                end
                if (c2 <= 0 or c9.dist <= c2) and c9.model.Parent then
                    local c10 = c4[c9.model]
                    if not c10 then
                        c10 = {first = c9.t}
                        c4[c9.model] = c10
                    end
                    c10.first = math.min(c10.first, c9.t)
                    if c9.tier == 2 then
                        c10.t2 = true
                    end
                end
            end
            local c11 = os.clock()
            for c15, c16 in pairs(c4) do
                if c3 == 2 and c16.t2 then
                    return c15
                elseif c3 == 1 and not c16.t2 and c11 - c16.first >= b80 then
                    return c15
                end
            end
            return nil
        end
        b8.ReactionCount = function()
            local c1 = 0
            for c5, c6 in pairs(b37.reactions) do
                if c6 >= b89 then
                    c1 = c1 + 1
                end
            end
            return c1
        end
        b8.ResetReactions = function()
            b37.reactions = {}
            b8.Save()
        end
        local function b100(c1)
            if not c1 then
                return false
            end
            for c5, c6 in pairs(c1:GetAttributes()) do
                local c7 = string.lower(c5)
                if c6 and c6 ~= 0 and (string.find(c7, "stun", 1, true) or c7 == "ragdoll") then
                    return true
                end
            end
            for c11, c12 in ipairs(c1:GetChildren()) do
                if not c12:IsA("BaseScript") and string.find(string.lower(c12.Name), "stun", 1, true) then
                    return true
                end
            end
            return false
        end
        local function b101(c1, c2)
            local c3 = c1 and c1.hitTarget
            local c4 = c3 and c3:FindFirstChildOfClass("Humanoid")
            local c5 = c3 and c3:FindFirstChild("HumanoidRootPart")
            local c6 = b73()
            if c4 and c5 and c6 and c4.Health > 0 and (c5.Position - c6.Position)["Magnitude"] <= math.max(c2, c1.move.opts.hitRange) then
                return c5
            end
            return b76(c2)
        end
        local function b102(c1, c2)
            if not c1 or not c1.Parent then
                return nil
            end
            local c3 = math.clamp(tonumber(c2) or 0, 0, 2)
            return c1.Position + c1.AssemblyLinearVelocity * c3
        end
        local b103 = {untilT = 0, move = false, jump = false, rotate = false, anchor = false, m1 = false}
        local b104 = nil
        local b105 = false
        local function b106(c1)
            if c1 and not b105 then
                b105 = true
                pcall(function()
                    b3:BindActionAtPriority("RYOIKI_NoM1", function()
                        return Enum.ContextActionResult.Sink
                    end, false, 3000, Enum.UserInputType.MouseButton1)
                end)
            elseif not c1 and b105 then
                b105 = false
                pcall(function()
                    b3:UnbindAction("RYOIKI_NoM1")
                end)
            end
        end
        local function b107()
            local c2 = b73()
            local c1 = b72()
            if os.clock() < b103.untilT and c1 then
                if not b104 or b104.h ~= c1 then
                    b104 = {
                        h = c1,
                        r = c2,
                        ws = c1.WalkSpeed,
                        jp = c1.JumpPower,
                        jh = c1.JumpHeight,
                        ar = c1.AutoRotate,
                        an = c2 and c2.Anchored
                    }
                end
                if b103.move then
                    c1.WalkSpeed = 0
                end
                if b103.jump then
                    c1.JumpPower = 0
                    c1.JumpHeight = 0
                end
                if b103.rotate then
                    c1.AutoRotate = false
                end
                if b103.anchor and c2 then
                    c2.Anchored = true
                end
                b106(b103.m1)
            elseif b104 then
                local c3 = b104
                b104 = nil
                if c3.h.Parent then
                    pcall(function()
                        if b103.move then
                            c3.h.WalkSpeed = c3.ws
                        end
                        if b103.jump then
                            c3.h.JumpPower = c3.jp
                            c3.h.JumpHeight = c3.jh
                        end
                        if b103.rotate then
                            c3.h.AutoRotate = c3.ar
                        end
                        if b103.anchor and c3.r and c3.r.Parent then
                            c3.r.Anchored = c3.an
                        end
                    end)
                end
                local c4 = b103
                local c5 = b103
                local c6 = b103
                local c7 = b103
                local c8 = b103
                c8.m1 = false
                c7.anchor = false
                c6.rotate = false
                c5.jump = false
                c4.move = false
                b106(false)
            end
        end
        local function b108(c1)
            local c2 = os.clock()
            if c2 >= b103.untilT then
                local c3 = b103
                local c4 = b103
                local c5 = b103
                local c6 = b103
                local c7 = b103
                c7.m1 = c1.m1
                c6.anchor = c1.anchor
                c5.rotate = c1.rotate
                c4.jump = c1.jump
                c3.move = c1.move
            else
                b103.move = b103.move or c1.move
                b103.jump = b103.jump or c1.jump
                b103.rotate = b103.rotate or c1.rotate
                b103.anchor = b103.anchor or c1.anchor
                b103.m1 = b103.m1 or c1.m1
            end
            b103.untilT = math.max(b103.untilT, c2 + math.max(c1.time, 0))
        end
        b8.StunLeft = function()
            return math.max(0, b103.untilT - os.clock())
        end
        local b109 = {}
        local function b110(c1)
            b109 = {}
            local c2 = c1 and c1:WaitForChild("Animate", 5)
            if c2 then
                for c6, c7 in ipairs(c2:GetDescendants()) do
                    if c7:IsA("Animation") then
                        local c8 = b9(c7.AnimationId)
                        if c8 then
                            b109[c8] = true
                        end
                    end
                end
            end
        end
        local function b111()
            local c1 = workspace.CurrentCamera
            if not c1 then
                return nil
            end
            local c2 = UserInputService:GetMouseLocation()
            local c3 = c1:ViewportPointToRay(c2.X, c2.Y)
            local c4 = RaycastParams.new()
            c4.FilterType = Enum.RaycastFilterType.Exclude
            c4.FilterDescendantsInstances = {[1] = b4.Character}
            local c5 = workspace:Raycast(c3.Origin, c3.Direction * 1000, c4)
            return c5 and c5.Position or c3.Origin + c3.Direction * 1000
        end
        local function b112(c1, c2)
            local c3 = c2 - c1
            if c3.Magnitude < 0.05 then
                return nil
            end
            local c4 = RaycastParams.new()
            c4.FilterType = Enum.RaycastFilterType.Exclude
            local c5 = {[1] = b4.Character}
            c4.FilterDescendantsInstances = c5
            pcall(function()
                c4.RespectCanCollide = true
            end)
            local function c6()
                local d1, d2 = pcall(function()
                    return workspace:Spherecast(c1, 1.2, c3, c4)
                end)
                if d1 then
                    return d2
                end
                return workspace:Raycast(c1, c3, c4)
            end
            for c10 = 1, 6 do
                local c11 = c6()
                if not c11 then
                    return nil
                end
                local c12 = c11.Instance:FindFirstAncestorOfClass("Model")
                if c12 and c12:FindFirstChildOfClass("Humanoid") then
                    table.insert(c5, c12)
                    c4.FilterDescendantsInstances = c5
                else
                    local c14 = b73()
                    local c13 = b72()
                    local c15 = c14 and c14.Size.Y / 2 or 1
                    local c16 = nil
                    if c11.Normal.Y > 0.6 then
                        local c17 = c13 and c13.RigType == Enum.HumanoidRigType.R15 and c13.HipHeight or 2
                        c16 = c15 + c17 + 0.1
                    else
                        c16 = (c14 and c14.Size.X / 2 or 1) + 0.6
                    end
                    return c11.Position + c11.Normal * c16
                end
            end
            return nil
        end
        local function b113(c1, c2, c3)
            local c4 = Vector3.new(c2.X, c1.Position.Y, c2.Z)
            if (c4 - c1.Position)["Magnitude"] < 0.5 then
                return
            end
            local c5 = CFrame.lookAt(c1.Position, c4)
            c1.CFrame = c3 >= 1 and c5 or c1.CFrame:Lerp(c5, c3)
        end
        local b116 = 0
        local b115 = true
        local b114 = 0
        local function b117(c1, c2)
            if b114 == 0 then
                b115 = c1.AutoRotate
            end
            b114 = b114 + 1
            if c2 then
                b116 = b116 + 1
            end
            c1.AutoRotate = false
        end
        local function b118(c1, c2)
            b114 = math.max(0, b114 - 1)
            if c2 then
                b116 = math.max(0, b116 - 1)
            end
            if not c1.Parent then
                return
            end
            if b116 == 0 and c1:GetState() == Enum.HumanoidStateType.Physics then
                pcall(c1.ChangeState, c1, Enum.HumanoidStateType.GettingUp)
            end
            if b114 == 0 then
                c1.AutoRotate = b115 ~= false
            end
        end
        local function b119(c1, c2, c3, c4, c5, c6, c7)
            local c9 = b72()
            local c8 = b73()
            if not c8 or not c9 then
                return
            end
            local function c10(d1)
                local d2 = c2(d1)
                if not d2 or c5 then
                    return d2
                end
                if not c4 then
                    d2 = Vector3.new(d2.X, 0, d2.Z)
                end
                if d2.Magnitude < 0.05 then
                    return nil
                end
                d2 = d2.Unit
                local d3 = math.abs(d2.Y) > 0.99 and d1.CFrame.LookVector or Vector3.new(0, 1, 0)
                return CFrame.lookAt(Vector3.zero, d2, d3)
            end
            local c11 = not c5 and V.a269(c6, c7) or 0
            local c12 = c10(c8)
            if c11 > 0 then
                c12 = c8.CFrame.Rotation
            elseif c12 then
                c8.CFrame = CFrame.new(c8.Position) * c12
            end
            if c3 <= 0 and not c4 and c11 <= 0 then
                return
            end
            local c13 = os.clock() + math.max(c3 > 0 and c3 or 0, c4 and 0.25 or 0, c11)
            b117(c9, c4)
            c1.tilt = (c1.tilt or 0) + 1
            local c14 = Instance.new("Attachment")
            c14.Name = "RYOIKI_Face"
            c14.Parent = c8
            local c15 = Instance.new("AlignOrientation")
            c15.Name = "RYOIKI_Face"
            c15.Mode = Enum.OrientationAlignmentMode.OneAttachment
            c15.Attachment0 = c14
            c15.RigidityEnabled = true
            c15.CFrame = c12 or c8.CFrame.Rotation
            c15.Parent = c8
            table.insert(c1.objects, c15)
            table.insert(c1.objects, c14)
            if c4 then
                pcall(c9.ChangeState, c9, Enum.HumanoidStateType.Physics)
            end
            local c16 = "RYOIKI_Face" .. tostring(math.random(1, 1000000000.0))
            pcall(function()
                b1:BindToRenderStep(c16, Enum.RenderPriority.Last.Value + 10, function()
                    local e1 = b73()
                    if e1 and c12 then
                        e1.CFrame = CFrame.new(e1.Position) * c12
                    end
                end)
            end)
            local c17 = nil
            c17 = b1.Heartbeat:Connect(function(d1)
                local d2 = b73()
                if os.clock() < c13 and c1.alive and d2 and c9.Parent then
                    local d3 = c10(d2) or c12
                    if c11 > 0 and d3 and c12 then
                        c12 = c12:Lerp(d3, V.a270(d1, c6, c7))
                    else
                        c12 = d3
                    end
                    if c12 then
                        c15.CFrame = c12
                        d2.CFrame = CFrame.new(d2.Position) * c12
                    end
                    if c4 and b116 > 0 and c9:GetState() ~= Enum.HumanoidStateType.Physics then
                        pcall(c9.ChangeState, c9, Enum.HumanoidStateType.Physics)
                    end
                    return
                end
                c17:Disconnect()
                pcall(function()
                    b1:UnbindFromRenderStep(c16)
                end)
                c15:Destroy()
                c14:Destroy()
                c1.tilt = math.max(0, (c1.tilt or 1) - 1)
                if c9.Parent then
                    if c4 then
                        if d2 then
                            local d4 = d2.CFrame.LookVector
                            local d5 = Vector3.new(d4.X, 0, d4.Z)
                            if d5.Magnitude < 0.1 then
                                d5 = Vector3.new(d2.CFrame.UpVector.X, 0, d2.CFrame.UpVector.Z)
                            end
                            if d5.Magnitude > 0.1 then
                                d2.CFrame = CFrame.lookAt(d2.Position, d2.Position + d5)
                            end
                        end
                    end
                end
                b118(c9, c4)
            end)
        end
        local function b120(c1, c2)
            local c3 = workspace.CurrentCamera
            if (c1 == "Camera 3D" or c1 == "Camera 360") and c3 then
                return c3.CFrame.Rotation
            elseif c1 == "Character Aim" then
                local c4 = b4.Character
                local c5 = c4 and c4:FindFirstChild("Head")
                local c6 = c5 or c4 and c4:FindFirstChild("UpperTorso") or c2
                return c6 and c6.CFrame.Rotation or c2 and c2.CFrame and c2.CFrame.Rotation or CFrame.identity
            end
            local c7 = nil
            if c1 == "Camera" and c3 then
                c7 = c3.CFrame.LookVector
            elseif c1 == "Cursor" then
                local c8 = b111()
                c7 = c8 and c8 - c2.Position
            elseif c1 == "Move keys" then
                local c9 = b72()
                c7 = c9 and c9.MoveDirection
            end
            if not c7 then
                return nil
            end
            c7 = Vector3.new(c7.X, 0, c7.Z)
            if c7.Magnitude < 0.05 then
                return nil
            end
            return CFrame.lookAt(Vector3.zero, c7.Unit)
        end
        local b121 = {[1] = "idle", [2] = "walk", [3] = "run", [4] = "jump", [5] = "fall"}
        local b122 = setmetatable({}, {__mode = "k"})
        local b123 = {}
        b8.ApplyLocomotion = function(c1)
            local c2 = b4.Character
            local c3 = c2 and c2:FindFirstChild("Animate")
            if not c3 then
                return 0
            end
            local c4 = b8.Settings()
            local c5 = 0
            table.clear(b123)
            for c9, c10 in ipairs(b121) do
                local c11 = c3:FindFirstChild(c10)
                if c11 then
                    local c12 = not c1 and b8.Enabled and b9(c4[c10]) or nil
                    for c16, c17 in ipairs(c11:GetChildren()) do
                        if c17:IsA("Animation") then
                            if b122[c17] == nil then
                                b122[c17] = c17.AnimationId
                            end
                            local c18 = c12 and "rbxassetid://" .. c12 or b122[c17]
                            local c19 = b9(b122[c17])
                            if c19 then
                                b109[c19] = true
                            end
                            if c12 then
                                b109[c12] = true
                            end
                            if c17.AnimationId ~= c18 then
                                c17.AnimationId = c18
                                c5 = c5 + 1
                            end
                            local c20 = b9(c18)
                            if c19 then
                                b123[c19] = c10
                            end
                            if c20 then
                                b123[c20] = c10
                            end
                        end
                    end
                end
            end
            return c5
        end
        local b124 = setmetatable({}, {__mode = "k"})
        local function b125(c1, c2)
            if not b8.Enabled then
                return
            end
            local c3 = b8.Settings()
            local c6 = c3[c2 .. "Speed"] or 1
            local c5 = c3[c2 .. "End"] or 0
            local c4 = c3[c2 .. "Start"] or 0
            if c4 <= 0 and c5 <= 0 and c6 == 1 then
                return
            end
            b124[c1] = {start = c4, stop = c5, speed = c6}
        end
        a39(b1.Heartbeat:Connect(function()
            for c4 in pairs(b124) do
                if not c4.IsPlaying then
                    b124[c4] = nil
                else
                    if c5.speed ~= 1 and (c5.lastSet == nil or math.abs(c4.Speed - c5.lastSet) > 0.001) then
                        local c6 = c4.Speed * c5.speed
                        pcall(c4.AdjustSpeed, c4, c6)
                        c5.lastSet = c6
                    end
                    local c7 = c4.Length
                    if c7 > 0 then
                        local c8 = math.min(c5.start, c7 - 0.03)
                        if not c5.started then
                            c5.started = true
                            if c5.start > 0 then
                                pcall(function()
                                    c4.TimePosition = c8
                                end)
                            end
                        else
                            local c9 = c4.TimePosition
                            if c5.stop > 0 and c9 >= c5.stop then
                                if c4.Looped then
                                    pcall(function()
                                        c4.TimePosition = c8
                                    end)
                                else
                                    pcall(function()
                                        c4:Stop(0.1)
                                    end)
                                end
                            elseif c4.Looped and c5.start > 0 and c9 < c8 - 0.05 then
                                pcall(function()
                                    c4.TimePosition = c8
                                end)
                            end
                        end
                    end
                end
            end
        end))
        local function b126(c1)
            local c2 = c1.Animation
            if not c2 or c2.Name == b6 then
                return false
            end
            local c3 = b9(c2.AnimationId)
            if not c3 or b109[c3] then
                return false
            end
            local c4 = c1.Priority
            return c4 ~= Enum.AnimationPriority.Core and c4 ~= Enum.AnimationPriority.Idle
        end
        local b127 = {}
        local function b128(c1, c2, c3)
            local c4 = Instance.new("Animation")
            c4.Name = b6
            c4.AnimationId = "rbxassetid://" .. c2
            local c6 = pcall(c1.LoadAnimation, c1, c4)
            if not c5 or not c6 then
                c4:Destroy()
                return nil
            end
            pcall(function()
                c6.Priority = c3 and Enum.AnimationPriority[c3] or Enum.AnimationPriority.Action4
            end)
            c6.Stopped:Once(function()
                task.delay(0.5, function()
                    pcall(function()
                        c6:Destroy()
                        c4:Destroy()
                    end)
                end)
            end)
            task.delay(1, function()
                if c6.Length == 0 and not b127[c2] then
                    b127[c2] = true
                    a67("Moveset", "Animation " .. c2 .. " did not load. It is probably not usable in this game.", 5)
                end
            end)
            return c6
        end
        local b129 = nil
        local b130 = 0.12
        local function b131(c1)
            local c2 = b129
            b129 = nil
            if c2 then
                pcall(function()
                    c2.track:Stop(c1 or 0.1)
                end)
            end
        end
        local function b132(c1)
            local c2 = b129
            if not c2 or c2.track == c1 or os.clock() - c2.at < b130 then
                return
            end
            local c3 = c1.Priority
            if c3 == Enum.AnimationPriority.Core or c3 == Enum.AnimationPriority.Idle or c3 == Enum.AnimationPriority.Movement then
                return
            end
            b131(0.1)
        end
        local b133 = {readyAt = 0}
        local function b134(c1)
            local c2 = Vector3.new(c1.X, 0, c1.Z)
            if c2.Magnitude < 0.05 then
                return nil
            end
            return c2.Unit
        end
        local function b135(c1, c2, c3, c4)
            local c5 = c1 and b101(c1, c3) or b76(c3)
            if not c5 then
                return nil, nil
            end
            local c6 = b134(c5.Position - c2.Position)
            if c6 and c4 then
                c6 = -c6
            end
            return c6, (c5.Position - c2.Position)["Magnitude"]
        end
        local function b136(c1, c2, c3, c4, c5)
            local c6 = b134(c2.CFrame.LookVector) or Vector3.new(0, 0, -1)
            local c7 = b134(c2.CFrame.RightVector) or Vector3.new(1, 0, 0)
            if c1 == "Move keys" then
                return b134(c3.MoveDirection) or c6
            elseif c1 == "Forward" then
                return c6
            elseif c1 == "Back" then
                return -c6
            elseif c1 == "Left" then
                return -c7
            elseif c1 == "Right" then
                return c7
            elseif c1 == "Camera" then
                local c8 = workspace.CurrentCamera
                return c8 and b134(c8.CFrame.LookVector) or c6
            elseif c1 == "Cursor" then
                local c9 = b111()
                return c9 and b134(c9 - c2.Position) or c6
            elseif c1 == "To target" or c1 == "Away from target" then
                return b135(c4, c2, c5, c1 == "Away from target")
            end
            return c6
        end
        local function b137(c1, c2)
            if c2.Magnitude < 0.05 then
                return nil
            end
            local c3 = RaycastParams.new()
            c3.FilterType = Enum.RaycastFilterType.Exclude
            local c4 = {[1] = b4.Character}
            c3.FilterDescendantsInstances = c4
            pcall(function()
                c3.RespectCanCollide = true
            end)
            for c8 = 1, 6 do
                local c9, c10 = pcall(function()
                    return workspace:Spherecast(c1.Position, 1.2, c2, c3)
                end)
                if not c9 then
                    c10 = workspace:Raycast(c1.Position, c2, c3)
                end
                if not c10 then
                    return nil
                end
                local c11 = c10.Instance:FindFirstAncestorOfClass("Model")
                if c11 and c11:FindFirstChildOfClass("Humanoid") then
                    table.insert(c4, c11)
                    c3.FilterDescendantsInstances = c4
                elseif c10.Normal.Y < 0.5 then
                    local c12 = c10.Position + c10.Normal * (c1.Size.X / 2 + 0.6)
                    return Vector3.new(c12.X, c1.Position.Y, c12.Z)
                else
                    return nil
                end
            end
            return nil
        end
        local b138 = nil
        b133.Perform = function(c1, c2)
            local c4 = b73()
            local c3 = b72()
            if not c3 or not c4 then
                return false
            end
            local c5 = tonumber(c1.range) or 60
            local c6 = b136(c1.dir, c4, c3, c2, c5)
            if not c6 then
                return false
            end
            b81 = os.clock()
            local c7 = c1.smooth or "Off"
            if c1.turn and V.a269(c7, c1.smoothTime) <= 0 then
                c4.CFrame = CFrame.lookAt(c4.Position, c4.Position + c6)
            end
            local c8 = math.max(tonumber(c1.speed) or 0, 0)
            local c9 = tonumber(c1.up) or 0
            local c10 = math.max(tonumber(c1.time) or 0, 0)
            if c10 <= 0 then
                c4.AssemblyLinearVelocity = c6 * c8 + Vector3.new(0, c9, 0)
                return true, 0
            end
            if not c2 and b138 then
                b138(false)
            end
            local c11 = Instance.new("Attachment")
            c11.Name = "RYOIKI_Dash"
            c11.Parent = c4
            local c12 = Instance.new("LinearVelocity")
            c12.Name = "RYOIKI_Dash"
            c12.Attachment0 = c11
            c12.MaxForce = 1000000000.0
            c12.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
            c12.RelativeTo = Enum.ActuatorRelativeTo.World
            local c13 = c6 * c8 + Vector3.new(0, c9, 0)
            local c14 = V.a269(c7, c1.smoothTime) > 0 and c4.AssemblyLinearVelocity or c13
            c12.VectorVelocity = c14
            c12.Parent = c4
            if c2 then
                table.insert(c2.objects, c12)
                table.insert(c2.objects, c11)
            end
            local c15 = c1.dir == "To target" or c1.dir == "Away from target"
            local c16 = c15 and c1.dir == "To target" and (tonumber(c1.stopNear) or 0) or 0
            local c19 = nil
            local c18 = false
            local c17 = os.clock()
            local function c20(d1)
                if c18 then
                    return
                end
                c18 = true
                if c19 then
                    c19:Disconnect()
                end
                local d2 = c12.VectorVelocity
                c12:Destroy()
                c11:Destroy()
                if b138 and not c2 then
                    b138 = nil
                end
                local d3 = b73()
                if d3 then
                    if d1 then
                        d3.AssemblyLinearVelocity = Vector3.new(0, math.min(d3.AssemblyLinearVelocity.Y, 0), 0)
                    else
                        d3.AssemblyLinearVelocity = d2 * math.clamp(tonumber(c1.keep) or 0, 0, 1)
                    end
                end
            end
            if not c2 then
                b138 = c20
            end
            c19 = b1.Heartbeat:Connect(function(d1)
                local d2 = b73()
                if not d2 or not c12.Parent or c2 and not c2.alive then
                    c20(true)
                    return
                end
                local d3 = (os.clock() - c17) / c10
                if d3 >= 1 then
                    c20(false)
                    return
                end
                if c15 then
                    local d4, d5 = b135(c2, d2, c5, c1.dir == "Away from target")
                    if d4 then
                        c6 = d4
                    end
                    if c16 > 0 and d5 and d5 <= c16 then
                        c20(true)
                        return
                    end
                end
                local d6 = c1.ease and c8 * (1 - 0.65 * d3 * d3) or c8
                local d7 = c6 * d6 + Vector3.new(0, c9, 0)
                c14 = V.a271(c14, d7, d1, c7, c1.smoothTime)
                c12.VectorVelocity = c14
                if c1.turn then
                    local d8 = CFrame.lookAt(d2.Position, d2.Position + c6)
                    if V.a269(c7, c1.smoothTime) > 0 then
                        d2.CFrame = d2.CFrame:Lerp(d8, V.a270(d1, c7, c1.smoothTime))
                    else
                        d2.CFrame = d8
                    end
                end
                if c1.wall then
                    local d9 = math.clamp(d1 or 0.016666666666666666, 0.016666666666666666, 0.25)
                    local d10 = b137(d2, c6 * (d6 * d9 * 1.5 + 3))
                    if d10 then
                        d2.CFrame = d2.CFrame.Rotation + d10
                        c20(true)
                    end
                end
            end)
            return true, c10
        end
        b133.Stop = function()
            if b138 then
                b138(true)
            end
        end
        b133.TargetBasis = function(c1, c2, c3, c4)
            local c5 = b101(c1, tonumber(c2.range) or 60)
            if not c5 then
                return nil, nil
            end
            local c6 = b102(c5, c2.prediction) or c5.Position
            local c7 = Vector3.new(c6.X - c3.Position.X, 0, c6.Z - c3.Position.Z)
            if c7.Magnitude < 0.1 then
                return nil, 0
            end
            if c4 then
                c7 = -c7
            end
            return CFrame.lookAt(Vector3.zero, c7.Unit), c7.Magnitude
        end
        b133.EndMove = function(c1, c2)
            local c3 = b73()
            if not c3 then
                return
            end
            if c1.endMove == "Stop" then
                c3.AssemblyLinearVelocity = Vector3.new(0, math.min(c3.AssemblyLinearVelocity.Y, 0), 0)
            elseif c1.endMove == "Half speed" and c2 then
                c3.AssemblyLinearVelocity = c2 * 0.5
            end
        end
        b8.GhostPath = function(c1)
            local c2 = b73()
            if not c2 or type(c1) ~= "table" then
                return nil, "No character"
            end
            local c3 = c1.type
            local c4 = c2.CFrame
            local c5 = c4.Position
            local c6 = {start = c4, points = {}, tail = {}}
            local function c7(d1, d2)
                return tonumber(d1) or d2
            end
            local function c8(d1, d2, d3)
                local d4 = Vector3.new(d2.X, 0, d2.Z)
                if d4.Magnitude > 0.1 then
                    return CFrame.lookAt(d1, d1 + d4)
                end
                return d3.Rotation + d1
            end
            if c3 == "tp" then
                local c11 = c7(c1.z, 10)
                local c10 = c7(c1.y, 0)
                local c9 = c7(c1.x, 0)
                local c12 = c7(c1.range, 60)
                local c13 = nil
                if c1.mode == "World" then
                    c13 = c4 + Vector3.new(c9, c10, c11)
                elseif c1.mode == "Cursor" then
                    local c14 = b111()
                    if not c14 then
                        return nil, "No cursor point"
                    end
                    local c15 = c14 - c5
                    if c15.Magnitude > c12 then
                        c14 = c5 + c15.Unit * c12
                    end
                    local c16 = b72()
                    local c17 = c16 and c16.RigType == Enum.HumanoidRigType.R15 and c16.HipHeight or 2
                    local c18 = c14 + Vector3.new(0, c2.Size.Y / 2 + c17 + 0.1 + c10, 0)
                    c13 = c8(c18, c18 - c5, c4)
                    c6.target = c14
                elseif c1.mode == "Target" or c1.mode == "Behind target" then
                    local c19 = b101(nil, c12)
                    if not c19 then
                        return nil, "No target within " .. c12 .. " studs"
                    end
                    local c20 = b102(c19, c1.prediction) or c19.Position
                    local c21 = (c19.CFrame + (c20 - c19.Position)) * (c1.mode == "Behind target" and CFrame.new(c9, c10, c11) or CFrame.new(c9, c10, -c11))
                    local c22 = Vector3.new(c20.X, c21.Position.Y, c20.Z)
                    c13 = (c22 - c21.Position)["Magnitude"] > 0.1 and CFrame.lookAt(c21.Position, c22) or c21
                    c6.target = c20
                else
                    c13 = c4 * CFrame.new(c9, c10, -c11)
                end
                if c1.stopWall then
                    local c23 = b112(c5, c13.Position)
                    if c23 then
                        c13 = c13.Rotation + c23
                        c6.blocked = true
                    end
                end
                c6.points = {[1] = c5, [2] = c13.Position}
                c6.ghost = c13
                c6.info = string.format("TP: %.1f studs away%s", (c13.Position - c5)["Magnitude"], c6.blocked and "  \194\183  stopped by a wall" or "")
                if c1.smooth and c1.smooth ~= "Off" then
                    c6.info = c6.info .. "  \194\183  " .. (c1.smooth == "Custom" and "custom " .. string.format("%.2fs", tonumber(c1.smoothTime) or 0.3) or string.lower(c1.smooth)) .. " travel"
                end
                return c6
            end
            if c3 == "turn" then
                local c24 = c1.mode == "Custom"
                local c25 = c4.LookVector
                local c26 = Vector3.new(c25.X, 0, c25.Z)
                local c27 = (c24 or c26.Magnitude < 0.1) and c4.Rotation or CFrame.lookAt(Vector3.zero, c26.Unit)
                local c30 = c24 and c7(c1.roll, 0) or 0
                local c29 = c24 and c7(c1.pitch, 0) or 0
                local c28 = c7(c1.yaw, 0)
                local function c31(d1)
                    if c24 then
                        return c27 * CFrame.fromEulerAnglesYXZ(math.rad(c29) * d1, math.rad(-c28) * d1, math.rad(-c30) * d1)
                    end
                    return CFrame.Angles(0, math.rad(-c28) * d1, 0) * c27
                end
                local c32 = math.clamp(math.ceil(math.max(math.abs(c28), math.abs(c29), math.abs(c30)) / 10), 2, 72)
                for c36 = 0, c32 do
                    table.insert(c6.points, c5 + c31(c36 / c32).LookVector * 3.5)
                end
                c6.ghost = c31(1) + c5
                local c37 = math.abs(c28) / 360
                if c24 then
                    c6.info = string.format("TURN: yaw %g\194\176, tilt %g\194\176, roll %g\194\176 over %gs", c28, c29, c30, c7(c1.time, 0))
                else
                    c6.info = string.format("TURN: %g\194\176 %s (%.2g spin%s) over %gs", math.abs(c28), c28 < 0 and "left" or "right", c37, c37 == 1 and "" or "s", c7(c1.time, 0))
                end
                local c38 = c7(c1.hold, 0)
                if c38 > 0 then
                    c6.info = c6.info .. string.format(", stays %gs", c38)
                end
                return c6
            end
            if c3 == "face" then
                local c39 = tostring(c1.mode or "Target")
                local c40 = string.gsub(c39, " 360", "")
                local c42 = nil
                local c41 = nil
                if c40 == "Cursor" then
                    c42 = b111()
                    c41 = c42 and c42 - c5
                elseif c40 == "Camera" then
                    local c43 = workspace.CurrentCamera
                    c41 = c43 and c43.CFrame.LookVector
                else
                    local c44 = b101(nil, c7(c1.range, 60))
                    if not c44 then
                        return nil, "No target within " .. c7(c1.range, 60) .. " studs"
                    end
                    c42 = b102(c44, c1.prediction) or c44.Position
                    c41 = c42 - c5
                end
                if not c41 or c41.Magnitude < 0.05 then
                    return nil, "Nothing to face"
                end
                local c45 = c40 ~= c39
                if c45 then
                    local c46 = math.abs(c41.Unit.Y) > 0.99 and c4.LookVector or Vector3.new(0, 1, 0)
                    c6.ghost = CFrame.lookAt(c5, c5 + c41, c46)
                else
                    c6.ghost = c8(c5, c41, c4)
                end
                c6.points = {[1] = c5, [2] = c42 or c5 + c41.Unit * 12}
                c6.target = c42
                local c47, c48 = c4:ToEulerAnglesYXZ()
                local c49, c50 = c6.ghost:ToEulerAnglesYXZ()
                local c51 = math.deg(c50 - c48)
                c51 = (c51 + 180) % 360 - 180
                c6.info = string.format("FACE %s: turns %d\194\176 %s", c40, math.floor(math.abs(c51) + 0.5), c51 > 0 and "left" or "right")
                if c42 then
                    c6.info = c6.info .. string.format("  \194\183  %.0f studs away", (c42 - c5)["Magnitude"])
                end
                return c6
            end
            if c3 ~= "vel" and c3 ~= "curve" then
                return nil, "No preview for this block"
            end
            local c52 = c3 == "curve" or c1.motion == "Curve"
            local c53 = c1.mode == "Target" or c1.mode == "Away from target"
            local c54 = c1.mode == "Away from target"
            local c55 = c1.steer ~= nil and c1.steer ~= "Off" and c1.mode == "Facing"
            local c56 = c55 or c53
            local c59 = c7(c1.z, c52 and 35 or 60)
            local c58 = c7(c1.y, 0)
            local c57 = c7(c1.x, 0)
            local c60 = c53 and not c54 and c7(c1.stopNear, 0) or 0
            if c53 then
                local c61 = b101(nil, c7(c1.range, 60))
                if not c61 then
                    return nil, "No target within " .. c7(c1.range, 60) .. " studs"
                end
                c6.target = b102(c61, c1.prediction) or c61.Position
            end
            local c62 = {Position = c5}
            local c63 = c4
            if c53 then
                c63 = b133.TargetBasis(nil, c1, c62, c54) or c4
            elseif c55 then
                c63 = b120(c1.steer, c62) or c4
            end
            local function c64(d1)
                if not c56 then
                    return c63, nil
                end
                c62.Position = d1
                if c53 then
                    local d2, d3 = b133.TargetBasis(nil, c1, c62, c54)
                    return d2 or c63, d3
                end
                return b120(c1.steer, c62) or c63, nil
            end
            local c65 = nil
            if c52 then
                c65 = math.max(c7(c3 == "curve" and c1.time or c1.curveTime, 1.25), 0)
            else
                c65 = math.max(c7(c1.time, 0.25), 0)
            end
            local c66 = c3 == "curve" and c7(c1.y, 65) or c7(c1.yStart, 65)
            local c67 = c7(c1.yEnd, -65)
            local function c68(d1)
                if c1.shape == "Linear" then
                    return d1
                elseif c1.shape == "Ease In" then
                    return d1 * d1
                elseif c1.shape == "Ease Out" then
                    return 1 - (1 - d1) * (1 - d1)
                end
                return d1 * d1 * (3 - 2 * d1)
            end
            local function c69(d1, d2)
                local d3, d4 = c64(d2)
                if c60 > 0 and d4 and d4 <= c60 then
                    return nil
                end
                local d5 = c65 > 0 and math.clamp(d1 / c65, 0, 1) or 1
                if c52 then
                    local d6 = c1.mode == "World" and Vector3.new(c57, 0, c59) or d3:VectorToWorldSpace(Vector3.new(c57, 0, -c59))
                    return Vector3.new(d6.X, c66 + (c67 - c66) * c68(d5), d6.Z)
                end
                local d7 = c1.mode == "World" and Vector3.new(c57, c58, c59) or d3:VectorToWorldSpace(Vector3.new(c57, c58, -c59))
                if c65 > 0 and c1.ramp and c1.ramp ~= "Constant" then
                    local d8 = d5 * d5 * (3 - 2 * d5)
                    d7 = d7 * (c1.ramp == "Speed up" and 0.3 + 0.7 * d8 or 1 - 0.7 * d8)
                end
                return d7
            end
            local c70 = c5
            local c71 = {[1] = c5}
            local c72 = c1.smooth or "Off"
            local c73 = V.a269(c72, c1.smoothTime) > 0 and c2.AssemblyLinearVelocity or Vector3.zero
            local c75 = false
            local c74 = false
            local c76 = c5.Y
            local c77 = 0
            if c65 > 0 then
                local c78 = math.max(0.05, c65 / 80)
                while c77 < c65 - 0.0001 do
                    local c79 = math.min(c78, c65 - c77)
                    local c80 = c69(c77, c70)
                    if not c80 then
                        c75 = true
                        break
                    end
                    c73 = V.a271(c73, c80, c79, c72, c1.smoothTime)
                    local c81 = c70 + c73 * c79
                    local c82 = b112(c70, c81)
                    if c82 then
                        c70 = c82
                        table.insert(c71, c70)
                        c74 = true
                        break
                    end
                    c70 = c81
                    c76 = math.max(c76, c70.Y)
                    table.insert(c71, c70)
                    c77 = c77 + c79
                end
            else
                c73 = c69(0, c70) or Vector3.zero
            end
            local c83 = {[1] = c70}
            if not c74 and not c75 then
                local c84 = c73
                if c65 > 0 then
                    if c1.endMove == "Stop" then
                        c84 = Vector3.new(0, math.min(c84.Y, 0), 0)
                    elseif c1.endMove == "Half speed" then
                        c84 = c84 * 0.5
                    end
                end
                local c85 = Vector3.new(0, -workspace.Gravity, 0)
                local c86 = c70
                for c90 = 1, 30 do
                    local c91 = 0.05
                    c84 = c84 + c85 * c91
                    local c92 = c86 + c84 * c91
                    local c93 = b112(c86, c92)
                    if c93 then
                        c86 = c93
                        table.insert(c83, c86)
                        break
                    end
                    c86 = c92
                    c76 = math.max(c76, c86.Y)
                    table.insert(c83, c86)
                end
            end
            local c94 = c6
            local c95 = c6
            c95.tail = c83
            c94.points = c71
            local c96 = c4.Rotation + c70
            if c1.faceDir and c56 then
                if c55 and (c1.steer == "Camera 360" or c1.steer == "Character Aim") and c73.Magnitude > 0.1 then
                    local c97 = math.abs(c73.Unit.Y) > 0.99 and c4.LookVector or Vector3.new(0, 1, 0)
                    c96 = CFrame.lookAt(c70, c70 + c73.Unit, c97)
                else
                    c96 = c8(c70, c73, c4)
                end
            end
            c6.ghost = c96
            c6.blocked = c74
            local c98 = c52 and "CURVE" or "VEL"
            if c65 > 0 then
                c6.info = string.format("%s: %.1f studs in %.2fs", c98, (c70 - c5)["Magnitude"], c77)
            else
                c6.info = string.format("%s: one push of %.0f studs/s", c98, c73.Magnitude)
            end
            if c76 - c5.Y > 1 then
                c6.info = c6.info .. string.format("  \194\183  peak +%.0f", c76 - c5.Y)
            end
            if c74 then
                c6.info = c6.info .. "  \194\183  hits a wall"
            elseif c75 then
                c6.info = c6.info .. "  \194\183  reaches target"
            end
            return c6
        end
        local b139 = {}
        local b140 = {}
        local b141 = {}
        local function b142()
            local c2 = b73()
            local c1 = b72()
            if not c1 or not c2 then
                return nil
            end
            local c3 = c2.AssemblyLinearVelocity
            local c4 = os.clock()
            return {
                t = c4,
                speed = Vector3.new(c3.X, 0, c3.Z).Magnitude,
                move = c1.MoveDirection.Magnitude,
                air = c1.FloorMaterial == Enum.Material.Air,
                block = b86(),
                dash = c4 - b81 < 0.4
            }
        end
        local b145 = 0
        local b144 = 0
        local b143 = 48
        a39(b1.Heartbeat:Connect(function()
            local c1 = os.clock()
            if c1 - b145 < 0.03 or not b8.Enabled then
                return
            end
            b145 = c1
            local c2 = b142()
            if c2 then
                b144 = b144 % b143 + 1
                b141[b144] = c2
            end
        end))
        local function b146(c1)
            local c2 = nil
            for c6 = 0, b143 - 1 do
                local c7 = b141[(b144 - 1 - c6) % b143 + 1]
                if not c7 then
                    break
                end
                c2 = c7
                if c7.t <= c1 then
                    return c7
                end
            end
            return c2 or b142()
        end
        local function b147(c1, c2)
            if c1 and c1.opts and c1.opts.debug and b8.OnTrace then
                pcall(b8.OnTrace, c1, c2)
            end
        end
        local function b148(c1)
            if not c1 then
                return "no character"
            end
            return (c1.air and "in air" or "on ground") .. ", speed " .. math.floor(c1.speed + 0.5) .. (c1.block and ", blocking" or "") .. (c1.dash and ", dashing" or "")
        end
        local function b149(c1, c2)
            if c2 ~= "Right now" and c1 and c1.fireSnap then
                return c1.fireSnap
            end
            return b142()
        end
        local b150 = {}
        local b151 = {}
        local b152 = {}
        local b153 = 0
        local b154 = {}
        b8.CooldownLeft = function(c1)
            return math.max(0, (b139[c1] or 0) - os.clock())
        end
        b8.IsRunning = function(c1)
            return b150[c1] ~= nil
        end
        local function b155(c1, c2, c3)
            local c4 = os.clock() + math.max(c3, 0)
            repeat
                b1.Heartbeat:Wait()
            until os.clock() >= c4 or not c1.alive or not a37 or b4.Character ~= c2
            return c1.alive and a37 and b4.Character == c2
        end
        local function b156(c1, c2, c3)
            local c4 = b72()
            local c5 = c1.check
            if c5 == "Hit someone" then
                local c6 = c3.move.opts
                local c7 = b98(c3.startT, c1.value > 0 and c1.value or c6.hitRange, c6.hitMethod)
                if c7 then
                    c3.hitTarget = c7.model
                    return true
                end
                return false
            elseif c5 == "Hit someone (Tier 1)" or c5 == "Hit someone (Tier 2)" then
                local c8 = b99(c3.startT, c1.value > 0 and c1.value or c3.move.opts.hitRange, c5 == "Hit someone (Tier 2)" and 2 or 1)
                if c8 then
                    c3.hitTarget = c8
                    return true
                end
                return false
            elseif c5 == "Got hit (Tier 1)" then
                return b78 >= c3.startT and b79 < c3.startT and os.clock() - b78 >= b80
            elseif c5 == "Got hit (Tier 2)" then
                return b79 >= c3.startT
            elseif c5 == "Got hit" then
                return b78 >= c3.startT
            elseif c5 == "Game anim played" then
                local c9 = b9(c1.anim)
                return c9 ~= nil and c3.seen[c9] == true
            elseif c5 == "Target in range" then
                return b76(c1.value > 0 and c1.value or 15) ~= nil
            elseif c5 == "On ground" then
                local c10 = b149(c3, c1.from)
                return c10 ~= nil and not c10.air
            elseif c5 == "In air" then
                local c11 = b149(c3, c1.from)
                return c11 ~= nil and c11.air
            elseif c5 == "HP above %" then
                return c4 ~= nil and c4.Health / math.max(c4.MaxHealth, 1) * 100 > c1.value
            elseif c5 == "HP below %" then
                return c4 ~= nil and c4.Health / math.max(c4.MaxHealth, 1) * 100 < c1.value
            elseif c5 == "Not stunned" then
                return not b100(c2)
            elseif c5 == "Tag at least" then
                return (b154[c1.tag] or 0) >= c1.value
            elseif c5 == "Item in hand" then
                return a147.InHand(c1.item)
            elseif c5 == "Has item" then
                local c12 = tostring(c1.item or "")
                if a147.InHand(c12) then
                    return true
                end
                if c12 == "" then
                    local c13 = Players.LocalPlayer:FindFirstChildOfClass("Backpack")
                    return c13 ~= nil and c13:FindFirstChildOfClass("Tool") ~= nil
                end
                return a147.Holding(c12)
            elseif c5 == "Moving" then
                local c14 = b149(c3, c1.from)
                return c14 ~= nil and c14.move > 0.1
            elseif c5 == "Blocking" then
                local c15 = b149(c3, c1.from)
                return c15 ~= nil and c15.block
            elseif c5 == "Idle" then
                local c16 = b149(c3, c1.from)
                return c16 ~= nil and c16.move < 0.1 and not c16.air
            elseif c5 == "Walking" or c5 == "Running" or c5 == "Dashing" then
                local c17 = b149(c3, c1.from)
                if not c17 then
                    return false
                end
                local c18 = c17.speed
                if c5 == "Dashing" then
                    return c18 >= (c1.value > 0 and c1.value or 35) or c17.dash
                end
                if c17.move < 0.1 or c18 < 1 then
                    return false
                end
                local c19 = c1.value > 0 and c1.value or 20
                if c5 == "Running" then
                    return c18 >= c19
                end
                return c18 < c19
            end
            return false
        end
        b8.Branch = function(c1, c2, c3)
            local c5 = nil
            local c4 = 0
            for c9 = c2 + 1, #c1 do
                local c10 = c1[c9].type
                if c10 == "if" and (c1[c9].onFail == b13 or c1[c9].onFail == b14) then
                    c4 = c4 + 1
                elseif c10 == "end" then
                    if c4 == 0 then
                        return c5, c9
                    end
                    c4 = c4 - 1
                elseif c10 == "else" and c4 == 0 and not c3 and not c5 then
                    c5 = c9
                end
            end
            return c5, #c1 + 1
        end
        local b157 = nil
        local function b158(c1, c2)
            c2 = string.lower(a7(tostring(c2 or "")))
            if c2 == "" or c2 == "-" then
                return nil
            end
            if c2 == "main" then
                return c1.steps
            end
            for c6, c7 in ipairs(c1.branches or {}) do
                if string.lower(c7.name) == c2 then
                    return c7.steps
                end
            end
            return nil
        end
        local b159 = {idle = "idIdle", walk = "idWalk", run = "idRun", dash = "idDash", air = "idAir", block = "idBlock"}
        local function b160(c1, c2)
            local c3 = b149(c1, c2)
            if not c3 then
                return "idle"
            end
            if c3.block then
                return "block"
            end
            if c3.dash or c3.speed >= 35 then
                return "dash"
            end
            if c3.air then
                return "air"
            end
            if c3.move < 0.1 or c3.speed < 1 then
                return "idle"
            end
            return c3.speed >= 20 and "run" or "walk"
        end
        local function b161(c1, c2)
            local c3 = b9(c1[b159[b160(c2)]])
            return c3 or b9(c1.id)
        end
        local function b162(c1, c2, c3, c4, c5)
            local c6 = c4.type
            if c6 == "anim" then
                local c7 = b161(c4, c1)
                if not c7 then
                    return c5 + 1
                end
                if c4.stopPrev then
                    local c10, c9, c8 = ipairs(c1.tracks)
                    while true do
                        local c12 = c10(c9, c8)
                        if c11 == nil then
                            break
                        end
                        c8 = c11
                        pcall(function()
                            c12:Stop(math.max(c4.fade, 0))
                        end)
                    end
                end
                local c13 = b128(c3, c7, c4.layer)
                if c13 then
                    b131(math.max(c4.fade, 0.05))
                    local c16, c15, c14 = ipairs(c1.tracks)
                    while true do
                        local c18 = c16(c15, c14)
                        if c17 == nil then
                            break
                        end
                        c14 = c17
                        if c18.IsPlaying and c18.Priority == c13.Priority then
                            pcall(function()
                                c18:Stop(math.max(c4.fade, 0.05))
                            end)
                        end
                    end
                    c13.Looped = c4.looped
                    c13:Play(math.max(c4.fade, 0), math.clamp(c4.weight, 0.01, 1), c4.speed)
                    table.insert(c1.tracks, c13)
                    local c19 = math.max(c4.fadeOut, 0)
                    c1.fades[c13] = c19
                    if c4.start > 0 or c4.looped then
                        local c20 = os.clock()
                        while c13.Length == 0 and os.clock() - c20 < 1 do
                            b1.Heartbeat:Wait()
                        end
                        if c4.start > 0 and c13.Length > 0 then
                            pcall(function()
                                c13.TimePosition = math.min(c4.start, c13.Length - 0.03)
                            end)
                        end
                    end
                    if c4.looped then
                        local c21 = math.max(math.abs(c4.speed), 0.01)
                        local c22 = c4.time > 0 and c4.start + c4.time * c21 or nil
                        if c4.loopFor > 0 then
                            c1.keep[c13] = true
                            task.delay(c4.loopFor, function()
                                pcall(function()
                                    c13:Stop(c19)
                                end)
                            end)
                        end
                        if c4.start > 0 or c22 then
                            task.spawn(function()
                                local d1 = c13.TimePosition
                                while c13.IsPlaying and a37 do
                                    local d2 = c13.Length
                                    if d2 > 0 then
                                        local d3 = c13.TimePosition
                                        local d4 = c22 and math.min(c22, d2) or d2
                                        if d3 >= d4 - 0.02 or d3 < d1 - 0.05 then
                                            pcall(function()
                                                c13.TimePosition = math.min(c4.start, d2 - 0.03)
                                            end)
                                            d3 = c13.TimePosition
                                        end
                                        d1 = d3
                                    end
                                    b1.Heartbeat:Wait()
                                end
                            end)
                        end
                    elseif c4.time > 0 then
                        task.delay(c4.time, function()
                            pcall(function()
                                c13:Stop(c19)
                            end)
                        end)
                    elseif c19 > 0 and c4.speed > 0 then
                        task.spawn(function()
                            local d1 = os.clock()
                            while c13.IsPlaying and a37 and os.clock() - d1 < 30 do
                                local d2 = c13.Length
                                if d2 > 0 and c13.TimePosition >= d2 - c19 * math.abs(c13.Speed) - 0.02 then
                                    pcall(function()
                                        c13:Stop(c19)
                                    end)
                                    break
                                end
                                b1.Heartbeat:Wait()
                            end
                        end)
                    end
                    if c4.waitEnd then
                        if c4.looped then
                            if c4.loopFor > 0 then
                                b155(c1, c2, c4.loopFor)
                            end
                        elseif c4.time > 0 then
                            b155(c1, c2, c4.time)
                        else
                            local c23 = os.clock()
                            while c13.IsPlaying and c1.alive and a37 and b4.Character == c2 and os.clock() - c23 < 15 do
                                b1.Heartbeat:Wait()
                            end
                        end
                    end
                end
            elseif c6 == "wait" then
                b155(c1, c2, c4.time)
            elseif c6 == "tp" then
                local c24 = b73()
                if c24 then
                    local c25 = c24.CFrame
                    local c26 = c25.Position
                    local c27 = CFrame.new(c4.x, c4.y, -c4.z)
                    local c28 = nil
                    if c4.mode == "World" then
                        c28 = c25 + Vector3.new(c4.x, c4.y, c4.z)
                    elseif c4.mode == "Cursor" then
                        local c29 = b111()
                        if c29 then
                            local c30 = c29 - c26
                            if c30.Magnitude > c4.range then
                                c29 = c26 + c30.Unit * c4.range
                            end
                            local c31 = b72()
                            local c32 = c31 and c31.RigType == Enum.HumanoidRigType.R15 and c31.HipHeight or 2
                            local c33 = c29 + Vector3.new(0, c24.Size.Y / 2 + c32 + 0.1 + c4.y, 0)
                            local c34 = Vector3.new(c33.X - c26.X, 0, c33.Z - c26.Z)
                            if c34.Magnitude > 0.1 then
                                c28 = CFrame.lookAt(c33, c33 + c34)
                            else
                                c28 = c25.Rotation + c33
                            end
                        end
                    elseif c4.mode == "Target" or c4.mode == "Behind target" then
                        local c35 = b101(c1, c4.range)
                        if c35 then
                            local c36 = (b102(c35, c4.prediction) or c35.Position) - c35.Position
                            local c37 = c35.CFrame + c36
                            local c38 = c37 * (c4.mode == "Behind target" and CFrame.new(c4.x, c4.y, c4.z) or c27)
                            local c39 = Vector3.new(c35.Position.X + c36.X, c38.Position.Y, c35.Position.Z + c36.Z)
                            if (c39 - c38.Position)["Magnitude"] > 0.1 then
                                c28 = CFrame.lookAt(c38.Position, c39)
                            else
                                c28 = c38
                            end
                        end
                    else
                        c28 = c25 * c27
                    end
                    if c28 and c4.stopWall then
                        local c40 = b112(c26, c28.Position)
                        if c40 then
                            c28 = c28.Rotation + c40
                        end
                    end
                    if c28 then
                        local c41 = V.a269(c4.smooth, c4.smoothTime)
                        if c41 > 0 then
                            local c42 = os.clock()
                            while c1.alive and b4.Character == c2 and c24.Parent do
                                local c43 = os.clock() - c42
                                local c44 = math.clamp(c43 / c41, 0, 1)
                                c24.CFrame = c25:Lerp(c28, V.a272(c44, c4.smooth))
                                c24.AssemblyLinearVelocity = Vector3.zero
                                if c44 >= 1 then
                                    break
                                end
                                b1.Heartbeat:Wait()
                            end
                            if c1.alive and b4.Character == c2 and c24.Parent then
                                c24.CFrame = c28
                            end
                        else
                            c24.CFrame = c28
                        end
                        c24.AssemblyLinearVelocity = Vector3.zero
                    end
                end
            elseif c6 == "dash" then
                local c45, c46 = b133.Perform(c4, c1)
                if c45 and c4.waitEnd and c46 and c46 > 0 then
                    b155(c1, c2, c46)
                end
            elseif c6 == "curve" or c6 == "vel" and c4.motion == "Curve" then
                local c47 = b73()
                if c47 then
                    local c48 = math.max(tonumber(c6 == "curve" and c4.time or c4.curveTime) or 1.25, 0)
                    local c49 = c4.steer ~= "Off" and c4.mode == "Facing"
                    local c50 = c4.mode == "Target" or c4.mode == "Away from target"
                    local c51 = c4.mode == "Away from target"
                    local c52 = c50 and not c51 and (tonumber(c4.stopNear) or 0) or 0
                    local c53 = false
                    local c54 = c4.steer == "Camera 360" or c4.steer == "Character Aim"
                    local c55 = c49 and (b120(c4.steer, c47) or c47.CFrame) or c47.CFrame
                    local function c56(d1)
                        if c4.mode == "World" then
                            return Vector3.new(c4.x, 0, c4.z)
                        end
                        if c53 then
                            return Vector3.zero
                        end
                        local d2 = c55
                        if c50 then
                            local d3, d4 = b133.TargetBasis(c1, c4, d1, c51)
                            if c52 > 0 and d4 and d4 <= c52 then
                                c53 = true
                                return Vector3.zero
                            end
                            d2 = d3 or c55
                        elseif c49 then
                            d2 = b120(c4.steer, d1) or c55
                        end
                        local d5 = d2:VectorToWorldSpace(Vector3.new(c4.x, 0, -c4.z))
                        return Vector3.new(d5.X, 0, d5.Z)
                    end
                    local c57 = c6 == "curve" and tonumber(c4.y) or tonumber(c4.yStart) or 65
                    local c58 = tonumber(c4.yEnd) or -65
                    local function c59(d1)
                        if c4.shape == "Linear" then
                            return d1
                        elseif c4.shape == "Ease In" then
                            return d1 * d1
                        elseif c4.shape == "Ease Out" then
                            return 1 - (1 - d1) * (1 - d1)
                        end
                        return d1 * d1 * (3 - 2 * d1)
                    end
                    local function c60(d1, d2, d3)
                        if not c4.faceDir or not (c49 or c50) or d2.Magnitude < 0.1 then
                            return
                        end
                        local d4 = nil
                        if c54 and c49 then
                            local d5 = math.abs(d2.Unit.Y) > 0.99 and d1.CFrame.LookVector or Vector3.new(0, 1, 0)
                            d4 = CFrame.new(d1.Position) * CFrame.lookAt(Vector3.zero, d2.Unit, d5)
                        else
                            local d6 = Vector3.new(d2.X, 0, d2.Z)
                            if d6.Magnitude > 0.1 then
                                d4 = CFrame.lookAt(d1.Position, d1.Position + d6)
                            end
                        end
                        if d4 then
                            if d3 and V.a269(c4.smooth, c4.smoothTime) > 0 then
                                d1.CFrame = d1.CFrame:Lerp(d4, V.a270(d3, c4.smooth, c4.smoothTime))
                            else
                                d1.CFrame = d4
                            end
                        end
                    end
                    if c48 <= 0 then
                        local c61 = c56(c47)
                        c47.AssemblyLinearVelocity = Vector3.new(c61.X, c58, c61.Z)
                    else
                        local c62 = Instance.new("Attachment")
                        c62.Name = "RYOIKI_Curve"
                        c62.Parent = c47
                        local c63 = Instance.new("LinearVelocity")
                        c63.Name = "RYOIKI_Curve"
                        c63.Attachment0 = c62
                        c63.MaxForce = 1000000000.0
                        c63.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
                        c63.RelativeTo = Enum.ActuatorRelativeTo.World
                        local c64 = c56(c47)
                        local c65 = c4.smooth or "Off"
                        local c66 = V.a269(c65, c4.smoothTime) > 0 and c47.AssemblyLinearVelocity or Vector3.new(c64.X, c57, c64.Z)
                        c63.VectorVelocity = c66
                        c63.Parent = c47
                        table.insert(c1.objects, c63)
                        table.insert(c1.objects, c62)
                        local c68 = c47.Position
                        local c67 = os.clock()
                        local c69 = false
                        local c70 = nil
                        local function c71()
                            if c70 then
                                c70:Disconnect()
                                c70 = nil
                            end
                            if c63.Parent then
                                c63:Destroy()
                            end
                            if c62.Parent then
                                c62:Destroy()
                            end
                        end
                        local function c72(d1, d2)
                            if d2 then
                                d1.CFrame = d1.CFrame.Rotation + d2
                            end
                            d1.AssemblyLinearVelocity = Vector3.zero
                            c71()
                        end
                        c70 = b1.Heartbeat:Connect(function(d1)
                            if not c63.Parent or not c1.alive then
                                c71()
                                return
                            end
                            local d2 = b73()
                            if not d2 then
                                c71()
                                return
                            end
                            local d3 = math.clamp((os.clock() - c67) / c48, 0, 1)
                            local d4 = c59(d3)
                            local d5 = c56(d2)
                            local d6 = c57 + (c58 - c57) * d4
                            local d7 = Vector3.new(d5.X, d6, d5.Z)
                            c66 = V.a271(c66, d7, d1, c65, c4.smoothTime)
                            local d8 = c66
                            c63.VectorVelocity = d8
                            c60(d2, d8, d1)
                            if c4.stopWall then
                                local d9 = math.clamp(d1 or 0.016666666666666666, 0.016666666666666666, 0.25)
                                local d10 = d8.Magnitude > 0.1 and d8 * d9 * 1.5 + d8.Unit * 4 or Vector3.zero
                                local d11 = (d2.Position - c68)["Magnitude"] < 0.05 and d2.Position or c68
                                local d12 = d10.Magnitude > 0.1 and b112(d11, d2.Position + d10) or nil
                                if d12 then
                                    c72(d2, d12)
                                    return
                                end
                                local d13 = b72()
                                if d13 and d13.FloorMaterial == Enum.Material.Air then
                                    c69 = true
                                elseif d13 and c69 and d6 < -0.5 then
                                    c72(d2, nil)
                                    return
                                end
                                c68 = d2.Position
                            end
                        end)
                        task.delay(c48, function()
                            if c63.Parent and c1.alive then
                                local d1 = c63.VectorVelocity
                                c71()
                                b133.EndMove(c4, d1)
                            else
                                c71()
                            end
                        end)
                    end
                end
            elseif c6 == "vel" then
                local c73 = b73()
                if c73 then
                    local c74 = c4.steer ~= "Off" and c4.mode == "Facing"
                    local c75 = c4.mode == "Target" or c4.mode == "Away from target"
                    local c76 = c4.mode == "Away from target"
                    local c77 = c74 or c75
                    local c78 = c74 and (c4.steer == "Camera 360" or c4.steer == "Character Aim")
                    local function c79(d1)
                        if c75 then
                            return b133.TargetBasis(c1, c4, d1, c76)
                        elseif c74 then
                            return b120(c4.steer, d1)
                        end
                        return nil
                    end
                    local c80 = c79(c73)
                    local c81 = c4.mode == "World" and Vector3.new(c4.x, c4.y, c4.z) or (c80 or c73.CFrame):VectorToWorldSpace(Vector3.new(c4.x, c4.y, -c4.z))
                    local c82 = nil
                    local function c83(d1, d2, d3)
                        if not c4.faceDir or d2.Magnitude < 0.1 then
                            return
                        end
                        if c78 then
                            local d4 = math.abs(d2.Unit.Y) > 0.99 and d1.CFrame.LookVector or Vector3.new(0, 1, 0)
                            local d5 = CFrame.lookAt(Vector3.zero, d2.Unit, d4)
                            if d3 and V.a269(c4.smooth, c4.smoothTime) > 0 then
                                local d6 = c82 or d1.CFrame.Rotation
                                c82 = d6:Lerp(d5, V.a270(d3, c4.smooth, c4.smoothTime))
                            else
                                c82 = d5
                            end
                            d1.CFrame = CFrame.new(d1.Position) * c82
                        else
                            local d7 = Vector3.new(d2.X, 0, d2.Z)
                            if d7.Magnitude > 0.1 then
                                local d8 = CFrame.lookAt(d1.Position, d1.Position + d7)
                                if d3 and V.a269(c4.smooth, c4.smoothTime) > 0 then
                                    d1.CFrame = d1.CFrame:Lerp(d8, V.a270(d3, c4.smooth, c4.smoothTime))
                                else
                                    d1.CFrame = d8
                                end
                            end
                        end
                    end
                    if c77 and V.a269(c4.smooth, c4.smoothTime) <= 0 then
                        c83(c73, c81)
                    end
                    if c4.time <= 0 then
                        c73.AssemblyLinearVelocity = c81
                    else
                        local c84 = Instance.new("Attachment")
                        c84.Name = "RYOIKI_Vel"
                        c84.Parent = c73
                        local c85 = Instance.new("LinearVelocity")
                        c85.Name = "RYOIKI_Vel"
                        c85.Attachment0 = c84
                        c85.MaxForce = 1000000000.0
                        c85.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
                        c85.RelativeTo = Enum.ActuatorRelativeTo.World
                        local c86 = c4.smooth or "Off"
                        local c87 = V.a269(c86, c4.smoothTime) > 0 and c73.AssemblyLinearVelocity or c81
                        c85.VectorVelocity = c87
                        c85.Parent = c73
                        table.insert(c1.objects, c85)
                        table.insert(c1.objects, c84)
                        if c4.stopWall then
                            local c88 = c73.Position
                            local c90 = false
                            local c89 = false
                            local c91 = {}
                            local function c92(d1, d2)
                                c89 = true
                                for d6, d7 in ipairs(c91) do
                                    d7:Disconnect()
                                end
                                c85.VectorVelocity = Vector3.zero
                                c85.Enabled = false
                                if d2 then
                                    d1.CFrame = d1.CFrame.Rotation + d2
                                end
                                d1.AssemblyLinearVelocity = Vector3.zero
                            end
                            local function c93(d1)
                                if c89 then
                                    return
                                end
                                local d2 = b73()
                                if not c85.Parent or not c1.alive or not d2 then
                                    for d6, d7 in ipairs(c91) do
                                        d7:Disconnect()
                                    end
                                    return
                                end
                                local d8 = c85.VectorVelocity
                                local d9 = d2.Position
                                if d8.Magnitude < 0.1 then
                                    c88 = d9
                                    return
                                end
                                local d10 = math.clamp(d1 or 0.016666666666666666, 0.016666666666666666, 0.25)
                                local d11 = d8 * d10 * 1.5 + d8.Unit * 4
                                local d12 = c88
                                if (d9 - c88)["Magnitude"] < 0.05 then
                                    d12 = d9
                                end
                                local d13 = b112(d12, d9 + d11)
                                if d13 then
                                    c92(d2, d13)
                                    return
                                end
                                local d14 = b72()
                                if d14 and d14.FloorMaterial == Enum.Material.Air then
                                    c90 = true
                                elseif d14 and c90 and d8.Y < -0.5 * d8.Magnitude then
                                    c92(d2, nil)
                                    return
                                end
                                c88 = d9
                            end
                            table.insert(c91, b1.Stepped:Connect(function(d1, d2)
                                c93(d2)
                            end))
                            table.insert(c91, b1.Heartbeat:Connect(c93))
                            c93(0.016666666666666666)
                        end
                        local c95 = nil
                        local c94 = b72()
                        local c97 = nil
                        local c96 = nil
                        if c74 and c78 and c94 then
                            c95 = true
                            b117(c94, true)
                            c1.tilt = (c1.tilt or 0) + 1
                            c82 = c82 or c73.CFrame.Rotation
                            c96 = Instance.new("AlignOrientation")
                            c96.Name = "RYOIKI_Vel"
                            c96.Mode = Enum.OrientationAlignmentMode.OneAttachment
                            c96.Attachment0 = c84
                            c96.RigidityEnabled = true
                            c96.CFrame = c82
                            c96.Parent = c73
                            table.insert(c1.objects, c96)
                            pcall(c94.ChangeState, c94, Enum.HumanoidStateType.Physics)
                            c97 = "RYOIKI_Tilt" .. tostring(math.random(1, 1000000000.0))
                            pcall(function()
                                b1:BindToRenderStep(c97, Enum.RenderPriority.Last.Value + 10, function()
                                    local e1 = b73()
                                    if e1 and c82 and c85.Parent then
                                        e1.CFrame = CFrame.new(e1.Position) * c82
                                    end
                                end)
                            end)
                        end
                        local c98 = c75 and not c76 and (tonumber(c4.stopNear) or 0) or 0
                        if c77 or c4.ramp ~= "Constant" or c98 > 0 or V.a269(c86, c4.smoothTime) > 0 then
                            local c100 = c81
                            local c99 = os.clock()
                            local c101 = nil
                            c101 = b1.Heartbeat:Connect(function(d1)
                                if not c85.Parent or not c1.alive then
                                    c101:Disconnect()
                                    return
                                end
                                if c96 then
                                    if b116 > 0 and c94:GetState() ~= Enum.HumanoidStateType.Physics then
                                        pcall(c94.ChangeState, c94, Enum.HumanoidStateType.Physics)
                                    end
                                    if c82 then
                                        c96.CFrame = c82
                                    end
                                end
                                local d2 = b73()
                                if not d2 or not c85.Enabled then
                                    return
                                end
                                local d3 = c77 and c79(d2)
                                if d3 then
                                    c100 = d3:VectorToWorldSpace(Vector3.new(c4.x, c4.y, -c4.z))
                                end
                                local d4 = math.clamp((os.clock() - c99) / math.max(c4.time, 0.01), 0, 1)
                                d4 = d4 * d4 * (3 - 2 * d4)
                                local d5 = 1
                                if c4.ramp == "Speed up" then
                                    d5 = 0.3 + 0.7 * d4
                                elseif c4.ramp == "Slow down" then
                                    d5 = 1 - 0.7 * d4
                                end
                                local d6 = c100 * d5
                                c87 = V.a271(c87, d6, d1, c86, c4.smoothTime)
                                local d7 = c87
                                c85.VectorVelocity = d7
                                if d3 then
                                    c83(d2, d7, d1)
                                end
                                if c98 > 0 then
                                    local d8, d9 = b133.TargetBasis(c1, c4, d2, false)
                                    if d9 and d9 <= c98 then
                                        c85.VectorVelocity = Vector3.zero
                                        c85.Enabled = false
                                        d2.AssemblyLinearVelocity = Vector3.new(0, math.min(d2.AssemblyLinearVelocity.Y, 0), 0)
                                    end
                                end
                            end)
                        end
                        task.delay(c4.time, function()
                            local d1 = c85.Parent and c85.Enabled and c85.VectorVelocity or nil
                            if c97 then
                                pcall(function()
                                    b1:UnbindFromRenderStep(c97)
                                end)
                            end
                            if c96 then
                                c96:Destroy()
                            end
                            local d2 = c85.Parent ~= nil and c1.alive
                            c85:Destroy()
                            c84:Destroy()
                            if d2 then
                                b133.EndMove(c4, d1)
                            end
                            if c95 ~= nil then
                                c1.tilt = math.max(0, (c1.tilt or 1) - 1)
                                local d3 = b73()
                                if d3 and c78 then
                                    local d4 = Vector3.new(d3.CFrame.LookVector.X, 0, d3.CFrame.LookVector.Z)
                                    if d4.Magnitude < 0.1 then
                                        d4 = Vector3.new(d3.CFrame.UpVector.X, 0, d3.CFrame.UpVector.Z)
                                    end
                                    if d4.Magnitude > 0.1 then
                                        d3.CFrame = CFrame.lookAt(d3.Position, d3.Position + d4)
                                    end
                                end
                                b118(c94, true)
                            end
                        end)
                    end
                end
            elseif c6 == "stun" then
                b108(c4)
            elseif c6 == "key" then
                if c4.mode == "Use move" then
                    local c102 = string.lower(c4.move)
                    for c106, c107 in ipairs(b8.Current().moves) do
                        if c107 ~= c1.move and string.lower(c107.name) == c102 then
                            task.spawn(b8.Test, c107)
                            break
                        end
                    end
                else
                    local c108 = c4.mode == "Game move"
                    local c109 = string.upper(c108 and c4.slot or c4.key)
                    local c111 = pcall(function()
                        return game:GetService("VirtualInputManager")
                    end)
                    if c110 and c111 then
                        local c112 = c109 == "M1" and 0 or c109 == "M2" and 1 or nil
                        local c113 = nil
                        if not c112 then
                            local c114 = {
                                ["0"] = "Zero",
                                ["1"] = "One",
                                ["2"] = "Two",
                                ["3"] = "Three",
                                ["4"] = "Four",
                                ["5"] = "Five",
                                ["6"] = "Six",
                                ["7"] = "Seven",
                                ["8"] = "Eight",
                                ["9"] = "Nine"
                            }
                            local c115, c116 = pcall(function()
                                return Enum.KeyCode[c114[c109] or #c109 == 1 and c109 or string.sub(c109, 1, 1) .. string.lower(string.sub(c109, 2))]
                            end)
                            c113 = c115 and c116 or nil
                        end
                        if c108 and c113 then
                            b8.PassUntil = b8.PassUntil or {}
                            b8.PassUntil[c113.Name] = os.clock() + math.max(c4.time, 0.02) + 0.15
                        end
                        local function c117(d1)
                            pcall(function()
                                if c112 then
                                    local e1 = UserInputService:GetMouseLocation()
                                    c111:SendMouseButtonEvent(e1.X, e1.Y, c112, d1, game, 0)
                                elseif c113 then
                                    c111:SendKeyEvent(d1, c113, false, game)
                                end
                            end)
                        end
                        task.spawn(function()
                            local d1, d2 = pcall(function()
                                if c112 then
                                    return UserInputService:IsMouseButtonPressed(c112 == 0 and Enum.UserInputType.MouseButton1 or Enum.UserInputType.MouseButton2)
                                end
                                return c113 ~= nil and UserInputService:IsKeyDown(c113)
                            end)
                            if d1 and d2 then
                                c117(false)
                            end
                            task.wait()
                            c117(true)
                            task.delay(math.max(c4.time, 0.02), c117, false)
                        end)
                    end
                end
            elseif c6 == "turn" then
                local c118 = b73()
                if c118 then
                    local c119 = c4.mode == "Custom"
                    local c120 = c118.CFrame.LookVector
                    local c121 = Vector3.new(c120.X, 0, c120.Z)
                    local c122 = (c119 or c121.Magnitude < 0.1) and c118.CFrame.Rotation or CFrame.lookAt(Vector3.zero, c121.Unit)
                    local c123 = math.max(c4.time, V.a269(c4.smooth, c4.smoothTime))
                    local c124 = os.clock()
                    b119(c1, function()
                        local d1 = c123 > 0 and math.clamp((os.clock() - c124) / c123, 0, 1) or 1
                        d1 = V.a272(d1, c4.smooth)
                        if c119 then
                            return c122 * CFrame.fromEulerAnglesYXZ(math.rad(c4.pitch) * d1, math.rad(-c4.yaw) * d1, math.rad(-c4.roll) * d1)
                        end
                        return CFrame.Angles(0, math.rad(-c4.yaw) * d1, 0) * c122
                    end, c123 + math.max(c4.hold, 0), c119, true, c4.smooth, c4.smoothTime)
                end
            elseif c6 == "face" then
                local c125 = string.gsub(c4.mode, " 360", "")
                b119(c1, function(d1)
                    if c125 == "Cursor" then
                        local d2 = b111()
                        return d2 and d2 - d1.Position
                    elseif c125 == "Camera" then
                        local d3 = workspace.CurrentCamera
                        return d3 and d3.CFrame.LookVector
                    end
                    local d4 = b101(c1, c4.range)
                    local d5 = d4 and b102(d4, c4.prediction)
                    return d5 and d5 - d1.Position
                end, c4.time, c125 ~= c4.mode, false, c4.smooth, c4.smoothTime)
            elseif c6 == "if" or c6 == "ifbr" then
                local c126 = b156(c4, c2, c1)
                if not c126 and c4.wait > 0 then
                    local c127 = os.clock() + c4.wait
                    while not c126 and os.clock() < c127 and c1.alive and a37 and b4.Character == c2 do
                        b1.Heartbeat:Wait()
                        c126 = b156(c4, c2, c1)
                    end
                end
                if c1.move.opts.debug then
                    local c128 = c126 or c6 == "ifbr" or c4.onFail == b14
                    local c129 = c126 and c4.yes or c128 and c4.no or c4.onFail
                    local c130 = c128 and c129 ~= "-" and not b158(c1.move, c129)
                    b147(c1.move, "IF " .. c4.check .. ": " .. (c126 and "YES" or "NO") .. " -> " .. (c129 == "-" and "next step" or c129) .. (c130 and " (no branch with that name!)" or ""))
                end
                if c6 == "ifbr" then
                    local c131 = b158(c1.move, c126 and c4.yes or c4.no)
                    if c131 and (c1.depth or 0) < 8 then
                        b157(c1, c2, c3, c131)
                        if c4.mode == "End move there" then
                            c1.halt = true
                            return math.huge
                        end
                    end
                else
                    local c132 = c126 and c4.yes or c4.onFail == b14 and c4.no or nil
                    local c133 = c132 and b158(c1.move, c132)
                    if c133 and (c1.depth or 0) < 8 then
                        b157(c1, c2, c3, c133)
                        if c4.mode == "End move there" or c1.halt then
                            c1.halt = true
                            return math.huge
                        end
                    end
                end
                if c6 == "if" and not c126 then
                    if c4.onFail == "Stop move" then
                        c1.halt = true
                        return math.huge
                    elseif c4.onFail == "Skip steps" then
                        return c5 + 1 + math.max(0, math.floor(c4.skip))
                    end
                    local c134, c135 = b8.Branch(c1.steps, c5)
                    return (c134 or c135) + 1
                end
            elseif c6 == "else" then
                local c136, c137 = b8.Branch(c1.steps, c5, true)
                return c137 + 1
            elseif c6 == "tag" then
                if c4.op == "Set" then
                    b154[c4.tag] = c4.value
                else
                    b154[c4.tag] = (b154[c4.tag] or 0) + c4.value
                end
            elseif c6 == "branch" or c6 == "switch" then
                local c138 = c4.target
                if c6 == "switch" then
                    local c139 = b160(c1, c4.from)
                    c138 = c4[c139] ~= "" and c4[c139] ~= "-" and c4[c139] or c4.default
                    b147(c1.move, "SWITCH saw " .. c139 .. " -> " .. c138)
                else
                    b147(c1.move, "BRANCH -> " .. c138)
                end
                local c140 = b158(c1.move, c138)
                if not c140 and c138 ~= "-" then
                    b147(c1.move, "No branch called '" .. c138 .. "'")
                end
                if c140 and (c1.depth or 0) < 8 then
                    b157(c1, c2, c3, c140)
                    if c4.mode == "End move there" then
                        c1.halt = true
                        return math.huge
                    end
                end
            elseif c6 == "stop" then
                local c143, c142, c141 = ipairs(c1.tracks)
                while true do
                    local c145 = c143(c142, c141)
                    if c144 == nil then
                        break
                    end
                    c141 = c144
                    pcall(function()
                        c145:Stop(math.max(c4.fade, 0))
                    end)
                end
            elseif c6 == "shake" then
                b8.CameraShake(c4.strength, c4.time)
            elseif c6 == "item" then
                local c146 = tostring(c4.name or "")
                if c146 == "" then
                    b147(c1.move, "ITEM: no item name")
                elseif a147.Holding(c146) then
                    b147(c1.move, "ITEM: already holding " .. c146)
                elseif a147.IsBusy() then
                    b147(c1.move, "ITEM: the grabber is busy, skipped")
                elseif c4.waitEnd then
                    local c147, c148 = a147.Grab(c146)
                    if not c147 then
                        b147(c1.move, "ITEM: could not get " .. c146 .. " (" .. tostring(c148) .. ")")
                    end
                else
                    task.spawn(a147.Grab, c146)
                end
            end
            return c5 + 1
        end
        b157 = function(c1, c2, c3, c4)
            local c5 = c1.steps
            c1.steps = c4
            c1.depth = (c1.depth or 0) + 1
            local c6 = 1
            while c6 <= #c4 and c1.alive and not c1.halt and a37 and b4.Character == c2 do
                local c7 = c4[c6]
                if c7.off then
                    c6 = c6 + 1
                else
                    c6 = b162(c1, c2, c3, c7, c6)
                end
            end
            c1.depth = c1.depth - 1
            c1.steps = c5
        end
        local function b163(c1, c2, c3)
            local c4 = c1.opts
            if c4.req == "Always" then
                return true
            end
            local c5 = {check = c4.req, value = c4.reqValue, tag = c4.reqTag, anim = "", from = "Move start", wait = 0}
            local c6 = {fireSnap = c3, startT = os.clock() - 1, move = c1, seen = {}, tracks = {}}
            local c7, c8 = pcall(b156, c5, c2, c6)
            local c9 = c7 and c8 == true
            if c4.reqNot then
                c9 = not c9
            end
            return c9
        end
        b8.GateOk = b163
        local function b164(c1, c2)
            local c3 = b150[c1]
            if not c3 or not c3.alive then
                return
            end
            c3.alive = false
            local c6, c5, c4 = ipairs(c3.tracks)
            while true do
                local c8 = c6(c5, c4)
                if c7 == nil then
                    break
                end
                c4 = c7
                pcall(function()
                    c8:Stop(0.1)
                end)
            end
            local c11, c10, c9 = ipairs(c3.objects)
            while true do
                local c13 = c11(c10, c9)
                if c12 == nil then
                    break
                end
                c9 = c12
                pcall(function()
                    c13:Destroy()
                end)
            end
            b147(c1, "Canceled: " .. c2)
        end
        local b165 = {One = true, Two = true, Three = true, Four = true, G = true}
        local b166 = {
            ["0"] = "Zero",
            ["1"] = "One",
            ["2"] = "Two",
            ["3"] = "Three",
            ["4"] = "Four",
            ["5"] = "Five",
            ["6"] = "Six",
            ["7"] = "Seven",
            ["8"] = "Eight",
            ["9"] = "Nine"
        }
        local b167 = {}
        local function b168(c1)
            local c2 = string.upper(string.gsub(tostring(c1 or ""), "%s", ""))
            if b167[c2] == nil then
                local c3 = false
                if c2 == "M1" then
                    c3 = "MouseButton1"
                elseif c2 == "M2" then
                    c3 = "MouseButton2"
                elseif b166[c2] then
                    c3 = b166[c2]
                elseif c2 ~= "" then
                    for c7, c8 in ipairs(Enum.KeyCode:GetEnumItems()) do
                        if string.upper(c8.Name) == c2 then
                            c3 = c8.Name
                            break
                        end
                    end
                end
                b167[c2] = c3
            end
            return b167[c2] or nil
        end
        local function b169(c1)
            if c1 == "MouseButton1" then
                return "M1"
            elseif c1 == "MouseButton2" then
                return "M2"
            end
            for c5, c6 in pairs(b166) do
                if c6 == c1 then
                    return c5
                end
            end
            return c1
        end
        b8.CancelByKey = function(c1)
            local c2 = os.clock()
            for c6, c7 in pairs(b150) do
                local c8 = c6.opts.cancel
                if c7.alive and c8 ~= "Nothing" and c2 - c7.startT > 0.1 then
                    if c8 == "A key" and b168(c6.opts.cancelKey) == c1 then
                        b164(c6, "you pressed " .. b169(c1))
                    elseif c8 == "Any other move" and b165[c1] and c1 ~= c6.key then
                        b164(c6, "you used game move " .. b169(c1))
                    end
                end
            end
        end
        local function b170(c1, c2)
            if b150[c1] or not a37 then
                return false
            end
            if not c2 and b8.CooldownLeft(c1) > 0 then
                return false
            end
            local c3 = b4.Character
            local c4 = b74()
            if not c3 or not c4 then
                return false
            end
            local c5 = b140[c1.trigger == "On animation" and "*" or c1.key]
            local c6 = c5 and os.clock() - c5 < (c1.trigger == "On animation" and 0.5 or 1) and math.min(c5, os.clock() - 0.1) or os.clock() - 0.1
            local c7 = c1.opts
            if c7.req ~= "Always" and not b163(c1, c3, b146(c6 - 0.03)) then
                b147(c1, "Not used: " .. (c7.reqNot and "NOT " or "") .. c7.req .. " is false")
                return false
            end
            b139[c1] = os.clock() + c1.cd
            local c8 = {
                fireSnap = b146(c6 - 0.03),
                tracks = {},
                objects = {},
                fades = {},
                keep = {},
                alive = true,
                startT = os.clock(),
                seen = {},
                steps = c1.steps,
                move = c1
            }
            b150[c1] = c8
            for c12 in pairs(b150) do
                if c12 ~= c1 and c12.opts.cancel == "Any other move" then
                    b164(c12, c1.name .. " started")
                end
            end
            if c1.opts.hideGameMove then
                b153 = b153 + 1
            end
            if b8.OnFire then
                pcall(b8.OnFire, c1)
            end
            b147(c1, "Started. You were " .. b148(c8.fireSnap) .. " when you pressed")
            task.spawn(function()
                local d1, d2 = pcall(function()
                    b157(c8, c3, c4, c1.steps)
                end)
                if c1.opts.hideGameMove then
                    b153 = b153 - 1
                end
                b150[c1] = nil
                local d5, d4, d3 = ipairs(c8.tracks)
                while true do
                    local d7 = d5(d4, d3)
                    if d6 == nil then
                        break
                    end
                    d3 = d6
                    if d7.Looped and not c8.keep[d7] then
                        pcall(function()
                            d7:Stop(c8.fades[d7] or 0.15)
                        end)
                    end
                end
                if not d1 then
                    a67("Moveset", c1.name .. ": " .. tostring(d2), 4)
                end
            end)
            return true
        end
        b8.Test = function(c1)
            return b170(c1, true)
        end
        b8.Fire = function(c1)
            b140[c1.key] = os.clock()
            return b170(c1)
        end
        local b174 = false
        local b173 = 0
        local b172 = 0
        local b171 = 0
        local b175 = "RYOIKI_CamShake"
        b8.CameraShake = function(c1, c2)
            c1 = math.clamp(tonumber(c1) or 1, 0, 10)
            c2 = math.clamp(tonumber(c2) or 0.3, 0.02, 10)
            local c3 = os.clock()
            local c4 = b172 > 0 and math.max(0, 1 - (c3 - b171) / b172) or 0
            if c1 >= b173 * c4 * c4 then
                b173 = c1
                b172 = c2
                b171 = c3
            end
            if b174 then
                return
            end
            b174 = true
            b1:BindToRenderStep(b175, Enum.RenderPriority.Camera.Value + 1, function()
                local d1 = os.clock() - b171
                local d2 = workspace.CurrentCamera
                if not a37 or d1 >= b172 or not d2 then
                    b174 = false
                    pcall(function()
                        b1:UnbindFromRenderStep(b175)
                    end)
                    return
                end
                local d3 = b173 * (1 - d1 / b172) ^ 2
                local d4 = os.clock() * 28
                local d5 = math.noise(d4, 0.31) * d3 * 0.022
                local d6 = math.noise(0.67, d4) * d3 * 0.022
                local d7 = math.noise(d4, d4 * 0.5 + 3.1) * d3 * 0.012
                local d8 = math.noise(d4 + 7.3, 1.9) * d3 * 0.25
                local d9 = math.noise(2.4, d4 + 5.1) * d3 * 0.25
                d2.CFrame = d2.CFrame * CFrame.new(d8, d9, 0) * CFrame.Angles(d5, d6, d7)
            end)
        end
        b8.ArmLink = function(c1, c2)
            local c3 = c1
            local c4 = c1
            c4.alts = {}
            c3.anim = ""
            if c1.dir then
                b8.LastDashDir = c1.dir
            end
            b151[c1] = os.clock() + (c2 or 8)
            b8.Save()
        end
        local function b176()
            for c4, c5 in pairs(b150) do
                c5.alive = false
                local c8, c7, c6 = ipairs(c5.tracks)
                while true do
                    local c10 = c8(c7, c6)
                    if c9 == nil then
                        break
                    end
                    c6 = c9
                    pcall(function()
                        c10:Stop(0.1)
                    end)
                end
                local c13, c12, c11 = ipairs(c5.objects)
                while true do
                    local c15 = c13(c12, c11)
                    if c14 == nil then
                        break
                    end
                    c11 = c14
                    pcall(function()
                        c15:Destroy()
                    end)
                end
            end
            b151 = {}
        end
        b8.StopAll = b176
        local b177 = {}
        local function b178(c1)
            local c2 = c1.Animation
            if not c2 or c2.Name == b6 then
                return false
            end
            local c3 = b9(c2.AnimationId)
            if c3 and (b109[c3] or b123[c3]) then
                return true
            end
            local c4 = c1.Priority
            return c4 == Enum.AnimationPriority.Core or c4 == Enum.AnimationPriority.Idle or c4 == Enum.AnimationPriority.Movement
        end
        a39(b1.Heartbeat:Connect(function()
            b107()
            if b153 > 0 then
                local c1 = b74()
                if c1 then
                    for c5, c6 in ipairs(c1:GetPlayingAnimationTracks()) do
                        if not b152[c6] and b126(c6) then
                            b152[c6] = true
                        end
                    end
                end
            end
            for c10 in pairs(b152) do
                if c10.IsPlaying then
                    if c10.WeightTarget > 0.002 then
                        pcall(c10.AdjustWeight, c10, 0.001, 0)
                    end
                else
                    b152[c10] = nil
                end
            end
            if next(b150) and b8.Enabled then
                local c11 = b74()
                if c11 then
                    for c15, c16 in ipairs(c11:GetPlayingAnimationTracks()) do
                        if not b177[c16] and b178(c16) then
                            b177[c16] = true
                            pcall(c16.AdjustWeight, c16, 0.001, 0.1)
                        end
                    end
                end
            elseif next(b177) then
                for c20 in pairs(b177) do
                    if c20.IsPlaying then
                        pcall(c20.AdjustWeight, c20, 1, 0.2)
                    end
                end
                table.clear(b177)
            end
            for c24 in pairs(b177) do
                if not c24.IsPlaying then
                    b177[c24] = nil
                elseif c24.WeightTarget > 0.002 then
                    pcall(c24.AdjustWeight, c24, 0.001, 0.1)
                end
            end
        end))
        local b179 = nil
        a39(b1.RenderStepped:Connect(function()
            for c4, c5 in pairs(b150) do
                if c5.tilt and c5.tilt > 0 then
                    return
                end
            end
            local c6 = b8.Settings()
            local c7 = c6.face == "Always" and c6.turn or nil
            for c11 in pairs(b150) do
                if c11.opts.face then
                    c7 = c11.opts.turn
                    break
                end
            end
            local c12 = b8.Enabled and c7 ~= nil
            local c14 = b73()
            local c13 = b72()
            if c12 and c13 and c14 and c13.Health > 0 and not (os.clock() < b103.untilT and b103.rotate) then
                if not b179 or b179.h ~= c13 then
                    b179 = {h = c13, ar = b114 > 0 and b115 or c13.AutoRotate}
                end
                c13.AutoRotate = false
                local c15 = b111()
                if c15 then
                    b113(c14, c15, math.clamp(c7, 0.05, 1))
                end
            elseif b179 then
                if b179.h.Parent and not (os.clock() < b103.untilT and b103.rotate) then
                    b179.h.AutoRotate = b179.ar
                end
                b179 = nil
            end
        end))
        local b180 = {}
        local function b181()
            for c4, c5 in pairs(b180) do
                if c4.Parent then
                    c4.C0 = c5
                end
                b180[c4] = nil
            end
        end
        local function b182(c1, c2, c3, c4)
            if not c1 or not c1:IsA("Motor6D") then
                return
            end
            if not b180[c1] then
                b180[c1] = c1.C0
            end
            local c5 = c4 and CFrame.Angles(-c2, 0, c3) or CFrame.Angles(c2, c3, 0)
            c1.C0 = c1.C0:Lerp(b180[c1] * c5, 0.35)
        end
        a39(b1.RenderStepped:Connect(function()
            local c1 = b8.Settings()
            local c2 = b8.Enabled and c1.look or "Off"
            local c5 = b73()
            local c4 = b72()
            local c3 = b4.Character
            if c2 == "Off" or not c3 or not c4 or not c5 or c4.Health <= 0 then
                if next(b180) then
                    b181()
                end
                return
            end
            local c6 = b111()
            if not c6 then
                return
            end
            local c7 = c5.CFrame:PointToObjectSpace(c6) - Vector3.new(0, 1.5, 0)
            local c8 = math.clamp(math.atan2(-c7.X, -c7.Z), -math.rad(110), math.rad(110))
            local c9 = c1.lookUpDown and math.clamp(math.atan2(c7.Y, math.sqrt(c7.X * c7.X + c7.Z * c7.Z)), -math.rad(60), math.rad(60)) or 0
            local c10 = c3:FindFirstChild("UpperTorso")
            if c10 then
                local c11 = c3:FindFirstChild("Head")
                local c12 = c11 and c11:FindFirstChild("Neck")
                if c2 == "Head + torso" then
                    b182(c10:FindFirstChild("Waist"), c9 * 0.4, math.clamp(c8 * 0.45, -math.rad(50), math.rad(50)))
                    b182(c12, c9 * 0.6, math.clamp(c8 * 0.55, -math.rad(70), math.rad(70)))
                else
                    b182(c12, c9, math.clamp(c8, -math.rad(75), math.rad(75)))
                end
            else
                local c13 = c3:FindFirstChild("Torso")
                b182(c13 and c13:FindFirstChild("Neck"), c9, math.clamp(c8, -math.rad(75), math.rad(75)), true)
            end
        end))
        local b186 = -1
        local b185 = 0
        local b184 = -math.huge
        local b183 = 0
        local b187 = {}
        local function b188(c1)
            local c2 = c1.UserInputType
            if c2 == Enum.UserInputType.Keyboard then
                return c1.KeyCode.Name
            elseif c2 == Enum.UserInputType.MouseButton1 or c2 == Enum.UserInputType.MouseButton2 then
                return c2.Name
            end
            return nil
        end
        a39(UserInputService.InputBegan:Connect(function(c1, c2)
            local c3 = b8.PassUntil and b8.PassUntil[c1.KeyCode.Name]
            if c3 and os.clock() <= c3 then
                return
            end
            if not UserInputService:GetFocusedTextBox() then
                local c4 = b188(c1)
                if c4 then
                    b8.CancelByKey(c4)
                end
            end
            if b8.Enabled and not UserInputService:GetFocusedTextBox() and (not c2 or c1.UserInputType == Enum.UserInputType.Keyboard) then
                local c5 = b188(c1)
                if c5 then
                    local c6 = string.sub(b84(), 5)
                    for c10, c11 in ipairs(b8.Current().moves) do
                        if c11.key == c5 and c11.opts.replace and #c11.steps > 0 and (not c11.dir or c11.dir == c6) then
                            b140[c5] = os.clock()
                            task.spawn(b170, c11)
                        end
                    end
                end
            end
            if not b8.Enabled or UserInputService:GetFocusedTextBox() then
                return
            end
            if c2 and c1.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end
            local c12 = b188(c1)
            if not c12 then
                return
            end
            if c12 == "MouseButton1" then
                b185 = b185 + 1
            elseif c12 == "Q" then
                b81 = os.clock()
                b83 = {slot = b84(), untilT = os.clock() + 0.3}
                b8.LastDashDir = string.sub(b83.slot, 5)
            elseif c12 == "F" then
                b82 = true
                b83 = {slot = "block", untilT = os.clock() + 0.3}
            end
            b187[c12] = true
            b140[c12] = os.clock()
            b140["*"] = os.clock()
            local c15, c14, c13 = ipairs(b8.Current().moves)
            while true do
                local c17 = c15(c14, c13)
                if c16 == nil then
                    break
                end
                c13 = c16
                if c17.key == c12 and not c17.opts.replace then
                    if c17.opts.disableGameMove and c17.trigger ~= "On animation" then
                        if #c17.steps > 0 then
                            b170(c17)
                        end
                    elseif c17.trigger == "Key only" then
                        if #c17.steps > 0 then
                            b170(c17)
                        end
                    elseif c17.trigger == "Key + used" then
                        b151[c17] = os.clock() + 0.45
                        if c17.opts.debug then
                            local c18 = os.clock()
                            b147(c17, "Pressed " .. c12 .. (c2 and " (game marked it as used, taking it anyway)" or "") .. ", waiting for the game move")
                            task.delay(1, function()
                                if (b139[c17] or 0) - c17.cd < c18 then
                                    b147(c17, "Did not fire. Your anims after the key: " .. b8.RecentAnimsText(c18))
                                end
                            end)
                        end
                    end
                end
            end
        end))
        a39(UserInputService.InputEnded:Connect(function(c1)
            local c2 = b8.PassUntil and b8.PassUntil[c1.KeyCode.Name]
            if c2 and os.clock() <= c2 then
                return
            end
            local c3 = b188(c1)
            if c3 == "F" then
                b82 = false
            end
            if not c3 or not b187[c3] then
                return
            end
            b187[c3] = nil
            local c4 = os.clock() + 0.45
            for c8, c9 in ipairs(b8.Current().moves) do
                if c9.key == c3 and c9.trigger == "Key + used" then
                    b151[c9] = c4
                end
            end
        end))
        local function b189(c1, c2)
            return b187[c1.key] or b151[c1] ~= nil and c2 <= b151[c1]
        end
        local function b190(c1, c2)
            return c1.anim == c2 or c1.anim ~= "" and c1.alts ~= nil and table.find(c1.alts, c2) ~= nil
        end
        local function b191(c1, c2)
            for c6, c7 in ipairs(b8.Current().moves) do
                if c7 ~= c2 and b190(c7, c1) then
                    return true
                end
            end
            return false
        end
        local b192 = -1
        local function b193(c1, c2)
            if not b8.Enabled or not b126(c1) then
                return
            end
            local c3 = os.clock()
            local c4 = b8.Settings()
            local c5 = nil
            local c6 = b187.MouseButton1
            if not c6 then
                for c10, c11 in pairs(b151) do
                    if c10.key == "MouseButton1" and c3 <= c11 then
                        c6 = true
                        break
                    end
                end
            end
            if c6 then
                local c12 = b186 ~= b185
                local c13 = b187.MouseButton1 and c3 - b184 > 0.15
                if c12 or c13 then
                    b186 = b185
                    if c3 - b184 > c4.comboReset then
                        b183 = 0
                    end
                    b183 = b183 % math.max(1, math.floor(c4.comboLen)) + 1
                    b184 = c3
                end
                c5 = b183
            end
            local c14 = false
            for c18, c19 in ipairs(b8.Current().moves) do
                local c20 = false
                if c19.opts.replace then
                    c20 = false
                elseif c19.trigger == "On animation" then
                    c20 = b190(c19, c2)
                elseif c19.trigger == "Key + used" and b189(c19, c3) then
                    if c19.anim ~= "" then
                        c20 = b190(c19, c2)
                        if c20 and c5 and c19.combo > 0 then
                            b183 = c19.combo
                        end
                    elseif not b191(c2, c19) and (not c5 or c19.combo <= 0 or c19.combo == c5) and (not c19.dir or c19.dir == b8.LastDashDir) then
                        c19.anim = c2
                        b8.Save()
                        if b8.OnLearn then
                            pcall(b8.OnLearn, c19, c2)
                        end
                        c20 = true
                    end
                elseif c19.trigger == "Key + used" and c19.anim ~= "" and b8.NoKeys and b8.NoKeys() then
                    c20 = b190(c19, c2)
                end
                if c20 then
                    c14 = true
                    b151[c19] = nil
                    if c19.key == "MouseButton1" then
                        b192 = b185
                    end
                    if #c19.steps == 0 then
                        b147(c19, "Linked anim played, but the move has no steps")
                    elseif b170(c19) then
                        if c19.opts.hideGameMove then
                            b152[c1] = true
                        end
                    elseif b150[c19] or b8.CooldownLeft(c19) > 0 then
                        b147(c19, b150[c19] and "Skipped: still running from last time" or "Skipped: cooldown " .. string.format("%.1f", b8.CooldownLeft(c19)) .. "s")
                    end
                end
            end
            if not c14 and not b123[c2] and not b191(c2, nil) then
                local c21, c22 = pcall(function()
                    return c1.Priority
                end)
                local c23, c24 = pcall(function()
                    return c1.Looped
                end)
                local c25 = Enum.AnimationPriority
                local c26 = c21 and (c22 == c25.Action or c22 == c25.Action2 or c22 == c25.Action3 or c22 == c25.Action4)
                if c26 and c23 and not c24 then
                    for c30, c31 in ipairs(b8.Current().moves) do
                        if c31.trigger == "Key + used" and not c31.opts.replace and c31.anim ~= "" and c31.key ~= "MouseButton1" and not c31.dir and c3 - (b140[c31.key] or -math.huge) <= 0.45 and b189(c31, c3) then
                            c31.alts = c31.alts or {}
                            if #c31.alts < 4 then
                                table.insert(c31.alts, c2)
                                b8.Save()
                                if b8.OnLearn then
                                    pcall(b8.OnLearn, c31, c2, true)
                                end
                                b151[c31] = nil
                                b147(c31, "Learned another version of the game move (anim " .. c2 .. "), it fires with this one too now")
                                if #c31.steps > 0 and b170(c31) and c31.opts.hideGameMove then
                                    b152[c1] = true
                                end
                            else
                                b147(c31, "Game played anim " .. c2 .. ", but this move already has 4 extra IDs")
                            end
                            c14 = true
                            break
                        end
                    end
                end
            end
            if c14 or not c5 or b192 == b185 or b123[c2] or b191(c2, nil) then
                return
            end
            if not b187.MouseButton1 and c3 - (b140.MouseButton1 or -math.huge) > 0.35 then
                return
            end
            local c32, c33 = pcall(function()
                return c1.Looped
            end)
            if not c32 or c33 then
                return
            end
            local c34 = false
            for c38, c39 in ipairs(b8.Current().moves) do
                if c39.key == "MouseButton1" and c39.trigger == "Key + used" and c39.combo == c5 and c39.anim ~= "" and b189(c39, c3) then
                    c34 = true
                    c39.alts = c39.alts or {}
                    if #c39.alts < 4 then
                        table.insert(c39.alts, c2)
                        b8.Save()
                        if b8.OnLearn then
                            pcall(b8.OnLearn, c39, c2, true)
                        end
                        b151[c39] = nil
                        b192 = b185
                        if #c39.steps > 0 and b170(c39) and c39.opts.hideGameMove then
                            b152[c1] = true
                        end
                    else
                        b147(c39, "Anim " .. c2 .. " played on hit " .. c5 .. ", but this move already has 4 extra IDs")
                    end
                    return
                end
            end
            if not c34 then
                for c43, c44 in ipairs(b8.Current().moves) do
                    if c44.key == "MouseButton1" and c44.opts.debug then
                        b147(c44, "M1 hit " .. c5 .. " played anim " .. c2 .. ", no M1 move with combo " .. c5 .. " could take it")
                        break
                    end
                end
            end
        end
        local b194 = {}
        local b195 = 0
        a39(b1.Heartbeat:Connect(function()
            local c1 = os.clock()
            if c1 < b195 then
                return
            end
            b195 = c1 + 0.05
            local c2 = {}
            local c3 = b4.Character
            if b8.Enabled and c3 then
                local c4 = nil
                local c5 = b8.Settings()
                local c6 = c1 - b184 > c5.comboReset and 1 or b183 % math.max(1, math.floor(c5.comboLen)) + 1
                for c10, c11 in ipairs(b8.Current().moves) do
                    if c11.opts.req ~= "Always" and c11.trigger == "Key + used" and #c11.steps > 0 then
                        local c12 = c11.key ~= "MouseButton1" or c11.combo <= 0 or c11.combo == c6
                        if c12 and not c2[c11.key] then
                            c4 = c4 or b142()
                            if not b163(c11, c3, c4) then
                                c2[c11.key] = true
                            end
                        end
                    end
                end
            end
            for c16 in pairs(b194) do
                if not c2[c16] then
                    b194[c16] = nil
                    pcall(function()
                        b3:UnbindAction("RYOIKI_Gate_" .. c16)
                    end)
                end
            end
            for c20 in pairs(c2) do
                if not b194[c20] then
                    local c21 = (c20 == "MouseButton1" or c20 == "MouseButton2") and Enum.UserInputType[c20] or Enum.KeyCode[c20]
                    b194[c20] = true
                    pcall(function()
                        b3:BindActionAtPriority("RYOIKI_Gate_" .. c20, function()
                            local e1 = b8.PassUntil and b8.PassUntil[c20]
                            if e1 and os.clock() <= e1 then
                                return Enum.ContextActionResult.Pass
                            end
                            return Enum.ContextActionResult.Sink
                        end, false, 3001, c21)
                    end)
                end
            end
        end))
        b8.UnbindGates = function()
            for c4 in pairs(b194) do
                pcall(function()
                    b3:UnbindAction("RYOIKI_Gate_" .. c4)
                end)
            end
            table.clear(b194)
        end
        local b196 = {}
        local b197 = 0
        local function b198(c1)
            if c1 == "MouseButton1" or c1 == "MouseButton2" then
                return Enum.UserInputType[c1]
            end
            local c2, c3 = pcall(function()
                return Enum.KeyCode[c1]
            end)
            return c2 and c3 or nil
        end
        local function b199()
            for c4 in pairs(b196) do
                pcall(function()
                    b3:UnbindAction("RYOIKI_Rep_" .. c4)
                end)
            end
            table.clear(b196)
        end
        b133.Unbind = b199
        a39(b1.Heartbeat:Connect(function()
            local c1 = os.clock()
            if c1 < b197 or not a37 then
                return
            end
            b197 = c1 + 0.25
            local c2 = {}
            if b8.Enabled then
                for c6, c7 in ipairs(b8.Current().moves) do
                    if c7.opts.disableGameMove or c7.opts.replace and #c7.steps > 0 then
                        c2[c7.key] = true
                    end
                end
            end
            for c11 in pairs(b196) do
                if not c2[c11] then
                    b196[c11] = nil
                    pcall(function()
                        b3:UnbindAction("RYOIKI_Rep_" .. c11)
                    end)
                end
            end
            for c15 in pairs(c2) do
                local c16 = not b196[c15] and b198(c15)
                if c16 then
                    b196[c15] = true
                    pcall(function()
                        b3:BindActionAtPriority("RYOIKI_Rep_" .. c15, function(e1, e2)
                            local e3 = b8.PassUntil and b8.PassUntil[c15]
                            if e3 and os.clock() <= e3 then
                                return Enum.ContextActionResult.Pass
                            end
                            if e2 == Enum.UserInputState.Begin and b8.Enabled then
                                b140[c15] = os.clock()
                                local e4 = string.sub(b84(), 5)
                                for e8, e9 in ipairs(b8.Current().moves) do
                                    if e9.key == c15 and e9.opts.replace and #e9.steps > 0 and (not e9.dir or e9.dir == e4) then
                                        b170(e9)
                                    end
                                end
                            end
                            return Enum.ContextActionResult.Sink
                        end, false, 3002, c16)
                    end)
                end
            end
        end))
        local function b200(c1, c2)
            local c3 = b123[c2]
            if c3 then
                if b8.Enabled and b9(b8.Settings()[c3]) == c2 then
                    pcall(function()
                        c1.Priority = c3 == "idle" and Enum.AnimationPriority.Idle or Enum.AnimationPriority.Movement
                    end)
                end
                b125(c1, c3)
                return
            end
            local c4 = b83
            if not c4 or not b8.Enabled or not b126(c1) then
                return
            end
            b83 = nil
            if os.clock() > c4.untilT then
                return
            end
            local c5 = b9(b8.Settings()[c4.slot])
            if not c5 or c5 == c2 then
                b125(c1, c4.slot)
                return
            end
            local c6 = b74()
            local c7 = c6 and b128(c6, c5)
            if c7 then
                b131(0.05)
                c7.Looped = c1.Looped
                c7:Play(0.08, 1, c1.Speed)
                b152[c1] = true
                b125(c7, c4.slot)
                local c8 = {track = c7, at = os.clock(), slot = c4.slot}
                b129 = c8
                c7.Stopped:Once(function()
                    if b129 == c8 then
                        b129 = nil
                    end
                end)
                c1.Stopped:Once(function()
                    if b129 == c8 then
                        b131(0.1)
                    end
                end)
            end
        end
        local b201 = {}
        b8.RecentAnimsText = function(c1)
            local c2 = {}
            for c6, c7 in ipairs(b201) do
                if c7.t >= c1 then
                    table.insert(c2, c7.id .. " (" .. c7.pr .. (c7.looped and ", looped" or "") .. (c7.orig and "" or ", ignored: walk/idle/own") .. (c7.linked and ", linked to a move" or "") .. ")")
                end
            end
            return #c2 > 0 and table.concat(c2, "; ") or "none, the game did not play any move"
        end
        local function b202(c1, c2)
            if not a37 then
                return
            end
            local c3 = c2.Animation
            if not c3 or c3.Name == b6 then
                return
            end
            local c4 = b9(c3.AnimationId)
            if not c4 then
                return
            end
            b11(c4, c3.Name)
            if c1 == b4 then
                local c5, c6 = pcall(function()
                    return {
                        t = os.clock(),
                        id = c4,
                        pr = c2.Priority.Name,
                        looped = c2.Looped,
                        orig = b126(c2),
                        linked = b191(c4, nil)
                    }
                end)
                if c5 then
                    table.insert(b201, c6)
                    if #b201 > 12 then
                        table.remove(b201, 1)
                    end
                end
                for c10, c11 in pairs(b150) do
                    c11.seen[c4] = true
                end
                if b8.Capture and b8.OnCapture then
                    b8.OnCapture(c4, c3.Name, nil)
                end
                if b126(c2) then
                    b132(c2)
                end
                b200(c2, c4)
                b193(c2, c4)
            elseif b8.Spy and b8.OnCapture then
                b8.OnCapture(c4, c3.Name, c1.DisplayName)
            end
        end
        local b203 = {}
        local function b204(c1, c2)
            task.spawn(function()
                local d1 = c2:WaitForChild("Humanoid", 10)
                local d2 = d1 and d1:WaitForChild("Animator", 10)
                if not d2 or not a37 or c1.Character ~= c2 then
                    return
                end
                if b203[c1] then
                    b203[c1]:Disconnect()
                end
                b203[c1] = d2.AnimationPlayed:Connect(function(e1)
                    b202(c1, e1)
                end)
                b97(c2, d1)
                if c1 == b4 then
                    b110(c2)
                    b8.ApplyLocomotion()
                end
            end)
        end
        local function b205(c1)
            if c1.Character then
                b204(c1, c1.Character)
            end
            a39(c1.CharacterAdded:Connect(function(d1)
                if c1 == b4 then
                    b176()
                    b154 = {}
                    b152 = {}
                    b103.untilT = 0
                end
                b204(c1, d1)
            end))
        end
        for b209, b210 in ipairs(Players:GetPlayers()) do
            b205(b210)
        end
        a39(Players.PlayerAdded:Connect(b205))
        a39(Players.PlayerRemoving:Connect(function(c1)
            if b203[c1] then
                b203[c1]:Disconnect()
                b203[c1] = nil
            end
        end))
        b8.Cycle = function(c1)
            b176()
            b37.active = (b37.active - 1 + c1) % #b37.sets + 1
            b8.Save()
            b8.ApplyLocomotion()
        end
        b8.SetNames = function()
            local c1 = {}
            for c5, c6 in ipairs(b37.sets) do
                c1[c5] = c6.name
            end
            return c1
        end
        b8.Select = function(c1)
            if not b37.sets[c1] or c1 == b37.active then
                return
            end
            b176()
            b37.active = c1
            b8.Save()
            b8.ApplyLocomotion()
        end
        b8.DuplicateSet = function()
            local c1, c2 = pcall(function()
                return b2:JSONDecode(b2:JSONEncode(b8.Current()))
            end)
            if not c1 or type(c2) ~= "table" then
                return false
            end
            b176()
            local c3 = b36(c2, b37.active + 1)
            c3.name = string.sub(c3.name .. " copy", 1, 32)
            table.insert(b37.sets, b37.active + 1, c3)
            b37.active = b37.active + 1
            b8.Save()
            b8.ApplyLocomotion()
            return true, c3.name
        end
        b8.New = function()
            b176()
            table.insert(b37.sets, b35(#b37.sets + 1))
            b37.active = #b37.sets
            b8.Save()
            b8.ApplyLocomotion()
        end
        b8.Delete = function()
            b176()
            if #b37.sets <= 1 then
                b37.sets[1] = b35(1)
            else
                table.remove(b37.sets, b37.active)
                b37.active = math.min(b37.active, #b37.sets)
            end
            b8.Save()
            b8.ApplyLocomotion()
        end
        b8.Rename = function(c1)
            c1 = a7(c1)
            if c1 ~= "" then
                b8.Current().name = string.sub(c1, 1, 32)
                b8.Save()
            end
        end
        b8.AddDashSet = function()
            local c1 = b8.Current().moves
            local c2 = nil
            for c6, c7 in ipairs({[1] = "Front", [2] = "Back", [3] = "Left", [4] = "Right"}) do
                local c8 = b33(#c1 + 1)
                c8.name = "Dash " .. c7
                c8.key = "Q"
                c8.dir = c7
                c8.cd = 0
                table.insert(c1, c8)
                c2 = c2 or #c1
            end
            b8.Save()
            return c2
        end
        b8.AddM1Set = function()
            local c1 = b8.Current().moves
            local c2 = nil
            for c6 = 1, 4 do
                local c7 = b33(#c1 + 1)
                c7.name = "M1 " .. c6
                c7.key = "MouseButton1"
                c7.combo = c6
                c7.cd = 0
                table.insert(c1, c7)
                c2 = c2 or #c1
            end
            b8.Save()
            return c2
        end
        b8.AddMove = function()
            local c1 = b8.Current().moves
            local c2 = b33(#c1 + 1)
            table.insert(c1, c2)
            b8.Save()
            return #c1
        end
        b8.RemoveMove = function(c1)
            local c2 = b8.Current().moves
            local c3 = c2[c1]
            if c3 and b150[c3] then
                b150[c3].alive = false
            end
            table.remove(c2, c1)
            if #c2 == 0 then
                table.insert(c2, b33(1))
            end
            b8.Save()
        end
        b8.DuplicateMove = function(c1)
            local c2 = b8.Current().moves
            local c3 = c2[c1]
            if not c3 then
                return c1
            end
            local c4, c5 = pcall(function()
                return b2:JSONDecode(b2:JSONEncode(c3))
            end)
            if not c4 then
                return c1
            end
            local c6 = b34(c5, c1 + 1)
            c6.name = string.sub(c3.name .. " copy", 1, 24)
            table.insert(c2, c1 + 1, c6)
            b8.Save()
            return c1 + 1
        end
        local function b211(c1)
            local c2, c3 = pcall(b2.JSONDecode, b2, c1)
            if not c2 or type(c3) ~= "table" then
                return false
            end
            b176()
            b37.sets[b37.active] = b36(c3, b37.active)
            b48 = true
            b8.Save()
            b48 = false
            b8.ApplyLocomotion()
            return true
        end
        b8.Undo = function()
            local c1 = table.remove(b43)
            if not c1 then
                return false
            end
            table.insert(b44, b45)
            return b211(c1)
        end
        b8.Redo = function()
            local c1 = table.remove(b44)
            if not c1 then
                return false
            end
            table.insert(b43, b45)
            return b211(c1)
        end
        b8.Export = function()
            return b2:JSONEncode(b8.Current())
        end
        b8.Import = function(c1)
            local c2, c3 = pcall(b2.JSONDecode, b2, a7(c1))
            if not c2 or type(c3) ~= "table" or type(c3.moves) ~= "table" and type(c3.map) ~= "table" then
                return false, "that is not a moveset code"
            end
            b176()
            local c4 = b36(c3, #b37.sets + 1)
            table.insert(b37.sets, c4)
            b37.active = #b37.sets
            b8.Save()
            b8.ApplyLocomotion()
            return true, c4.name
        end
        local b212 = nil
        local b213 = {}
        b8.AnimLength = function(c1)
            return c1 and b213[c1] or nil
        end
        b8.ProbeLength = function(c1)
            if b213[c1] then
                return b213[c1]
            end
            local c2 = b74()
            if not c2 then
                return nil
            end
            local c3 = Instance.new("Animation")
            c3.Name = b6
            c3.AnimationId = "rbxassetid://" .. c1
            local c5 = pcall(c2.LoadAnimation, c2, c3)
            if not c4 or not c5 then
                c3:Destroy()
                return nil
            end
            local c6 = os.clock()
            while c5.Length == 0 and os.clock() - c6 < 2 do
                task.wait(0.05)
            end
            local c7 = c5.Length
            pcall(function()
                c5:Destroy()
                c3:Destroy()
            end)
            if c7 > 0 then
                b213[c1] = c7
                return c7
            end
            return nil
        end
        b8.PreviewStop = function(c1)
            local c2 = b212
            b212 = nil
            if c2 then
                pcall(function()
                    c2.track:Stop(math.max(tonumber(c1) or 0.1, 0))
                end)
            end
        end
        b8.PreviewPlay = function(c1, c2)
            c2 = c2 or {}
            b8.PreviewStop(0.05)
            local c3 = b74()
            if not c3 then
                return false, "no character"
            end
            local c4 = b128(c3, c1, c2.layer)
            if not c4 then
                return false, "could not load it"
            end
            local c5 = {
                track = c4,
                id = c1,
                start = math.max(0, tonumber(c2.start) or 0),
                stop = math.max(0, tonumber(c2.stop) or 0),
                speed = tonumber(c2.speed) or 1,
                fadeOut = math.max(0, tonumber(c2.fadeOut) or 0),
                looped = c2.looped == true,
                paused = c2.paused == true
            }
            c4.Looped = c5.looped
            b212 = c5
            c4:Play(math.max(0, tonumber(c2.fadeIn) or 0.1), math.clamp(tonumber(c2.weight) or 1, 0.01, 1), c5.paused and 0 or c5.speed)
            local c6 = os.clock()
            while c4.Length == 0 and os.clock() - c6 < 1.5 and b212 == c5 do
                task.wait(0.05)
            end
            if b212 ~= c5 then
                return false, "stopped"
            end
            if c4.Length == 0 then
                b212 = nil
                pcall(function()
                    c4:Stop(0)
                end)
                return false, "it did not load, probably not usable in this game"
            end
            b213[c1] = c4.Length
            local c7 = tonumber(c2.at) or c5.start
            if c7 > 0 then
                pcall(function()
                    c4.TimePosition = math.min(c7, c4.Length - 0.03)
                end)
            end
            return true, c4.Length
        end
        b8.PreviewState = function()
            local c1 = b212
            if not c1 then
                return nil
            end
            if not c1.track.IsPlaying then
                b212 = nil
                return nil
            end
            return {id = c1.id, time = c1.track.TimePosition, length = c1.track.Length, paused = c1.paused}
        end
        b8.PreviewSeek = function(c1)
            local c2 = b212
            if c2 and c2.track.Length > 0 then
                pcall(function()
                    c2.track.TimePosition = math.clamp(c1, 0, c2.track.Length - 0.03)
                end)
            end
        end
        b8.PreviewPause = function(c1)
            local c2 = b212
            if c2 then
                c2.paused = c1 and true or false
                pcall(c2.track.AdjustSpeed, c2.track, c2.paused and 0 or c2.speed)
            end
        end
        b8.PreviewLooped = function(c1)
            local c2 = b212
            if c2 then
                c2.looped = c1 and true or false
                c2.track.Looped = c2.looped
            end
        end
        a39(b1.Heartbeat:Connect(function()
            local c1 = b212
            if not c1 or c1.paused then
                return
            end
            local c2 = c1.track
            if not c2.IsPlaying then
                b212 = nil
                return
            end
            local c3 = c2.Length
            if c3 <= 0 then
                return
            end
            local c4 = c1.stop > 0 and c1.stop < c3 and c1.stop or c3
            local c5 = c2.TimePosition
            if c1.looped then
                if c5 >= c4 - 0.02 or c5 < c1.start - 0.05 then
                    pcall(function()
                        c2.TimePosition = math.min(c1.start, c3 - 0.03)
                    end)
                end
            elseif c5 >= c4 - c1.fadeOut * math.max(math.abs(c1.speed), 0.01) - 0.02 then
                b212 = nil
                pcall(function()
                    c2:Stop(c1.fadeOut > 0 and c1.fadeOut or 0.05)
                end)
            end
        end))
        b8.Preview = function(c1)
            return b8.PreviewPlay(c1, {})
        end
        b8.ScanLibrary = function()
            local c3 = 0
            local c2 = {}
            local c1 = {}
            local c4 = {
                [1] = game:GetService("ReplicatedStorage"),
                [2] = game:GetService("ReplicatedFirst"),
                [3] = game:GetService("StarterPlayer"),
                [4] = Players
            }
            local c7, c6, c5 = ipairs(c4)
            while true do
                local c9 = c7(c6, c5)
                if c8 == nil then
                    break
                end
                c5 = c8
                local c10, c11 = pcall(function()
                    return c9:GetDescendants()
                end)
                if c10 then
                    for c15, c16 in ipairs(c11) do
                        c3 = c3 + 1
                        if c3 % 500 == 0 then
                            task.wait()
                        end
                        if c16:IsA("Animation") and c16.Name ~= b6 then
                            local c17 = b9(c16.AnimationId)
                            if c17 and not c2[c17] then
                                c2[c17] = true
                                b11(c17, c16.Name)
                                local c19 = c16.Parent
                                local c18 = {}
                                while c19 and c19 ~= game do
                                    table.insert(c18, 1, c19.Name)
                                    c19 = c19.Parent
                                end
                                local c21 = nil
                                local c20 = nil
                                for c25 = 2, #c18 do
                                    if string.find(string.lower(c18[c25]), "anim", 1, true) and c18[c25 + 1] then
                                        c20 = c18[c25 + 1]
                                        c21 = table.concat(c18, " / ", c25 + 2)
                                        break
                                    end
                                end
                                if not c20 then
                                    if #c18 >= 3 then
                                        c21 = c18[#c18]
                                        c20 = c18[#c18 - 1]
                                    else
                                        c21 = ""
                                        c20 = c18[#c18] or "Other"
                                    end
                                end
                                table.insert(c1, {
                                    id = c17,
                                    cat = c20,
                                    label = (c21 ~= "" and c21 .. " / " or "") .. c16.Name,
                                    hay = string.lower(c16:GetFullName() .. " " .. c17)
                                })
                            end
                        end
                    end
                end
            end
            table.sort(c1, function(d1, d2)
                if d1.cat ~= d2.cat then
                    return string.lower(d1.cat) < string.lower(d2.cat)
                end
                return string.lower(d1.label) < string.lower(d2.label)
            end)
            return c1
        end
        b8.Unload = function()
            pcall(b8.UnbindGates)
            pcall(b133.Unbind)
            pcall(b133.Stop)
            pcall(b131, 0.1)
            pcall(b8.PreviewStop, 0)
            pcall(b181)
            b176()
            pcall(b8.ApplyLocomotion, true)
            if b179 and b179.h.Parent then
                b179.h.AutoRotate = b179.ar
            end
            for c4, c5 in pairs(b75) do
                for c9, c10 in ipairs(c5) do
                    c10:Disconnect()
                end
                b75[c4] = nil
            end
            b103.untilT = 0
            pcall(b107)
            b106(false)
            for c14, c15 in pairs(b203) do
                c15:Disconnect()
                b203[c14] = nil
            end
        end
        return b8
    end)()
    V.a274 = (function()
        local b1 = game:GetService("HttpService")
        local b2 = Color3.fromHex("FF4D4D")
        local b3 = Color3.new(0, 0, 0)
        local b4 = "getgenv().MOVESET_UNLOAD()"
        local b5 = {}
        local b6 = false
        local b7 = false
        local b8 = nil
        local b9 = {}
        local b10 = {
            USED = "This key was already used for an export",
            NOT_PREMIUM = "That key is not an export key",
            INVALID_KEY = "Key is invalid or expired",
            EXPIRED = "This key has expired",
            NO_KEY = "Paste your key first",
            PANDA_DOWN = "Key server is busy. Try again in a moment",
            BAD_MOVESET = "This moveset could not be read",
            TOO_BIG = "This moveset is too big to export",
            NO_API_KEY = "Export server is not set up. Tell the owner",
            SERVER_KEY = "Export server is not set up. Tell the owner",
            SERVER = "Export server error. Try again"
        }
        local function b11(c1, c2)
            for c6, c7 in ipairs({
                [1] = function()
                    return request
                end,
                [2] = function()
                    return http_request
                end,
                [3] = function()
                    return syn.request
                end,
                [4] = function()
                    return http.request
                end,
                [5] = function()
                    return fluxus.request
                end
            }) do
                local c8, c9 = pcall(c7)
                if c8 and type(c9) == "function" then
                    local c10, c11 = pcall(c9, {Url = c1, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = c2})
                    if c10 and type(c11) == "table" then
                        return tonumber(c11.StatusCode or c11.Status) or 0, tostring(c11.Body or c11.body or "")
                    end
                end
            end
            return nil, "NO_HTTP"
        end
        local function b12(c1)
            if typeof(setclipboard) ~= "function" then
                return false
            end
            return pcall(setclipboard, c1)
        end
        local function b13()
            local c1 = 0
            for c5, c6 in ipairs(V.a273.Current().moves) do
                if #c6.steps > 0 then
                    c1 = c1 + 1
                end
            end
            return c1
        end
        local b14 = a40("CanvasGroup", {
            Name = "ExportPanel",
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(130, 32),
            Size = UDim2.fromOffset(470, 326),
            GroupTransparency = 1,
            Visible = false,
            Active = true,
            ZIndex = 5,
            Parent = a84
        })
        a40("TextLabel", {
            Text = "EXPORT MOVESET",
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 7),
            Size = UDim2.fromOffset(330, 18),
            Parent = b14
        })
        a40("TextLabel", {
            Text = "Turn your moveset into one script you can run without the hub.",
            TextColor3 = a32.Muted,
            TextSize = 10,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(16, 25),
            Size = UDim2.fromOffset(340, 14),
            Parent = b14
        })
        a40("Frame", {
            BackgroundColor3 = a32.Stroke,
            Position = UDim2.fromOffset(0, 44),
            Size = UDim2.new(1, 0, 0, 1),
            Parent = b14
        })
        local b15 = a74(b14, "Close", function()
            b5.Hide()
        end)
        b15.AnchorPoint = Vector2.new(1, 0)
        b15.Position = UDim2.new(1, -16, 0, 10)
        b15.Size = UDim2.fromOffset(70, 24)
        local b16 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(0, 46),
            Size = UDim2.new(1, 0, 1, -46),
            ScrollBarThickness = 3,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = b14
        })
        a35(b16, "ScrollBarImageColor3")
        a40("UIListLayout", {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = b16})
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 16),
            PaddingRight = UDim.new(0, 16),
            PaddingTop = UDim.new(0, 12),
            PaddingBottom = UDim.new(0, 12),
            Parent = b16
        })
        local b17 = 0
        local function b18(c1, c2, c3)
            b17 = b17 + 1
            local c4 = a40("Frame", {
                BackgroundColor3 = a32.Panel,
                Size = UDim2.new(1, -6, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                LayoutOrder = b17,
                Parent = b16
            })
            local c5 = a49(c4, a32.Stroke)
            a40("UIPadding", {
                PaddingLeft = UDim.new(0, 10),
                PaddingRight = UDim.new(0, 10),
                PaddingTop = UDim.new(0, 10),
                PaddingBottom = UDim.new(0, 10),
                Parent = c4
            })
            a40("UIListLayout", {Padding = UDim.new(0, 7), SortOrder = Enum.SortOrder.LayoutOrder, Parent = c4})
            local c6 = a40("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 22), LayoutOrder = 0, Parent = c4})
            local c7 = a40("TextLabel", {
                Text = tostring(c1),
                Font = Enum.Font.GothamBold,
                TextSize = 11,
                TextColor3 = b3,
                BackgroundTransparency = 0,
                Size = UDim2.fromOffset(22, 22),
                Parent = c6
            })
            a40("TextLabel", {
                Text = c2,
                Font = Enum.Font.GothamBold,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = UDim2.fromOffset(32, 0),
                Size = UDim2.new(1, -32, 1, 0),
                Parent = c6
            })
            a40("TextLabel", {
                Text = c3,
                TextColor3 = a32.Muted,
                TextWrapped = true,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Top,
                AutomaticSize = Enum.AutomaticSize.Y,
                Size = UDim2.new(1, 0, 0, 0),
                LayoutOrder = 1,
                Parent = c4
            })
            local c8 = false
            local function c9()
                c7.BackgroundColor3 = c8 and a32.Ok or a32.Accent
                c7.Text = c8 and "\226\156\147" or tostring(c1)
                c5.Color = c8 and a32.Ok:Lerp(a32.Stroke, 0.55) or a32.Stroke
            end
            a34(c9)
            return c4, function(d1)
                c8 = d1 == true
                c9()
            end
        end
        local function b19(c1, c2, c3)
            local c4 = a40("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, c2), LayoutOrder = c3, Parent = c1})
            a40("UIListLayout", {
                FillDirection = Enum.FillDirection.Horizontal,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                Padding = UDim.new(0, 6),
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = c4
            })
            return c4
        end
        local function b20(c1, c2, c3, c4, c5, c6)
            local c7 = a74(c1, c2, c6)
            c7.Size = UDim2.fromOffset(c3, c4)
            c7.LayoutOrder = c5
            return c7
        end
        local function b21(c1, c2, c3, c4, c5, c6)
            local c7 = a40("TextButton", {
                Text = c2,
                Font = Enum.Font.GothamBold,
                TextSize = 11,
                TextColor3 = b3,
                Size = UDim2.fromOffset(c3, c4),
                LayoutOrder = c5,
                Parent = c1
            })
            local c8 = false
            local function c9(d1)
                a41(c7, d1 and 0.12 or 0, {BackgroundColor3 = c8 and a32.Accent:Lerp(Color3.new(1, 1, 1), 0.2) or a32.Accent})
            end
            a34(function()
                c9(false)
            end)
            c7.MouseEnter:Connect(function()
                c8 = true
                c9(true)
            end)
            c7.MouseLeave:Connect(function()
                c8 = false
                c9(true)
            end)
            a60.TouchLeave(c7, function()
                c8 = false
                c9(true)
            end)
            c7.MouseButton1Click:Connect(c6)
            return c7
        end
        local function b22(c1, c2, c3)
            local c4 = a40("TextLabel", {
                Text = c2,
                Font = Enum.Font.GothamBold,
                TextSize = 11,
                BackgroundColor3 = a32.Background,
                BackgroundTransparency = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                Size = UDim2.fromOffset(0, 26),
                LayoutOrder = c3,
                Parent = c1
            })
            a40("UIPadding", {PaddingLeft = UDim.new(0, 12), PaddingRight = UDim.new(0, 12), Parent = c4})
            a35(a49(c4, a32.Accent), "Color")
            a35(c4, "TextColor3")
            return c4
        end
        local b24 = b18(1, "BUILD YOUR MOVESET", "Make your moves in the Moveset tab and test them. The moveset that is selected there is the one that gets exported.")
        local b25 = b19(b23, 26, 2)
        local b26 = a40("TextLabel", {
            Font = Enum.Font.GothamBold,
            TextSize = 10,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Size = UDim2.fromOffset(248, 26),
            LayoutOrder = 1,
            Parent = b25
        })
        b20(b25, "Back to builder", 140, 26, 2, function()
            b5.Hide()
            V.a198("Moveset")
        end)
        table.insert(b9, function()
            local c1 = b13()
            b26.Text = "SELECTED:  " .. string.upper(V.a273.Current().name) .. "  \194\183  " .. c1 .. (c1 == 1 and " MOVE" or " MOVES")
            b26.TextColor3 = c1 > 0 and a32.Text or a32.Warn
            b24(c1 > 0)
        end)
        local b28 = b18(2, "GET AN EXPORT KEY", "Join the Discord and open a ticket to buy keys. Every purchase gives you 3 keys, and 1 key = 1 export. You can also win keys for free in our Discord giveaways.")
        local b29 = b19(b27, 26, 2)
        local b30 = a5.ExportPrices or {}
        for b34, b35 in ipairs(b30) do
            b22(b29, b35, b34 * 2 - 1)
            if b34 < #b30 then
                a40("TextLabel", {
                    Text = "OR",
                    Font = Enum.Font.GothamBold,
                    TextSize = 10,
                    TextColor3 = a32.Muted,
                    AutomaticSize = Enum.AutomaticSize.X,
                    Size = UDim2.fromOffset(0, 26),
                    LayoutOrder = b34 * 2,
                    Parent = b29
                })
            end
        end
        local b36 = b19(b27, 26, 3)
        b21(b36, "COPY DISCORD LINK", 150, 26, 1, function()
            if b12(a5.DiscordLink) then
                a67("Discord", "Invite copied. Paste it in your browser and open a ticket.", 4)
            else
                a67("Discord", a5.DiscordLink, 8)
            end
            b28(true)
        end)
        a40("TextLabel", {
            Text = string.gsub(a5.DiscordLink, "^https?://", ""),
            TextColor3 = a32.Muted,
            TextSize = 10,
            TextXAlignment = Enum.TextXAlignment.Left,
            Size = UDim2.fromOffset(230, 26),
            LayoutOrder = 2,
            Parent = b36
        })
        local b38 = b18(3, "PASTE YOUR KEY AND EXPORT", "Paste the key you got in the Discord and press EXPORT. The key is used up after one export, so export the right moveset.")
        local b39 = b19(b37, 30, 2)
        local b40 = a40("Frame", {
            BackgroundColor3 = a32.Background,
            Size = UDim2.fromOffset(282, 30),
            LayoutOrder = 1,
            Parent = b39
        })
        local b41 = a49(b40, a32.Stroke)
        local b42 = a40("TextBox", {
            BackgroundTransparency = 1,
            Font = Enum.Font.Code,
            TextSize = 12,
            PlaceholderText = "PASTE YOUR EXPORT KEY",
            PlaceholderColor3 = a32.Muted,
            ClearTextOnFocus = false,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Position = UDim2.fromOffset(10, 0),
            Size = UDim2.new(1, -20, 1, 0),
            Parent = b40
        })
        local b43 = b21(b39, "EXPORT", 108, 30, 2, function()
            b5.Export()
        end)
        local b44 = b19(b37, 14, 3)
        local b45 = a40("Frame", {BackgroundColor3 = a32.Muted, Size = UDim2.fromOffset(6, 6), LayoutOrder = 1, Parent = b44})
        local b46 = a40("TextLabel", {
            Text = "WAITING FOR KEY",
            Font = Enum.Font.GothamBold,
            TextSize = 10,
            TextColor3 = a32.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Size = UDim2.fromOffset(380, 14),
            LayoutOrder = 2,
            Parent = b44
        })
        local function b47(c1, c2)
            local c3 = a32.Muted
            if c2 == "ok" then
                c3 = a32.Ok
            elseif c2 == "err" then
                c3 = b2
            elseif c2 == "warn" then
                c3 = a32.Warn
            elseif c2 == "busy" then
                c3 = a32.Accent
            end
            b46.Text = string.upper(c1)
            b46.TextColor3 = c2 == "idle" and a32.Muted or a32.Text
            a41(b45, 0.15, {BackgroundColor3 = c3})
        end
        b42.Focused:Connect(function()
            a41(b41, 0.12, {Color = a32.Accent})
        end)
        b42.FocusLost:Connect(function(c1)
            a41(b41, 0.12, {Color = a32.Stroke})
            if c1 then
                b5.Export()
            end
        end)
        local b49 = b18(4, "RUN YOUR SCRIPT", "The script is copied to your clipboard and saved in your executor's workspace folder under RYOIKI Exports. Run it in JJS like any script. Don't run it while the hub's Moveset tab is on. To turn it off, run the stop code.")
        local b50 = b19(b48, 26, 2)
        b20(b50, "Copy script again", 150, 26, 1, function()
            if not b8 then
                a67("Export", "Export a moveset first (step 3).", 3)
            elseif b12(b8) then
                a67("Export", "Script copied again.", 3)
            else
                a67("Export", "This executor cannot copy. Use the saved file.", 4)
            end
        end)
        b20(b50, "Copy stop code", 130, 26, 2, function()
            if b12(b4) then
                a67("Export", "Stop code copied. Run it to turn the exported script off.", 4)
            else
                a67("Export", b4, 8)
            end
        end)
        b5.Export = function()
            if b7 then
                return
            end
            local c1 = a7(b42.Text)
            if c1 == "" then
                b47("Paste your key first", "warn")
                b42:CaptureFocus()
                return
            end
            if string.find(c1, "^https?://") then
                b47("That is a link, not a key", "warn")
                return
            end
            if b13() == 0 then
                b47("This moveset has no moves yet (step 1)", "warn")
                return
            end
            local c2 = V.a273.Current().name
            b7 = true
            b47("Exporting " .. c2 .. "...", "busy")
            task.spawn(function()
                local d1 = 0
                while b7 and a37 do
                    b43.Text = "EXPORTING" .. string.rep(".", d1 % 4)
                    d1 = d1 + 1
                    task.wait(0.3)
                end
                b43.Text = "EXPORT"
            end)
            task.spawn(function()
                local d1 = b1:JSONEncode({key = c1, hwid = a20 and a20.HWID or "", moveset = V.a273.Export(), client = a5.Version})
                local d3 = b11(a5.ExportUrl, d1)
                b7 = false
                if d2 == nil then
                    b47("This executor cannot send web requests", "err")
                    return
                end
                if d2 ~= 200 then
                    local d4 = nil
                    pcall(function()
                        d4 = b1:JSONDecode(d3).error
                    end)
                    b47(b10[d4] or "Export failed (" .. tostring(d4 or d2) .. ")", "err")
                    return
                end
                b8 = d3
                local d5 = nil
                if typeof(writefile) == "function" then
                    pcall(function()
                        local e1 = "RYOIKI Exports"
                        if typeof(makefolder) == "function" and (typeof(isfolder) ~= "function" or not isfolder(e1)) then
                            makefolder(e1)
                        end
                        local e2 = string.gsub(c2, "[^%w%-_ ]", "")
                        local e3 = e1 .. "/" .. (e2 ~= "" and e2 or "Moveset") .. ".lua"
                        writefile(e3, d3)
                        d5 = e3
                    end)
                end
                local d6 = b12(d3)
                b42.Text = ""
                b38(true)
                b49(true)
                if d6 and d5 then
                    b47("Done! Copied and saved to " .. d5, "ok")
                elseif d6 then
                    b47("Done! Script copied to your clipboard", "ok")
                elseif d5 then
                    b47("Done! Saved to " .. d5, "ok")
                else
                    b47("Exported, but this executor cannot copy or save", "warn")
                end
                a67("Export", c2 .. " exported. Your key is used now.", 5)
            end)
        end
        b5.Hide = function()
            if not b6 then
                return
            end
            b6 = false
            local c1 = a41(b14, 0.15, {GroupTransparency = 1})
            c1.Completed:Once(function()
                if not b6 then
                    b14.Visible = false
                end
            end)
        end
        b5.Open = function()
            if b6 then
                return
            end
            a132()
            b6 = true
            for c4, c5 in ipairs(b9) do
                pcall(c5)
            end
            b14.Position = UDim2.fromOffset(138, 32)
            b14.GroupTransparency = 1
            b14.Visible = true
            a41(b14, 0.2, {Position = UDim2.fromOffset(130, 32), GroupTransparency = 0})
            a72("Export moveset", "ok")
        end
        b5.Toggle = function()
            if b6 then
                b5.Hide()
            else
                b5.Open()
            end
        end
        a100 = b5.Hide
        return b5
    end)();
    (function()
        local T1_0 = {}
        local b1 = V.a197("Moveset")
        local b2 = game:GetService("RunService")
        local b3 = game:GetService("TextService")
        local b4 = Color3.fromHex("FF4D4D")
        local b5 = {
            One = "1",
            Two = "2",
            Three = "3",
            Four = "4",
            Five = "5",
            Six = "6",
            Seven = "7",
            Eight = "8",
            Nine = "9",
            Zero = "0"
        }
        local b6 = {
            anim = Color3.fromHex("A855F7"),
            wait = Color3.fromHex("FFD60A"),
            tp = Color3.fromHex("00E5FF"),
            vel = Color3.fromHex("00E5FF"),
            dash = Color3.fromHex("00E5FF"),
            curve = Color3.fromHex("00E5FF"),
            face = Color3.fromHex("00E5FF"),
            turn = Color3.fromHex("00E5FF"),
            key = Color3.fromHex("FFD60A"),
            stun = Color3.fromHex("FF4D4D"),
            ["if"] = Color3.fromHex("3DDC84"),
            tag = Color3.fromHex("3DDC84"),
            ["else"] = Color3.fromHex("3DDC84"),
            ["end"] = Color3.fromHex("3DDC84"),
            branch = Color3.fromHex("5AC8FA"),
            switch = Color3.fromHex("5AC8FA"),
            ifbr = Color3.fromHex("5AC8FA"),
            stop = Color3.fromHex("FF9F0A"),
            shake = Color3.fromHex("FF2D55"),
            item = Color3.fromHex("3DDC84")
        }
        local b7 = {
            anim = "Plays an animation on you. Layer: when two anims play at once the higher one wins (Core lowest, Action4 top); lower it if this anim breaks the game's own. Weight: how strongly it blends in. Same layer = replaces this move's previous anim, other layer = plays on top. Looped: set Loop for, or it stops when the move's steps finish.",
            wait = "Pauses the move for this many seconds before the next step.",
            tp = "Teleports you. Smoothness optionally eases the travel instead of snapping instantly. Choose a preset or Custom to enter seconds. Facing = from where you look, World = map axes, Target = in front of the nearest / hit enemy, Behind target = behind them (Z = how far), Cursor = to your mouse (up to the range). Target modes face the enemy.",
            vel = "Launches you. Straight keeps a fixed speed (or speeds up / slows down); Curve smoothly changes vertical speed from Y start to Y end, for jumps and slams. Smoothness eases into the velocity: Off is instant, then Light, Medium and Strong take progressively longer. Target / Away from target aims at the enemy and follows them. Steer aims it with the camera, cursor, move keys or Character Aim (the direction your head / upper body is facing). Smoothness presets remain available, or choose Custom and enter seconds.",
            dash = "A quick dash. Pick the direction (move keys, forward, back, left, right, camera, cursor, or to / away from the enemy), the speed and how long. Smoothness eases into the dash speed and turn. Choose Off / Light / Medium / Strong, or Custom to enter the duration in seconds. Speed x length is roughly how far you go. Add an ANIM step for its animation.",
            curve = "A controlled jump arc: vertical speed changes from Y start to Y end over the duration, so you can rise and smoothly descend while keeping horizontal velocity. Smoothness blends into the requested velocity; choose Custom to enter seconds. Aim / steer can use the camera, cursor, move keys or Character Aim (your head / upper-body direction). Vertical curve controls the shape of the arc. Positive Y is up, negative Y is down.",
            key = "Presses a key for you (like R, 1 or M1), uses a game move (1, 2, 3, 4, G), or starts another move of this set by its name.",
            turn = "Rotates you over time. Smoothness eases the rotation from start to finish; Custom lets you enter the duration in seconds. Spin = left / right only (360 = one full spin). Custom = any direction, up / down and roll too. Stay = how long you keep that pose after. Add a WAIT if the next step should wait for it.",
            face = "Turns you toward the nearest / hit target, your cursor or where the camera looks. Smoothness softens the rotation response; Custom lets you enter the duration in seconds. Target prediction leads moving targets by their velocity for the chosen seconds. 360 modes also tilt you up and down. Keep facing > 0 keeps tracking for that long.",
            stun = "Locks your own controls for a moment: movement, jump, turning, M1, or freezes you in place.",
            stop = "Stops every animation this move has played so far.",
            item = "Gets an item for you with the same grabber as the Item Menu. Type the item name like the Item Menu shows it. Wait until you have it = the next step only runs after you got it (or it failed).",
            shake = "Shakes your camera (only you see it). Strength 1 = normal, 3 = a big hit, it fades out over the seconds you set. The next step runs right away, it does not wait.",
            ["if"] = "Checks something (Tier 1 hit = normal hit: damage / stun, Tier 2 = knockback / ragdoll). True: runs the steps under it, or a branch (If true: go to). False: jumps to its ELSE / END, runs a branch, stops the move or skips steps.",
            ["else"] = "The steps between ELSE and END only run when the IF above was false.",
            ["end"] = "Closes the IF block above it.",
            tag = "A named counter. Add to it or set it here, then check it with IF Tag at least. Good for combo chains. Resets when you respawn.",
            branch = "Runs the steps of another branch of this move, then comes back here (or ends the move there).",
            switch = "Runs a branch picked by how you were moving: standing, walking, running, dashing, in the air or blocking. Move start = just before you pressed the key (works with M1s), Right now = this moment.",
            ifbr = "Checks something, then runs one branch if true and another if false (- = do nothing). Then comes back here, or ends the move there."
        }
        local b8 = {
            ["Hit someone"] = "Range (0 = move's)",
            ["Hit someone (Tier 1)"] = "Range (0 = move's)",
            ["Hit someone (Tier 2)"] = "Range (0 = move's)",
            ["Target in range"] = "Range (0 = 15)",
            ["HP above %"] = "HP above (%)",
            ["HP below %"] = "HP below (%)",
            ["Tag at least"] = "At least",
            ["Walking"] = "Run speed (0 = 20)",
            ["Running"] = "Run speed (0 = 20)",
            ["Dashing"] = "Dash speed (0 = 35)"
        }
        local b9 = {[1] = "idIdle", [2] = "idWalk", [3] = "idRun", [4] = "idDash", [5] = "idAir", [6] = "idBlock"}
        local b10 = {}
        for b14, b15 in ipairs(b9) do
            b10[b15] = true
        end
        local b16 = {
            speed = 0.1,
            weight = 0.05,
            loopFor = 0.5,
            fade = 0.05,
            fadeOut = 0.05,
            time = 0.05,
            start = 0.1,
            x = 1,
            y = 1,
            yEnd = 5,
            z = 1,
            range = 5,
            prediction = 0.05,
            wait = 0.05,
            value = 1,
            skip = 1,
            hold = 0.05,
            smoothTime = 0.05,
            turn = 0.05,
            comboLen = 1,
            comboReset = 0.1,
            hitRange = 5,
            yaw = 15,
            pitch = 15,
            roll = 15,
            yStart = 5,
            curveTime = 0.05,
            stopNear = 1,
            up = 5,
            keep = 0.05,
            strength = 0.25
        }
        local b17 = {vel = {x = 5, y = 5, z = 5}, dash = {speed = 5}}
        local b18 = {
            hold = true,
            loopFor = true,
            fade = true,
            fadeOut = true,
            time = true,
            start = true,
            range = true,
            prediction = true,
            wait = true,
            comboReset = true,
            hitRange = true,
            curveTime = true,
            stopNear = true
        }
        local b19 = {
            ["In air"] = true,
            ["On ground"] = true,
            ["Idle"] = true,
            ["Walking"] = true,
            ["Running"] = true,
            ["Dashing"] = true,
            ["Blocking"] = true,
            ["Moving"] = true
        }
        local b20 = {
            ["Hit someone"] = true,
            ["Hit someone (Tier 1)"] = true,
            ["Hit someone (Tier 2)"] = true,
            ["Target in range"] = true,
            ["HP above %"] = true,
            ["HP below %"] = true
        }
        local b21 = {
            ["Key + used"] = {
                [1] = "key + game move plays",
                [2] = "Starts together with the game's own move: you press the key and the game's move goes off. It has to be LINKED to that game move once (press LINK, or just use the move)."
            },
            ["On animation"] = {
                [1] = "no key needed",
                [2] = "Starts by itself whenever the game plays the animation in the box next to it. No key needed."
            },
            ["Key only"] = {
                [1] = "fires right away",
                [2] = "Starts the moment you press the key. The game's own move still happens too (use REPLACE to block it)."
            }
        }
        local b22 = {
            ["Key + used"] = {[1] = "GAME MOVE", [2] = "WITH THE GAME MOVE"},
            ["Key only"] = {[1] = "KEY PRESS", [2] = "ON KEY PRESS"},
            ["On animation"] = {[1] = "GAME ANIM", [2] = "WHEN A GAME ANIM PLAYS"}
        }
        local function b23(c1)
            if c1 == "MouseButton1" then
                return "M1"
            elseif c1 == "MouseButton2" then
                return "M2"
            end
            return b5[c1] or string.upper(c1)
        end
        local function b24(c1)
            c1 = tonumber(c1) or 0
            if c1 == math.floor(c1) then
                return tostring(c1)
            end
            return string.gsub(string.format("%.2f", c1), "0+$", "")
        end
        local function b25()
            return UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
        end
        local function b26()
            return UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
        end
        local function b27(c1, c2, c3)
            return b3:GetTextSize(c1, c2, c3, Vector2.new(2000, 200)).X
        end
        local b29 = nil
        local b28 = nil
        local b30 = false
        local b31 = Vector2.zero
        local b33 = nil
        local b32 = nil
        local function b34()
            return not (b32 and b32())
        end
        local function b35()
            return b34() and not (b33 and b33())
        end
        local b37 = nil
        local b36 = nil
        local b38 = a40("TextLabel", {
            BackgroundColor3 = a32.Panel,
            BackgroundTransparency = 0,
            TextSize = 10,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Visible = false,
            ZIndex = 80,
            Parent = a60.Screen
        })
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 8),
            PaddingTop = UDim.new(0, 6),
            Parent = b38
        })
        a35(a49(b38, a32.Accent), "Color")
        local b40 = 0
        local b39 = 0
        local b42 = 0
        local b41 = nil
        local b43 = nil
        b36 = function()
            b41 = nil
            b42 = b42 + 1
            b38.Visible = false
            if b43 then
                b43:Destroy()
                b43 = nil
            end
        end
        local function b44()
            local c2 = a60.Screen.AbsoluteSize
            local c1 = a60.Screen.AbsolutePosition
            local c3 = b31.X - c1.X + 12
            local c4 = b31.Y - c1.Y + 18
            if c3 + b39 > c2.X - 4 then
                c3 = c2.X - 4 - b39
            end
            if c4 + b40 > c2.Y - 4 then
                c4 = b31.Y - c1.Y - b40 - 8
            end
            b38.Position = UDim2.fromOffset(math.max(4, c3), math.max(4, c4))
        end
        local function b45(c1, c2, c3)
            if not a37 or not a79 or not c1.Parent then
                return false
            end
            if b28 or b30 or c3 and not c3() then
                return false
            end
            local c4 = c2
            if type(c4) == "function" then
                local c5, c6 = pcall(c4)
                c4 = c5 and c6 or nil
            end
            if type(c4) ~= "string" or c4 == "" then
                return false
            end
            local c7 = b3:GetTextSize(c4, 10, Enum.Font.Gotham, Vector2.new(230, 1000))
            b40 = math.ceil(c7.Y) + 12
            b39 = math.ceil(c7.X) + 18
            b38.Text = c4
            b38.Size = UDim2.fromOffset(b39, b40)
            b44()
            b38.Visible = true
            return true
        end
        b37 = function(c1, c2, c3)
            c1.MouseEnter:Connect(function()
                if a60.IsMobile() then
                    return
                end
                b38.Visible = false
                b41 = c1
                b42 = b42 + 1
                local d1 = b42
                task.delay(0.45, function()
                    if d1 == b42 and b41 == c1 then
                        b45(c1, c2, c3)
                    end
                end)
            end)
            c1.MouseLeave:Connect(function()
                if b41 == c1 and not b43 then
                    b36()
                end
            end)
            a60.Hold(c1, 0.5, function()
                b36()
                b41 = c1
                if b45(c1, c2, c3) then
                    b43 = a40("TextButton", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 79, Parent = a60.Screen})
                end
            end)
            return c1
        end
        a39(UserInputService.InputChanged:Connect(function(c1)
            local c2 = c1.UserInputType
            if c2 == Enum.UserInputType.MouseMovement or c2 == Enum.UserInputType.Touch then
                b31 = a60.ScreenPos(c1)
                if b38.Visible and not b43 then
                    if b41 and b41.Parent then
                        b44()
                    else
                        b36()
                    end
                end
            end
        end))
        a39(UserInputService.InputBegan:Connect(function(c1)
            local c2 = c1.UserInputType
            if c2 == Enum.UserInputType.Touch or c2 == Enum.UserInputType.MouseButton1 or c2 == Enum.UserInputType.MouseButton2 then
                b31 = a60.ScreenPos(c1)
            end
            if b41 or b38.Visible then
                b36()
            end
        end))
        local function b46()
            if b28 then
                b28:Destroy()
                b28 = nil
            end
            if b29 then
                b29:Destroy()
                b29 = nil
            end
        end
        local function b47(c1, c2)
            b46()
            b36()
            c2 = c2 or {}
            local c4 = 0
            local c3 = c2.width or 0
            local c5 = a60.IsMobile() and 30 or 22
            for c9, c10 in ipairs(c1) do
                if c10 == "-" then
                    c4 = c4 + 7
                else
                    c4 = c4 + c5
                    local c11 = b27(c10.text, 10, Enum.Font.GothamBold) + 30
                    if c10.hint then
                        c11 = c11 + b27(c10.hint, 9, Enum.Font.Gotham) + 18
                    end
                    c3 = math.max(c3, c11)
                end
            end
            local c12 = a60.IsMobile() and math.max(120, a60.Size().Y - a60.Inset() - 24) or 238
            local c13 = math.min(c4, c12) + 8
            local c15 = a60.Screen.AbsoluteSize
            local c14 = a60.Screen.AbsolutePosition
            local c17 = nil
            local c16 = nil
            local c18 = c2.anchor
            if c18 then
                c3 = math.max(c3, c18.AbsoluteSize.X)
                c16 = c18.AbsolutePosition.X - c14.X
                c17 = c18.AbsolutePosition.Y + c18.AbsoluteSize.Y + 2 - c14.Y
                if c17 + c13 > c15.Y - 4 then
                    c17 = c18.AbsolutePosition.Y - c14.Y - c13 - 2
                end
            else
                c16 = b31.X - c14.X + 2
                c17 = b31.Y - c14.Y + 2
                if c17 + c13 > c15.Y - 4 then
                    c17 = b31.Y - c14.Y - c13 - 2
                end
            end
            c3 = math.clamp(math.ceil(c3), 120, 300)
            c16 = math.clamp(c16, 4, math.max(4, c15.X - c3 - 4))
            c17 = math.clamp(c17, 4, math.max(4, c15.Y - c13 - 4))
            local c19 = a40("TextButton", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 90, Parent = a60.Screen})
            c19.MouseButton1Down:Connect(b46)
            c19.MouseButton2Down:Connect(b46)
            b29 = c19
            local c20 = a40("ScrollingFrame", {
                BackgroundColor3 = a32.Panel,
                Position = UDim2.fromOffset(c16, c17),
                Size = UDim2.fromOffset(c3, c13),
                CanvasSize = UDim2.fromOffset(0, c4 + 8),
                ScrollBarThickness = c4 > c12 and 3 or 0,
                ScrollBarImageColor3 = a32.Accent,
                ScrollingDirection = Enum.ScrollingDirection.Y,
                ZIndex = 91,
                Parent = a60.Screen
            })
            a49(c20, a32.Accent)
            b28 = c20
            local c22 = nil
            local c21 = 4
            local c25, c24, c23 = ipairs(c1)
            while true do
                local c27 = c25(c24, c23)
                if c26 == nil then
                    break
                end
                c23 = c26
                if c27 == "-" then
                    a40("Frame", {
                        BackgroundColor3 = a32.Stroke,
                        Position = UDim2.fromOffset(8, c21 + 3),
                        Size = UDim2.new(1, -16, 0, 1),
                        Parent = c20
                    })
                    c21 = c21 + 7
                else
                    local c28 = a32.Text
                    if c27.disabled then
                        c28 = a32.Muted
                    elseif c27.danger then
                        c28 = b4
                    elseif c27.on then
                        c28 = a32.Accent
                    end
                    local c29 = a40("TextButton", {
                        Text = c27.text,
                        Font = Enum.Font.GothamBold,
                        TextSize = 10,
                        TextColor3 = c28,
                        TextTransparency = c27.disabled and 0.4 or 0,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        BackgroundColor3 = a32.Lift,
                        BackgroundTransparency = 1,
                        Position = UDim2.fromOffset(0, c21),
                        Size = UDim2.new(1, 0, 0, c5),
                        Parent = c20
                    })
                    a40("UIPadding", {PaddingLeft = UDim.new(0, 12), PaddingRight = UDim.new(0, 10), Parent = c29})
                    if c27.on then
                        c22 = c21
                        a40("Frame", {
                            BackgroundColor3 = a32.Accent,
                            Position = UDim2.fromOffset(-12, (c5 - 14) / 2),
                            Size = UDim2.fromOffset(2, 14),
                            Parent = c29
                        })
                    end
                    if c27.hint then
                        a40("TextLabel", {
                            Text = c27.hint,
                            TextSize = 9,
                            TextColor3 = a32.Muted,
                            TextXAlignment = Enum.TextXAlignment.Right,
                            Size = UDim2.fromScale(1, 1),
                            Parent = c29
                        })
                    end
                    if not c27.disabled then
                        local c30 = false
                        c29.MouseEnter:Connect(function()
                            c29.BackgroundTransparency = 0
                        end)
                        c29.MouseLeave:Connect(function()
                            c29.BackgroundTransparency = 1
                        end)
                        c29.MouseButton1Click:Connect(function()
                            if c27.confirm and not c30 then
                                c30 = true
                                c29.Text = c27.confirm
                                c29.TextColor3 = a32.Warn
                                return
                            end
                            b46()
                            a73("Moveset", c27.fn)
                        end)
                    end
                    c21 = c21 + c5
                end
            end
            if c22 and c4 > c12 then
                c20.CanvasPosition = Vector2.new(0, math.max(0, c22 - c12 / 2))
            end
        end
        local b49 = 0
        local b48 = false
        local function b50()
            b48 = true
            b49 = b49 + 1
            local c1 = b49
            task.delay(0.4, function()
                if c1 == b49 and b48 then
                    b48 = false
                    V.a273.Save()
                end
            end)
        end
        local function b51()
            if b48 then
                b48 = false
                b49 = b49 + 1
                V.a273.Save()
            end
        end
        local function b52(c1, c2, c3, c4, c5, c6, c7)
            local c8 = a40("TextButton", {
                Text = c2,
                Font = Enum.Font.GothamBold,
                TextSize = 9,
                BackgroundColor3 = a32.Background,
                Position = UDim2.fromOffset(c3, c4),
                Size = UDim2.fromOffset(c5, c6),
                Parent = c1
            })
            local c9 = a49(c8, a32.Stroke)
            c8.MouseEnter:Connect(function()
                a41(c8, 0.1, {BackgroundColor3 = a32.Accent, TextColor3 = Color3.new(0, 0, 0)})
                a41(c9, 0.1, {Color = a32.Accent})
            end)
            c8.MouseLeave:Connect(function()
                a41(c8, 0.1, {BackgroundColor3 = a32.Background, TextColor3 = a32.Text})
                a41(c9, 0.1, {Color = a32.Stroke})
            end)
            a60.TouchLeave(c8, function()
                a41(c8, 0.1, {BackgroundColor3 = a32.Background, TextColor3 = a32.Text})
                a41(c9, 0.1, {Color = a32.Stroke})
            end)
            c8.MouseButton1Click:Connect(function()
                a73("Moveset", c7)
            end)
            return c8
        end
        local function b53(c1, c2, c3, c4, c5, c6, c7)
            local c8 = a40("Frame", {
                BackgroundColor3 = a32.Panel,
                Position = UDim2.fromOffset(c3, c4),
                Size = UDim2.fromOffset(c5, c6),
                Parent = c1
            })
            local c9 = a49(c8, a32.Stroke)
            local c10 = a40("TextBox", {
                BackgroundTransparency = 1,
                PlaceholderText = c2,
                PlaceholderColor3 = a32.Muted,
                ClearTextOnFocus = false,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Size = UDim2.fromScale(1, 1),
                Parent = c8
            })
            a40("UIPadding", {PaddingLeft = UDim.new(0, c7 or 6), PaddingRight = UDim.new(0, c7 or 6), Parent = c10})
            c10.Focused:Connect(function()
                a41(c9, 0.12, {Color = a32.Accent})
            end)
            c10.FocusLost:Connect(function()
                a41(c9, 0.12, {Color = a32.Stroke})
            end)
            return c10, c8
        end
        local function b54(c1)
            c1:CaptureFocus()
            c1.SelectionStart = 1
            c1.CursorPosition = #c1.Text + 1
        end
        local function b55(c1, c2, c3, c4, c5, c6, c7)
            return a40("TextLabel", {
                Text = c2,
                Font = Enum.Font.GothamBold,
                TextSize = 10,
                TextColor3 = c7 and a32.Muted or a32.Text,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(c3, c4),
                Size = UDim2.fromOffset(c5, c6),
                Parent = c1
            })
        end
        local function b56(c1, c2, c3, c4, c5)
            local c6 = a40("ScrollingFrame", {
                BackgroundColor3 = a32.Panel,
                Position = UDim2.fromOffset(c2, c3),
                Size = UDim2.fromOffset(c4, c5),
                ScrollBarThickness = 3,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                CanvasSize = UDim2.new(),
                Parent = c1
            })
            a49(c6, a32.Stroke)
            a35(c6, "ScrollBarImageColor3")
            a40("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder, Parent = c6})
            a40("UIPadding", {
                PaddingLeft = UDim.new(0, 4),
                PaddingRight = UDim.new(0, 7),
                PaddingTop = UDim.new(0, 4),
                PaddingBottom = UDim.new(0, 4),
                Parent = c6
            })
            return c6
        end
        local function b57(c1)
            for c5, c6 in ipairs(c1:GetChildren()) do
                if c6:IsA("Frame") or c6:IsA("TextLabel") then
                    c6:Destroy()
                end
            end
        end
        local function b58(c1, c2)
            a40("TextLabel", {
                Text = c2,
                TextSize = 10,
                TextColor3 = a32.Muted,
                TextWrapped = true,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Top,
                Size = UDim2.new(1, 0, 0, 40),
                Parent = c1
            })
        end
        local function b59(c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12)
            local c13 = c5 and a32.Lift or a32.Background
            local c14 = a40("Frame", {BackgroundColor3 = c13, Size = UDim2.new(1, 0, 0, 30), LayoutOrder = c2, Parent = c1})
            local c15 = a49(c14, c5 and a32.Accent or a32.Stroke)
            local c16 = #c6 * 34
            local c17 = c11 and 0 or c16
            local c18 = 6
            if c8 then
                a40("Frame", {BackgroundColor3 = c8, Size = UDim2.new(0, 3, 1, 0), Parent = c14})
                c18 = 10
            end
            local c19 = nil
            if c7 or c9 then
                c19 = a40("TextButton", {BackgroundTransparency = 1, Size = UDim2.new(1, -c17, 1, 0), ZIndex = 2, Parent = c14})
                local c20 = false
                if c7 then
                    c19.MouseButton1Click:Connect(function()
                        if c20 then
                            c20 = false
                            return
                        end
                        a73("Moveset", c7)
                    end)
                end
                if c9 then
                    c19.MouseButton2Click:Connect(function()
                        a73("Moveset", c9)
                    end)
                    if not c12 then
                        c19.InputBegan:Connect(function()
                            c20 = false
                        end)
                        a60.Hold(c19, 0.45, function()
                            c20 = true
                            a73("Moveset", c9)
                        end)
                    end
                end
            end
            local c21 = a40("TextLabel", {
                Text = c3,
                Font = Enum.Font.GothamBold,
                TextSize = 10,
                TextColor3 = c5 and a32.Accent or c10 and a32.Muted or a32.Text,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(c18, 3),
                Size = UDim2.new(1, -(c17 + c18 + 4), 0, 13),
                Parent = c14
            })
            local c22 = a40("TextLabel", {
                Text = c4,
                TextSize = 9,
                TextColor3 = a32.Muted,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                Position = UDim2.fromOffset(c18, 16),
                Size = UDim2.new(1, -(c17 + c18 + 4), 0, 11),
                Parent = c14
            })
            if #c6 > 0 then
                local c23 = a40("Frame", {
                    BackgroundColor3 = c13,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -1, 0.5, 0),
                    Size = UDim2.fromOffset(c16 + 3, 28),
                    Visible = not c11,
                    ZIndex = 3,
                    Parent = c14
                })
                local c24 = 0
                local function c25(d1)
                    c24 = math.max(0, c24 + d1)
                    task.defer(function()
                        if c23.Parent then
                            c23.Visible = c24 > 0 and not b30 and not a60.IsMobile()
                        end
                    end)
                end
                for c29, c30 in ipairs(c6) do
                    local c31 = b52(c23, c30[1], 0, 0, 30, 20, c30[2])
                    c31.AnchorPoint = Vector2.new(1, 0.5)
                    c31.Position = UDim2.new(1, -3 - (#c6 - c29) * 34, 0.5, 0)
                    if c30[3] then
                        b37(c31, c30[3])
                    end
                    if c11 then
                        c31.MouseEnter:Connect(function()
                            c25(1)
                        end)
                        c31.MouseLeave:Connect(function()
                            c25(-1)
                        end)
                    end
                end
                if c11 then
                    for c35, c36 in ipairs({[1] = c14, [2] = c19}) do
                        c36.MouseEnter:Connect(function()
                            c25(1)
                        end)
                        c36.MouseLeave:Connect(function()
                            c25(-1)
                        end)
                    end
                end
            end
            return c14, c21, c22, c15, c19
        end
        local b60 = 1
        local b61 = nil
        local b62 = {}
        local b63 = 0
        local b64 = {}
        local function b65()
            local c1 = V.a273.Current().moves
            b60 = math.clamp(b60, 1, #c1)
            return c1[b60]
        end
        local function b66()
            local c1 = b65()
            if b63 > 0 then
                local c2 = c1.branches[b63]
                if c2 then
                    return c2.steps, c2
                end
                b63 = 0
            end
            return c1.steps, nil
        end
        local b73 = nil
        local b72 = nil
        local b71 = nil
        local b70 = nil
        local b69 = nil
        local b68 = nil
        local b67 = nil
        local b75 = nil
        local b74 = nil
        local b79 = nil
        local b78 = nil
        local b77 = nil
        local b76 = nil
        local b80 = {}
        local b81 = false
        local function b82()
            local c1 = b65()
            if V.a273.IsRunning(c1) then
                V.a273.StopAll()
                a72("Stopped " .. c1.name, "warn")
                return
            end
            if #c1.steps == 0 then
                a67("Moveset", "Add some steps first.", 3)
                return
            end
            if V.a273.Test(c1) then
                a72("Testing " .. c1.name, "accent")
            else
                a67("Moveset", "No character right now.", 2)
            end
        end
        local b83 = false
        local b84 = b53(b1, "MOVESET NAME", 38, 10, 124, 24)
        b37(b84, "Name of this moveset. Click to rename it.", b34)
        b37(b52(b1, "<", 10, 10, 24, 24, function()
            V.a273.Cycle(-1)
            b60 = 1
            b67()
        end), "Previous moveset", b34)
        b37(b52(b1, ">", 166, 10, 24, 24, function()
            V.a273.Cycle(1)
            b60 = 1
            b67()
        end), "Next moveset", b34)
        local function b85()
            b83 = true
            b84.Text = ""
            b84.PlaceholderText = "PASTE CODE, PRESS ENTER"
            b84:CaptureFocus()
        end
        local b86 = nil
        local function b87()
            local c1 = V.a273.SetNames()
            local c2 = V.a273.Index()
            local c3 = {}
            for c7 in ipairs(c1) do
                table.insert(c3, {
                    text = c7 .. ".  " .. c8,
                    on = c7 == c2,
                    fn = function()
                        V.a273.Select(c7)
                        b60 = 1
                        b67()
                    end
                })
            end
            table.insert(c3, "-")
            table.insert(c3, {
                text = "New moveset",
                fn = function()
                    V.a273.New()
                    b60 = 1
                    b67()
                    a67("Moveset", "New moveset made. Type in the box to rename it.", 3)
                end
            })
            table.insert(c3, {
                text = "Duplicate this moveset",
                fn = function()
                    local d1, d2 = V.a273.DuplicateSet()
                    if d1 then
                        b60 = 1
                        b67()
                        a67("Moveset", "Made " .. tostring(d2) .. ".", 3)
                    end
                end
            })
            table.insert(c3, {
                text = "Rename",
                fn = function()
                    b54(b84)
                end
            })
            table.insert(c3, {
                text = "Export (copy code)",
                fn = function()
                    if typeof(setclipboard) == "function" then
                        setclipboard(V.a273.Export())
                        a67("Moveset", "Moveset code copied. IMPORT it on another account.", 4)
                    else
                        a67("Moveset", "Cannot copy on this executor.", 3)
                    end
                end
            })
            table.insert(c3, {text = "Import code", fn = b85})
            table.insert(c3, {
                text = "Export as script...",
                fn = function()
                    V.a274.Open()
                end
            })
            table.insert(c3, "-")
            local c9 = c1[c2] or "it"
            table.insert(c3, {
                text = "Delete this moveset",
                danger = true,
                confirm = "Click again to delete",
                fn = function()
                    V.a273.Delete()
                    b60 = 1
                    b67()
                    a67("Moveset", "Deleted " .. c9 .. ".", 3)
                end
            })
            b47(c3, {anchor = b86, width = 190})
        end
        b86 = b52(b1, "SETS", 194, 10, 52, 24, function()
            b87()
        end)
        b37(b86, "All your movesets: switch to one, or add, duplicate, export, import or delete.", b34)
        b37(b52(b1, "UNDO", 278, 10, 44, 24, function()
            b76()
        end), "Undo the last change (Ctrl + Z)", b34)
        b37(b52(b1, "REDO", 326, 10, 44, 24, function()
            b77()
        end), "Redo (Ctrl + Y)", b34)
        local b88 = a40("TextButton", {
            Text = "EXPORT",
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            TextColor3 = Color3.new(0, 0, 0),
            Position = UDim2.fromOffset(374, 10),
            Size = UDim2.fromOffset(86, 24),
            Parent = b1
        })
        local b89 = false
        local function b90(c1)
            a41(b88, c1 and 0.1 or 0, {BackgroundColor3 = b89 and a32.Accent:Lerp(Color3.new(1, 1, 1), 0.25) or a32.Accent})
        end
        a34(function()
            b90(false)
        end)
        b88.MouseEnter:Connect(function()
            b89 = true
            b90(true)
        end)
        b88.MouseLeave:Connect(function()
            b89 = false
            b90(true)
        end)
        a60.TouchLeave(b88, function()
            b89 = false
            b90(true)
        end)
        b88.MouseButton1Click:Connect(function()
            V.a274.Open()
        end)
        b37(b88, "Export this moveset as one full script you can run without the hub. Opens a short guide.", b34)
        b84.FocusLost:Connect(function()
            if b83 then
                b83 = false
                b84.PlaceholderText = "MOVESET NAME"
                if a7(b84.Text) ~= "" then
                    local c1, c2 = V.a273.Import(b84.Text)
                    if c1 then
                        b60 = 1
                        a67("Moveset", "Imported " .. c2 .. ".", 3)
                    else
                        a67("Moveset", "Import failed: " .. c2 .. ".", 4)
                    end
                end
            else
                V.a273.Rename(b84.Text)
            end
            b67()
        end)
        local function b91(c1, c2, c3, c4, c5)
            local c6 = a40("TextButton", {
                Font = Enum.Font.GothamBold,
                TextSize = 9,
                BackgroundColor3 = a32.Background,
                Position = UDim2.fromOffset(c2, 40),
                Size = UDim2.fromOffset(c3, 22),
                Parent = b1
            })
            local c7 = a49(c6, a32.Stroke)
            local function c8()
                local d1 = c4()
                c6.Text = string.upper(c1) .. (d1 and "  ON" or "  OFF")
                c6.TextColor3 = d1 and a32.Accent or a32.Muted
                c7.Color = d1 and a32.Accent or a32.Stroke
            end
            a34(c8)
            c6.MouseButton1Click:Connect(function()
                c5(not c4())
                V.a273.Save()
                c8()
            end)
            return c6
        end
        b37(b91("Enabled", 10, 76, function()
            return V.a273.Enabled
        end, function(c1)
            V.a273.Enabled = c1
            if not c1 then
                V.a273.StopAll()
            end
            V.a273.ApplyLocomotion()
        end), "Turns every move of this moveset on or off.", b34)
        b37(b91("Capture", 90, 76, function()
            return V.a273.Capture
        end, function(c1)
            V.a273.Capture = c1
        end), "Remembers the animations you play, so you can pick them in the picker (YOUR MOVES).", b34)
        b37(b91("Spy", 170, 60, function()
            return V.a273.Spy
        end, function(c1)
            V.a273.Spy = c1
        end), "Also remembers the animations other players play (OTHER PLAYERS in the picker).", b34)
        b37(b52(b1, "CHARACTER", 298, 40, 90, 22, function()
            b73("character")
        end), "Idle / walk / run / jump / fall / block / dash animations and cursor facing for this moveset.", b34)
        local b92 = b37(b52(b1, "KEYS", 392, 40, 68, 22, function()
            b73("keys")
        end), function()
            return a60.IsMobile() and "Every touch gesture." or "Every shortcut and mouse control."
        end, b34)
        a60.OnChange(function()
            b92.Text = a60.IsMobile() and "TOUCH" or "KEYS"
        end)
        b37(b52(b1, "?", 250, 10, 24, 24, function()
            b73("help")
        end), "How the Skill Builder works, and what every block does.", b34)
        b37(b52(b1, "ANIMS", 234, 40, 60, 22, function()
            b72(function(d1)
                if typeof(setclipboard) == "function" then
                    setclipboard(d1)
                    a67("Moveset", "Copied animation ID " .. d1 .. ".", 2)
                end
            end, "COPY", nil, function(d1)
                if typeof(setclipboard) == "function" then
                    setclipboard(table.concat(d1, ", "))
                    a67("Moveset", "Copied " .. #d1 .. " animation IDs.", 2)
                end
            end)
        end), "Browse every animation in the game and copy its ID.", b34)
        local b93 = b56(b1, 10, 70, 140, 220)
        local function b94()
            local c1 = b65().name
            V.a273.RemoveMove(b60)
            b60 = math.max(1, b60 - 1)
            b67()
            a72("Deleted " .. c1 .. "  \194\183  UNDO brings it back", "warn")
        end
        local function b95(c1, c2)
            local c3 = V.a273.NewStep(c1)
            for c7, c8 in pairs(c2 or {}) do
                c3[c7] = c8
            end
            return c3
        end
        local b96 = {
            [1] = {
                [1] = "Rush to target",
                [2] = "runs at the enemy",
                [3] = function()
                    return {
                        [1] = b95("face", {mode = "Target"}),
                        b95("dash", {dir = "To target", speed = 110, time = 0.45, stopNear = 4})
                    }
                end
            },
            [2] = {
                [1] = "Teleport behind",
                [2] = "appears behind the enemy",
                [3] = function()
                    return {[1] = b95("tp", {mode = "Behind target", z = 4}), b95("face", {mode = "Target"})}
                end
            },
            [3] = {
                [1] = "Jump slam",
                [2] = "jumps up, slams down",
                [3] = function()
                    return {
                        b95("vel", {motion = "Curve", yStart = 70, yEnd = -110, curveTime = 1, z = 25, stopWall = true, endMove = "Stop"})
                    }
                end
            },
            [4] = {
                [1] = "Spin",
                [2] = "one fast spin",
                [3] = function()
                    return {b95("turn", {yaw = 360, time = 0.35})}
                end
            },
            [5] = {
                [1] = "Launch on hit",
                [2] = "jumps up if it hits",
                [3] = function()
                    return {
                        [1] = b95("if", {check = "Hit someone", wait = 0.5}),
                        [2] = b95("vel", {y = 55, z = 10, time = 0}),
                        b95("end")
                    }
                end
            },
            [6] = {
                [1] = "Back off",
                [2] = "dash away from the enemy",
                [3] = function()
                    return {b95("dash", {dir = "Away from target", speed = 80, time = 0.3, turn = false})}
                end
            }
        }
        local function b97(c1)
            b60 = V.a273.AddMove()
            local c2 = b65()
            c2.name = string.sub(c1[1], 1, 24)
            c2.hide = false
            c2.opts.hideGameMove = false
            c2.steps = c1[3]()
            V.a273.Save()
            b67()
            a67("Moveset", c1[1] .. " added on key " .. b23(c2.key) .. ". It goes off together with that game move. Press TEST to try it now.", 6)
        end
        b37(b52(b1, "+MOVE", 10, 294, 30, 22, function()
            local c1 = {
                [1] = {
                    text = "Empty move",
                    hint = "start from nothing",
                    fn = function()
                        b60 = V.a273.AddMove()
                        b67()
                    end
                },
                [2] = "-",
                [3] = {text = "READY MADE", disabled = true}
            }
            local c4, c3, c2 = ipairs(b96)
            while true do
                local c6 = c4(c3, c2)
                if c5 == nil then
                    break
                end
                c2 = c5
                table.insert(c1, {
                    text = c6[1],
                    hint = c6[2],
                    fn = function()
                        b97(c6)
                    end
                })
            end
            b47(c1)
        end), "Add a move: an empty one, or a ready made one you can change.", b34).TextSize = 8
        b37(b52(b1, "+M1s", 41, 294, 25, 22, function()
            b60 = V.a273.AddM1Set()
            b67()
            a67("Moveset", "Added M1 1-4. Do a full M1 combo once to link each hit, then give them steps.", 5)
        end), "Add 4 moves that replace your M1 hits 1 to 4.", b34).TextSize = 8
        b37(b52(b1, "+DASH", 67, 294, 30, 22, function()
            b60 = V.a273.AddDashSet()
            b67()
            a67("Moveset", "Added Dash Front / Back / Left / Right on Q. Dash once each way (Q, S+Q, A+Q, D+Q) to link them, then give them steps.", 7)
        end), "Add 4 dash moves on Q (front, back, left, right). They link to the game's dash for their direction, like M1s do.", b34).TextSize = 8
        b37(b52(b1, "DUP", 98, 294, 24, 22, function()
            b60 = V.a273.DuplicateMove(b60)
            b67()
        end), "Duplicate this move.", b34).TextSize = 8
        b37(b52(b1, "DEL", 123, 294, 27, 22, function()
            b94()
        end), "Delete this move (UNDO brings it back).", b34).TextSize = 8
        local b98 = b53(b1, "MOVE NAME", 156, 70, 72, 22)
        local b99 = b52(b1, "KEY 1", 232, 70, 50, 22, function()
        
        end)
        local b100 = b53(b1, "CD", 286, 70, 46, 22, 4)
        b37(b52(b1, "OPTS", 418, 70, 42, 22, function()
            b73("move")
        end), "Options for this move only: hide or disable the game move, replace it, set conditions, hit detection and more.", b35)
        local b101 = nil
        b101 = b52(b1, "KEY + USED", 336, 70, 78, 22, function()
            local c1 = b65()
            local c2 = {[1] = {text = "HOW DOES THIS MOVE START?", disabled = true}}
            local c5, c4, c3 = ipairs(V.a273.Triggers)
            while true do
                local c7 = c5(c4, c3)
                if c6 == nil then
                    break
                end
                c3 = c6
                local c8 = b21[c7]
                table.insert(c2, {
                    text = b22[c7] and b22[c7][2] or string.upper(c7),
                    hint = c8 and c8[1] or nil,
                    on = c7 == c1.trigger and not c1.opts.replace,
                    fn = function()
                        c1.trigger = c7
                        c1.opts.replace = false
                        V.a273.Save()
                        b70()
                        b68()
                    end
                })
            end
            table.insert(c2, "-")
            table.insert(c2, {
                text = "REPLACE THE GAME'S MOVE",
                hint = "blocks it, yours fires",
                on = c1.opts.replace,
                fn = function()
                    c1.opts.replace = not c1.opts.replace
                    if c1.opts.replace then
                        c1.trigger = "Key only"
                    end
                    V.a273.Save()
                    b70()
                    b68()
                end
            })
            b47(c2, {anchor = b101})
        end)
        b37(b101, function()
            local c1 = b65()
            if c1.opts.replace then
                return "REPLACE: the game's own move on this key is blocked and this move fires right when you press the key. Click to change."
            end
            local c2 = c1.trigger
            local c3 = b21[c2]
            return "HOW IT STARTS: " .. (b22[c2] and b22[c2][2] or string.upper(c2)) .. ". " .. (c3 and c3[2] or "") .. " Click to change."
        end, b35)
        local b102 = b53(b1, "MOVE ANIM (AUTO)", 156, 96, 88, 22)
        local b103 = nil
        b103 = b52(b1, "PICK", 248, 96, 32, 22, function()
            local c1 = b65()
            if c1.trigger == "Key + used" and not c1.opts.replace and c1.anim == "" then
                V.a273.ArmLink(c1, 8)
                b70()
                a72("Linking " .. c1.name .. ": use the game move now", "accent")
                a67("Link " .. c1.name, "Press " .. b23(c1.key) .. " now and let the game's move go off (8 seconds). It links by itself.", 6)
                return
            end
            b72(function(d1)
                b65().anim = d1
                V.a273.Save()
                b70()
            end, "USE")
        end)
        b103.MouseLeave:Connect(function()
            task.delay(0.12, function()
                if b103.Text == "LINK" then
                    b103.TextColor3 = a32.Accent
                end
            end)
        end)
        b37(b103, function()
            if b103.Text == "LINK" then
                return "LINK: this move does not know the game move yet. Click, then use the game move once (press its key). After that it fires with it every time."
            end
            return "Pick the animation this move is linked to / started by, from the list."
        end, b35)
        local b104 = b53(b1, "HIT #", 284, 96, 46, 22, 4)
        b104.FocusLost:Connect(function()
            local c1 = tonumber(b104.Text)
            b65().combo = c1 and math.clamp(math.floor(c1), 0, 10) or 0
            V.a273.Save()
            b70()
            b68()
        end)
        local b105 = b52(b1, "HIDE ON", 334, 96, 58, 22, function()
            local c1 = b65()
            c1.opts.hideGameMove = not c1.opts.hideGameMove
            c1.hide = c1.opts.hideGameMove
            V.a273.Save()
            b70()
        end)
        local b106 = b52(b1, "TEST", 396, 96, 64, 22, function()
            b82()
        end)
        b37(b98, "Name of this move.", b35)
        b37(b99, "The key that fires this move. Click, then press a key or click M1 / M2. Esc cancels.", b35)
        b37(b100, "Cooldown: seconds before this move can fire again.", b35)
        b37(b102, function()
            local c1 = b65().trigger
            if c1 == "Key only" then
                return "Not used by KEY ONLY moves."
            elseif c1 == "On animation" then
                return "The game animation that triggers this move. Paste an ID or use PICK."
            end
            return "The game animation this move is linked to. It fills in by itself the first time you use the move. Clear it to link again. M1s also link the game's other versions of that hit (air, uppercut) as extra IDs, shown as +1. Separate IDs with commas to edit them."
        end, b35)
        b37(b104, "M1 moves only: which hit of your M1 combo this move replaces (1-4). Empty = every hit.", b35)
        b37(b105, function()
            local c1 = "HIDE ON hides the game's own animation while this move runs, so only yours is seen. The same setting is available in this move's OPTS."
            if string.find(b105.Text, "!", 1, true) then
                c1 = c1 .. " This move has no ANIM step, so with HIDE ON you just stand still. Turn it OFF to keep the game's animation."
            end
            return c1
        end, b35)
        b37(b106, "Runs this move now, ignoring its key and cooldown (Ctrl + T). Shows STOP while it runs.", b35)
        local function b107()
            local c1 = {}
            for c5 in pairs(b62) do
                table.insert(c1, c5)
            end
            table.sort(c1)
            if #c1 == 0 and b61 then
                c1 = {[1] = b61}
            end
            return c1
        end
        local function b108(c1)
            b62 = {}
            for c5, c6 in ipairs(c1) do
                b62[c6] = true
            end
            b61 = c1[#c1]
        end
        local function b109(c1)
            local c2 = b107()
            local c3 = c2[#c2]
            if c3 and c3 >= 1 and c3 <= #c1 then
                return c3 + 1
            end
            return #c1 + 1
        end
        local function b110(c1)
            local c2 = b66()
            local c3 = b65()
            if c1 == "anim" then
                b72(function(d1, d2)
                    local d3 = V.a273.NewStep("anim")
                    d3.id = d1
                    if d2 then
                        local d4 = math.max(math.abs(d2.speed), 0.01)
                        local d5 = d3
                        local d6 = d3
                        local d7 = d3
                        local d8 = d3
                        local d9 = d3
                        d9.looped = d2.looped
                        d8.fadeOut = d2.fadeOut
                        d7.fade = d2.fadeIn
                        d6.speed = d2.speed
                        d5.start = d2.start
                        d3.time = d2.stop > 0 and math.max(0.01, math.floor((d2.stop - d2.start) / d4 * 100 + 0.5) / 100) or 0
                    end
                    local d10 = b109(c2)
                    table.insert(c2, d10, d3)
                    b108({[1] = d10})
                    V.a273.Save()
                    b69()
                    b68()
                    a72("Added animation " .. (V.a273.NameOf(d1) or d1), "accent")
                end, "ADD", nil, function(d1, d2)
                    local d3 = b109(c2)
                    local d4 = {}
                    for d8, d9 in ipairs(d1) do
                        local d10 = V.a273.NewStep("anim")
                        d10.id = d9
                        d10.waitEnd = d2
                        table.insert(c2, d3 + d8 - 1, d10)
                        table.insert(d4, d3 + d8 - 1)
                    end
                    b108(d4)
                    V.a273.Save()
                    b69()
                    b68()
                    a72("Added " .. #d1 .. " animations" .. (d2 and ", each one after the other" or ""), "accent")
                end)
                return
            end
            if (c1 == "branch" or c1 == "ifbr") and #c3.branches == 0 then
                table.insert(c3.branches, {name = "Branch 1", steps = {}})
            end
            local c4 = b109(c2)
            local c5 = V.a273.NewStep(c1)
            if c1 == "branch" and c3.branches[1] then
                c5.target = c3.branches[1].name
            elseif c1 == "ifbr" and c3.branches[1] then
                c5.yes = c3.branches[1].name
            end
            table.insert(c2, c4, c5)
            if c1 == "if" then
                table.insert(c2, c4 + 1, V.a273.NewStep("end"))
            end
            b108({[1] = c4})
            V.a273.Save()
            b69()
            b68()
            if #V.a273.TypeByKey[c1].fields > 0 then
                b71(c4, true)
            end
        end
        local b111 = {
            [1] = {
                [1] = "ANIMATION",
                [2] = {
                    [1] = {[1] = "anim", [2] = "Play animation", [3] = "pick one from the list"},
                    [2] = {[1] = "stop", [2] = "Stop animations", [3] = "ends this move's anims"}
                }
            },
            [2] = {
                [1] = "MOVE YOUR CHARACTER",
                [2] = {
                    [1] = {[1] = "dash", [2] = "Dash", [3] = "quick burst any way"},
                    [2] = {[1] = "vel", [2] = "Launch / push", [3] = "fly, jump or slam"},
                    [3] = {[1] = "tp", [2] = "Teleport", [3] = "blink somewhere"},
                    [4] = {[1] = "face", [2] = "Face", [3] = "look at enemy / cursor"},
                    [5] = {[1] = "turn", [2] = "Spin / turn", [3] = "rotate over time"}
                }
            },
            [3] = {
                [1] = "TIMING",
                [2] = {
                    [1] = {[1] = "wait", [2] = "Wait", [3] = "pause before next step"},
                    [2] = {[1] = "stun", [2] = "Stun yourself", [3] = "lock your controls"},
                    [3] = {[1] = "key", [2] = "Press key / game move", [3] = "use 1-4, G or a key"}
                }
            },
            [4] = {
                [1] = "EFFECTS",
                [2] = {[1] = {[1] = "shake", [2] = "Screen shake", [3] = "shake your camera"}}
            },
            [5] = {[1] = "ITEMS", [2] = {[1] = {[1] = "item", [2] = "Get item", [3] = "grab an item by name"}}},
            [6] = {
                [1] = "LOGIC (ADVANCED)",
                [2] = {
                    [1] = {[1] = "if", [2] = "If ...", [3] = "only when it hit, etc."},
                    [2] = {[1] = "else", [2] = "Else", [3] = "when the IF was false"},
                    [3] = {[1] = "end", [2] = "End", [3] = "closes the IF"},
                    [4] = {[1] = "tag", [2] = "Tag counter", [3] = "count hits for combos"},
                    [5] = {[1] = "branch", [2] = "Go to branch", [3] = "run another step list"},
                    [6] = {[1] = "switch", [2] = "Switch by state", [3] = "standing / air / running"}
                }
            }
        }
        local b112 = nil
        b112 = b52(b1, "+  ADD BLOCK", 156, 122, 226, 22, function()
            local c1 = {}
            for c5, c6 in ipairs(b111) do
                if c5 > 1 then
                    table.insert(c1, "-")
                end
                table.insert(c1, {text = c6[1], disabled = true})
                for c10, c11 in ipairs(c6[2]) do
                    local c12 = c11[1]
                    table.insert(c1, {
                        text = c11[2],
                        hint = c11[3],
                        fn = function()
                            a73("Moveset", b110, c12)
                        end
                    })
                end
            end
            b47(c1, {anchor = b112, width = 226})
        end)
        b112.TextSize = 10
        b37(b112, "Add a step to this move. Steps run from top to bottom. Start with PLAY ANIMATION, then add movement like DASH or LAUNCH. LOGIC blocks are for advanced combos.", b35)
        local b113 = b52(b1, "MAIN", 386, 122, 74, 22, function()
            b74()
        end)
        b113.TextTruncate = Enum.TextTruncate.AtEnd
        b37(b113, "Which steps you are editing: the move's MAIN list or one of its branches. Click to open, add, rename or delete branches.", b35)
        b75 = function()
            local c1, c2 = b66()
            b113.Text = c2 and "BR: " .. string.upper(c2.name) or "BR: MAIN"
        end
        local b114 = b56(b1, 156, 148, 304, 168)
        b98.FocusLost:Connect(function()
            local c1 = a7(b98.Text)
            if c1 ~= "" then
                b65().name = string.sub(c1, 1, 24)
                V.a273.Save()
            end
            b70()
            b68()
        end)
        b100.Focused:Connect(function()
            b100.Text = b24(b65().cd)
            b100.CursorPosition = #b100.Text + 1
        end)
        b100.FocusLost:Connect(function()
            local c1 = tonumber(b100.Text)
            if c1 then
                b65().cd = math.clamp(c1, 0, 300)
                V.a273.Save()
            end
            b70()
            b68()
        end)
        b102.Focused:Connect(function()
            local c1 = b65()
            local c2 = {[1] = c1.anim}
            for c6, c7 in ipairs(c1.alts or {}) do
                table.insert(c2, c7)
            end
            b102.Text = c1.anim ~= "" and table.concat(c2, ", ") or ""
            b102.CursorPosition = #b102.Text + 1
        end)
        b102.FocusLost:Connect(function()
            local c1 = b65()
            local c2 = c1
            local c3 = c1
            c3.alts = {}
            c2.anim = ""
            for c7 in string.gmatch(b102.Text, "[^,%s]+") do
                local c8 = V.a273.IdOf(c7)
                if c8 then
                    if c1.anim == "" then
                        c1.anim = c8
                    elseif c8 ~= c1.anim and not table.find(c1.alts, c8) and #c1.alts < 4 then
                        table.insert(c1.alts, c8)
                    end
                end
            end
            V.a273.Save()
            b70()
        end)
        b104.Focused:Connect(function()
            local c1 = b65()
            b104.Text = c1.combo > 0 and tostring(c1.combo) or ""
            b104.CursorPosition = #b104.Text + 1
        end)
        b99.MouseButton1Click:Connect(function()
            if a60.IsMobile() then
                local c1 = b65()
                local c2 = {}
                local c5, c4, c3 = ipairs({
                    [1] = "One",
                    [2] = "Two",
                    [3] = "Three",
                    [4] = "Four",
                    [5] = "Five",
                    [6] = "MouseButton1",
                    [7] = "MouseButton2",
                    [8] = "Q",
                    [9] = "E",
                    [10] = "R",
                    [11] = "F",
                    [12] = "G",
                    [13] = "T",
                    [14] = "Z",
                    [15] = "X",
                    [16] = "C",
                    [17] = "V",
                    [18] = "B"
                })
                while true do
                    local c7 = c5(c4, c3)
                    if c6 == nil then
                        break
                    end
                    c3 = c6
                    table.insert(c2, {
                        text = "KEY " .. b23(c7),
                        on = c1.key == c7,
                        hint = c7 == "MouseButton1" and "attack" or c7 == "Q" and "dash" or c7 == "F" and "block" or nil,
                        fn = function()
                            c1.key = c7
                            V.a273.Save()
                            b70()
                            b68()
                        end
                    })
                end
                b47(c2, {anchor = b99})
                return
            end
            b81 = true
            b99.Text = "KEY/CLICK"
        end)
        a39(UserInputService.InputBegan:Connect(function(c1, c2)
            if not b81 then
                return
            end
            local c3 = c1.UserInputType
            local c4 = c3 == Enum.UserInputType.MouseButton1 or c3 == Enum.UserInputType.MouseButton2
            if c3 ~= Enum.UserInputType.Keyboard and not (c4 and not c2) then
                return
            end
            b81 = false
            if c4 then
                b65().key = c3.Name
                V.a273.Save()
            elseif c1.KeyCode ~= Enum.KeyCode.Escape then
                b65().key = c1.KeyCode.Name
                V.a273.Save()
            end
            b70()
            b68()
        end))
        local function b115(c1)
            local function c2()
                if c1.smooth == "Custom" then
                    return "custom " .. b24(c1.smoothTime) .. "s"
                end
                return string.lower(c1.smooth or "Off")
            end
            local c3 = c1.type
            if c3 == "anim" then
                local c4 = c1.id ~= "" and (V.a273.NameOf(c1.id) or c1.id) or "no main ID"
                local c5 = 0
                for c9, c10 in ipairs(b9) do
                    if c1[c10] ~= "" then
                        c5 = c5 + 1
                    end
                end
                if c5 > 0 then
                    c4 = c4 .. "  +" .. c5 .. " by movement"
                end
                if c1.layer ~= "Action4" then
                    c4 = c4 .. "  \194\183  " .. c1.layer
                end
                if c1.weight < 1 then
                    c4 = c4 .. "  w" .. b24(c1.weight)
                end
                return c4 .. "  x" .. b24(c1.speed) .. (c1.start > 0 and "  from " .. b24(c1.start) .. "s" or "") .. (c1.looped and (c1.loopFor > 0 and "  loop " .. b24(c1.loopFor) .. "s" or "  loop (move)") or "") .. (c1.time > 0 and "  " .. b24(c1.time) .. "s" or "") .. (c1.waitEnd and "  \194\183  waits" or "")
            elseif c3 == "wait" then
                return b24(c1.time) .. "s"
            elseif c3 == "tp" and c1.mode == "Cursor" then
                return "to your cursor, up to " .. b24(c1.range) .. " studs" .. (c1.smooth ~= "Off" and " \194\183 " .. c2() .. " smoothing" or "")
            elseif c3 == "tp" and c1.mode == "Behind target" then
                return b24(c1.z) .. " studs behind the target" .. (c1.smooth ~= "Off" and " \194\183 " .. c2() .. " smoothing" or "")
            elseif c3 == "dash" then
                local c11 = c1.speed * c1.time * (c1.ease and 0.78 or 1)
                return string.lower(c1.dir) .. "  \194\183  " .. b24(c1.speed) .. " for " .. b24(c1.time) .. "s  \194\183  about " .. math.floor(c11 + 0.5) .. " studs" .. (c1.smooth ~= "Off" and "  \194\183  " .. c2() .. " smoothing" or "") .. (c1.waitEnd and "" or "  \194\183  no wait")
            elseif c3 == "curve" or c3 == "vel" and c1.motion == "Curve" then
                local c12 = c3 == "curve" and c1.y or c1.yStart
                local c13 = c3 == "curve" and c1.time or c1.curveTime
                local c14 = c1.mode .. "  curve  up " .. b24(c12) .. " > " .. b24(c1.yEnd) .. "  fwd " .. b24(c1.z) .. "  " .. b24(c13) .. "s"
                if c1.smooth ~= "Off" then
                    c14 = c14 .. "  \194\183  " .. c2() .. " smoothing"
                end
                if c1.steer ~= "Off" and c1.mode == "Facing" then
                    c14 = c14 .. "  \194\183  steer: " .. string.lower(c1.steer)
                end
                return c14
            elseif c3 == "tp" or c3 == "vel" then
                local c15 = c1.mode .. "  " .. b24(c1.x) .. ", " .. b24(c1.y) .. ", " .. b24(c1.z)
                if c3 == "tp" and c1.smooth ~= "Off" then
                    c15 = c15 .. "  \194\183  " .. c2() .. " travel"
                end
                if c3 == "vel" then
                    c15 = c15 .. "  " .. (c1.time > 0 and b24(c1.time) .. "s" or "push")
                    if c1.steer ~= "Off" and c1.time > 0 and c1.mode == "Facing" then
                        c15 = c15 .. "  \194\183  steer: " .. string.lower(c1.steer)
                    end
                    if c1.time > 0 and c1.ramp ~= "Constant" then
                        c15 = c15 .. "  \194\183  " .. string.lower(c1.ramp)
                    end
                    if c1.smooth ~= "Off" then
                        c15 = c15 .. "  \194\183  " .. c2() .. " smoothing"
                    end
                end
                return c15
            elseif c3 == "stun" then
                local c16 = {}
                for c20, c21 in ipairs({
                    [1] = {[1] = "move", [2] = "move"},
                    [2] = {[1] = "jump", [2] = "jump"},
                    [3] = {[1] = "rotate", [2] = "dir"},
                    [4] = {[1] = "m1", [2] = "m1"},
                    [5] = {[1] = "anchor", [2] = "freeze"}
                }) do
                    if c1[c21[1]] then
                        table.insert(c16, c21[2])
                    end
                end
                return b24(c1.time) .. "s  " .. table.concat(c16, " ")
            elseif c3 == "key" then
                if c1.mode == "Game move" then
                    return "game move " .. c1.slot
                end
                return c1.mode == "Use move" and "use " .. c1.move or "press " .. string.upper(c1.key)
            elseif c3 == "turn" then
                local c22 = b24(c1.yaw) .. " deg"
                if c1.mode == "Custom" then
                    c22 = "yaw " .. b24(c1.yaw) .. ", pitch " .. b24(c1.pitch) .. ", roll " .. b24(c1.roll)
                end
                return c22 .. (c1.time > 0 and " over " .. b24(c1.time) .. "s" or ", instant") .. (c1.smooth ~= "Off" and ", " .. c2() .. " smoothing" or "") .. (c1.hold > 0 and ", stay " .. b24(c1.hold) .. "s" or "")
            elseif c3 == "face" then
                local c23 = string.gsub(c1.mode, " 360", "")
                local c24 = c23 == "Cursor" and "at your cursor" or c23 == "Camera" and "where the camera looks" or "nearest / hit target, " .. b24(c1.range) .. " studs"
                if c23 ~= c1.mode then
                    c24 = c24 .. ", 360"
                end
                if c1.time > 0 then
                    c24 = c24 .. ", for " .. b24(c1.time) .. "s"
                end
                if c1.smooth ~= "Off" then
                    c24 = c24 .. ", " .. c2() .. " smoothing"
                end
                return c24
            elseif c3 == "if" or c3 == "ifbr" then
                local c25 = c1.check
                local c26 = {}
                if c25 == "Tag at least" then
                    table.insert(c26, c1.tag .. " >= " .. b24(c1.value))
                elseif c25 == "Has item" or c25 == "Item in hand" then
                    table.insert(c26, c1.item ~= nil and c1.item ~= "" and c1.item or "any item")
                elseif c25 == "Game anim played" then
                    table.insert(c26, "anim " .. (c1.anim ~= "" and (V.a273.NameOf(c1.anim) or c1.anim) or "not set"))
                elseif string.sub(c25, 1, 11) == "Hit someone" then
                    table.insert(c26, c1.value > 0 and "within " .. b24(c1.value) .. " studs" or "move range")
                elseif c25 == "Target in range" or c25 == "HP above %" or c25 == "HP below %" then
                    table.insert(c26, b24(c1.value))
                elseif (c25 == "Walking" or c25 == "Running" or c25 == "Dashing") and c1.value > 0 then
                    table.insert(c26, "speed " .. b24(c1.value))
                end
                if c1.wait > 0 then
                    table.insert(c26, "waits " .. b24(c1.wait) .. "s")
                end
                if c3 == "ifbr" then
                    table.insert(c26, "true: " .. c1.yes)
                    table.insert(c26, "false: " .. c1.no)
                    if c1.mode == "End move there" then
                        table.insert(c26, "ends there")
                    end
                    return table.concat(c26, "  \194\183  ")
                end
                if c1.yes ~= "-" then
                    table.insert(c26, "then " .. c1.yes)
                end
                if c1.onFail == "Stop move" then
                    table.insert(c26, "else stop")
                elseif c1.onFail == "Skip steps" then
                    table.insert(c26, "else skip " .. b24(c1.skip))
                elseif c1.onFail == V.a273.BranchIf then
                    table.insert(c26, "else " .. c1.no)
                else
                    table.insert(c26, "else jump to ELSE / END")
                end
                if (c1.yes ~= "-" or c1.onFail == V.a273.BranchIf) and c1.mode == "End move there" then
                    table.insert(c26, "ends there")
                end
                return table.concat(c26, "  \194\183  ")
            elseif c3 == "else" then
                return "runs when the IF above was false"
            elseif c3 == "end" then
                return "end of the IF block"
            elseif c3 == "tag" then
                return c1.tag .. (c1.op == "Add" and " + " or " = ") .. b24(c1.value)
            elseif c3 == "branch" then
                return "go to " .. c1.target .. (c1.mode == "End move there" and "  \194\183  move ends there" or "  \194\183  then comes back")
            elseif c3 == "switch" then
                local c27 = {}
                for c31, c32 in ipairs({
                    [1] = {[1] = "idle", [2] = "stand"},
                    [2] = {[1] = "walk", [2] = "walk"},
                    [3] = {[1] = "run", [2] = "run"},
                    [4] = {[1] = "dash", [2] = "dash"},
                    [5] = {[1] = "air", [2] = "air"},
                    [6] = {[1] = "block", [2] = "block"},
                    [7] = {[1] = "default", [2] = "else"}
                }) do
                    local c33 = c1[c32[1]]
                    if c33 ~= "" and c33 ~= "-" then
                        table.insert(c27, c32[2] .. ": " .. c33)
                    end
                end
                if #c27 > 0 and c1.from == "Right now" then
                    table.insert(c27, "(now)")
                end
                return #c27 > 0 and table.concat(c27, "  ") or "no branches picked yet"
            elseif c3 == "stop" then
                return "fade " .. b24(c1.fade) .. "s"
            elseif c3 == "shake" then
                return "strength " .. b24(c1.strength) .. " for " .. b24(c1.time) .. "s"
            elseif c3 == "item" then
                return tostring(c1.name) .. (c1.waitEnd and ", waits for it" or "")
            end
            return ""
        end
        local function b116(c1)
            local c2 = nil
            if V.a273.IsRunning(c1) then
                c2 = "RUNNING"
            else
                local c3 = V.a273.CooldownLeft(c1)
                c2 = c3 > 0 and string.format("%.1fs", c3) or "READY"
            end
            local c4 = c1.key == "MouseButton1" and c1.combo > 0 and "HIT " .. c1.combo .. " \194\183 " or c1.dir and string.upper(c1.dir) .. " \194\183 " or ""
            local c5 = c1.trigger == "Key + used" and c1.anim == "" and "NOT LINKED \194\183 " or ""
            return c4 .. c5 .. "CD " .. b24(c1.cd) .. "s \194\183 " .. #c1.steps .. " steps \194\183 " .. c2
        end
        local function b117()
            V.a273.Save()
            b69()
            b68()
        end
        local function b118(c1)
            local c2 = b66()
            local c3 = {}
            for c7, c8 in ipairs(c1) do
                if c2[c8] then
                    table.insert(c3, V.a273.CleanStep(c2[c8]))
                end
            end
            return c3
        end
        local function b119(c1)
            local c2 = b66()
            for c6 = #c1, 1, -1 do
                table.remove(c2, c1[c6])
            end
            b62 = {}
            b61 = nil
            b117()
            a72("Deleted " .. #c1 .. (#c1 == 1 and " step" or " steps") .. "  \194\183  UNDO brings it back", "warn")
        end
        local function b120(c1, c2)
            local c3 = b66()
            local c4 = {}
            for c8, c9 in ipairs(c1) do
                table.insert(c3, c2 + c8 - 1, V.a273.CleanStep(c9))
                table.insert(c4, c2 + c8 - 1)
            end
            b108(c4)
            b117()
        end
        local function b121(c1, c2)
            local c3 = b66()
            if #c1 == 0 or c2 < 0 and c1[1] <= 1 or c2 > 0 and c1[#c1] >= #c3 then
                return
            end
            if c2 < 0 then
                for c7, c8 in ipairs(c1) do
                    local c9 = c3
                    local c10 = c8
                    local c11 = c3
                    local c12 = c8 - 1
                    c11[c12] = c3[c8]
                    c9[c10] = c3[c8 - 1]
                end
            else
                for c16 = #c1, 1, -1 do
                    local c17 = c1[c16]
                    local c18 = c3
                    local c19 = c17
                    local c20 = c3
                    local c21 = c17 + 1
                    c20[c21] = c3[c17]
                    c18[c19] = c3[c17 + 1]
                end
            end
            local c22 = {}
            for c26, c27 in ipairs(c1) do
                table.insert(c22, c27 + c2)
            end
            b108(c22)
            b117()
        end
        local function b122(c1)
            local c2 = b66()
            local c3 = false
            for c7, c8 in ipairs(c1) do
                if c2[c8] and not c2[c8].off then
                    c3 = true
                end
            end
            for c12, c13 in ipairs(c1) do
                if c2[c13] then
                    c2[c13].off = c3 or nil
                end
            end
            b117()
            a72((c3 and "Switched off " or "Switched on ") .. #c1 .. " steps", "ok")
        end
        local function b123(c1)
            if b62[c1] then
                return b107()
            end
            return {[1] = c1}
        end
        local function b124()
            local c1 = 0
            for c5 in pairs(b62) do
                c1 = c1 + 1
            end
            return c1
        end
        local function b125(c1, c2)
            local c3 = b66()
            if #c1 == 0 then
                return
            end
            local c5 = c1[#c1]
            local c4 = c1[1]
            if c5 - c4 + 1 == #c1 and c2 >= c4 and c2 <= c5 + 1 then
                b69()
                return
            end
            local c7 = 0
            local c6 = {}
            for c11, c12 in ipairs(c1) do
                if c3[c12] then
                    table.insert(c6, c3[c12])
                    if c12 < c2 then
                        c7 = c7 + 1
                    end
                end
            end
            for c16 = #c1, 1, -1 do
                if c3[c1[c16]] then
                    table.remove(c3, c1[c16])
                end
            end
            local c17 = math.clamp(c2 - c7, 1, #c3 + 1)
            local c18 = {}
            for c22, c23 in ipairs(c6) do
                table.insert(c3, c17 + c22 - 1, c23)
                table.insert(c18, c17 + c22 - 1)
            end
            b108(c18)
            b117()
            a72("Moved " .. #c6 .. (#c6 == 1 and " step" or " steps"), "ok")
        end
        local function b126(c1, c2)
            local c3 = V.a273.Current().moves
            local c4 = c3[c1]
            if not c4 or c2 == c1 or c2 == c1 + 1 then
                b68()
                return
            end
            local c5 = b65()
            table.remove(c3, c1)
            table.insert(c3, math.clamp(c2 > c1 and c2 - 1 or c2, 1, #c3 + 1), c4)
            b60 = table.find(c3, c5) or 1
            V.a273.Save()
            b68()
            a72("Moved " .. c4.name, "ok")
        end
        local function b127(c1)
            local c2 = b66()
            local c4 = c1[#c1]
            local c3 = c1[1]
            if not c3 or not c2[c3] or not c2[c4] then
                return
            end
            table.insert(c2, c4 + 1, V.a273.NewStep("end"))
            table.insert(c2, c3, V.a273.NewStep("if"))
            b108({[1] = c3})
            b117()
            a72("Wrapped steps " .. c3 .. "-" .. c4 .. " in an IF block. Pick what it checks.", "accent")
            b71(c3)
        end
        local b129 = {}
        local b128 = {}
        local b130 = {press = nil, active = nil, moved = false, conn = nil}
        local b132 = nil
        local b131 = nil
        local b133 = a40("Frame", {BackgroundColor3 = a32.Accent, Size = UDim2.new(1, 0, 0, 2), ZIndex = 6, Visible = false})
        a35(b133, "BackgroundColor3")
        local b134 = a40("TextLabel", {
            BackgroundColor3 = a32.Lift,
            BackgroundTransparency = 0,
            Font = Enum.Font.GothamBold,
            TextSize = 10,
            Size = UDim2.fromOffset(120, 20),
            ZIndex = 85,
            Visible = false,
            Parent = a60.Screen
        })
        a35(a49(b134, a32.Accent), "Color")
        local function b135(c1)
            local c2 = b130.active.rows
            for c6 = 1, #c2 do
                local c7 = c2[c6]
                if c7.Parent and c1 < c7.AbsolutePosition.Y + c7.AbsoluteSize.Y / 2 then
                    return c6
                end
            end
            return #c2 + 1
        end
        local function b136()
            local c1 = b130.active
            local c2 = c1.rows
            local c3 = c2[math.min(c1.slot, #c2)]
            if not c3 or not c3.Parent then
                b133.Visible = false
                return
            end
            b133.Parent = c3
            b133.Position = UDim2.fromOffset(0, c1.slot <= #c2 and -3 or 31)
            b133.Visible = true
        end
        local function b137()
            local c1 = a60.Screen.AbsolutePosition
            b134.Position = UDim2.fromOffset(b31.X - c1.X + 14, b31.Y - c1.Y + 10)
        end
        local function b138()
            local c1 = b130.active
            b130.active = nil
            b130.press = nil
            b30 = false
            b133.Visible = false
            b133.Parent = nil
            b134.Visible = false
            if b130.conn then
                b130.conn:Disconnect()
                b130.conn = nil
            end
            if c1 and c1.unlock then
                c1.unlock()
            end
            return c1
        end
        b131 = function()
            local c1 = b138()
            if c1 then
                if c1.kind == "step" then
                    b69()
                else
                    b68()
                end
            end
        end
        local function b139(c1)
            local c2 = c1.kind == "step"
            local c3 = c2 and b128 or b129
            if not c3[c1.index] then
                b130.press = nil
                return
            end
            local c4 = c2 and b123(c1.index) or {[1] = c1.index}
            b130.active = {
                kind = c1.kind,
                list = c2 and b114 or b93,
                rows = c3,
                items = c4,
                slot = c1.index,
                unlock = c1.unlock or a60.LockScroll(c2 and b114 or b93)
            }
            c1.unlock = nil
            b130.moved = true
            b30 = true
            b36()
            b46()
            for c8, c9 in ipairs(c4) do
                if c3[c9] then
                    c3[c9].BackgroundTransparency = 0.6
                end
            end
            if c2 then
                b134.Text = "MOVING " .. #c4 .. (#c4 == 1 and " STEP" or " STEPS")
            else
                local c10 = V.a273.Current().moves[c1.index]
                b134.Text = "MOVING " .. string.upper(c10 and c10.name or "MOVE")
            end
            b134.Size = UDim2.fromOffset(math.ceil(b27(b134.Text, 10, Enum.Font.GothamBold)) + 18, 20)
            b137()
            b134.Visible = true
            b130.conn = b2.RenderStepped:Connect(function()
                local d1 = b130.active
                if not d1 then
                    return
                end
                if not a37 or not d1.list.Parent or not b1.Visible or not a79 then
                    b131()
                    return
                end
                local d2 = d1.list.AbsolutePosition.Y
                local d3 = d2 + d1.list.AbsoluteSize.Y
                local d4 = b31.Y
                local d5 = 0
                if d4 < d2 + 18 then
                    d5 = -6
                elseif d4 > d3 - 18 then
                    d5 = 6
                end
                if d5 ~= 0 then
                    d1.list.CanvasPosition = Vector2.new(0, math.max(0, d1.list.CanvasPosition.Y + d5))
                end
                d1.slot = b135(d4)
                b136()
                b137()
            end)
        end
        b132 = function(c1, c2, c3)
            local c4 = a60.ScreenPos(c3)
            local c5 = {
                kind = c1,
                index = c2,
                y = c4.Y,
                start = c4,
                input = c3,
                hold = c3.UserInputType == Enum.UserInputType.Touch or a60.IsMobile()
            }
            b130.press = c5
            b130.moved = false
            if not c5.hold then
                return
            end
            task.delay(0.4, function()
                if b130.press ~= c5 or b130.active or c5.cancel then
                    return
                end
                c5.armed = true
                b130.moved = true
                c5.unlock = a60.LockScroll(c1 == "step" and b114 or b93)
                local d1 = (c1 == "step" and b128 or b129)[c2]
                if d1 and d1.Parent then
                    d1.BackgroundColor3 = a32.Lift
                    local d2 = d1:FindFirstChildOfClass("UIStroke")
                    if d2 then
                        d2.Color = a32.Accent
                    end
                end
                b36()
                a72("Let go for the menu, or drag to move it", "ok")
            end)
        end
        a39(UserInputService.InputChanged:Connect(function(c1)
            local c2 = b130.press
            if not c2 or b130.active then
                return
            end
            local c3 = c2.input.UserInputType == Enum.UserInputType.Touch
            if not (c1 == c2.input or not c3 and c1.UserInputType == Enum.UserInputType.MouseMovement) then
                return
            end
            local c4 = a60.ScreenPos(c1)
            if c2.hold then
                if c2.armed then
                    if (c4 - c2.start)["Magnitude"] > 6 then
                        a73("Moveset", b139, c2)
                    end
                elseif (c4 - c2.start)["Magnitude"] > 10 then
                    c2.cancel = true
                    b130.press = nil
                end
            elseif math.abs(c4.Y - c2.y) > 6 then
                a73("Moveset", b139, c2)
            end
        end))
        a39(UserInputService.InputEnded:Connect(function(c1)
            local c2 = c1.UserInputType
            if c2 ~= Enum.UserInputType.MouseButton1 and c2 ~= Enum.UserInputType.Touch then
                return
            end
            local c3 = b130.press
            if c3 and c2 == Enum.UserInputType.Touch and c1 ~= c3.input then
                return
            end
            b130.press = nil
            if not b130.active then
                if c3 and c3.unlock then
                    c3.unlock()
                    c3.unlock = nil
                end
                if c3 and c3.armed and b130.hold then
                    task.defer(function()
                        a73("Moveset", b130.hold, c3.kind, c3.index)
                    end)
                end
                return
            end
            local c4 = b138()
            a73("Moveset", function()
                if c4.kind == "step" then
                    b125(c4.items, c4.slot)
                else
                    b126(c4.items[1], c4.slot)
                end
            end)
        end))
        local function b140(c1)
            local c2 = b66()
            if not c2[c1] then
                return
            end
            if not b62[c1] then
                b108({[1] = c1})
                b69()
            end
            local c3 = b107()
            local c4 = #c3
            local c5 = c4 == 1 and "step" or c4 .. " steps"
            local c6 = false
            for c10, c11 in ipairs(c3) do
                if c2[c11] and not c2[c11].off then
                    c6 = true
                end
            end
            local c12 = c3[c4] - c3[1] + 1 == c4
            b47({
                [1] = {
                    text = "Edit step " .. c1,
                    hint = "ENTER",
                    fn = function()
                        b71(c1)
                    end
                },
                [2] = {
                    text = V.a273.IsRunning(b65()) and "Stop the test" or "Test the move",
                    hint = "CTRL+T",
                    fn = b82
                },
                [3] = "-",
                [4] = {
                    text = "Duplicate",
                    hint = "CTRL+D",
                    fn = function()
                        b120(b118(c3), c3[c4] + 1)
                        a72("Duplicated " .. c5, "accent")
                    end
                },
                [5] = {
                    text = "Copy",
                    hint = "CTRL+C",
                    fn = function()
                        b64 = b118(c3)
                        a72("Copied " .. c5, "ok")
                    end
                },
                [6] = {
                    text = "Cut",
                    hint = "CTRL+X",
                    fn = function()
                        b64 = b118(c3)
                        b119(c3)
                        a72("Cut " .. c5, "ok")
                    end
                },
                [7] = {
                    text = "Paste below",
                    hint = "CTRL+V",
                    disabled = #b64 == 0,
                    fn = function()
                        b120(b64, b109(b66()))
                        a72("Pasted " .. #b64 .. " steps", "accent")
                    end
                },
                [8] = "-",
                [9] = {
                    text = c6 and "Switch off" or "Switch on",
                    hint = "CTRL+E",
                    fn = function()
                        b122(c3)
                    end
                },
                [10] = {
                    text = "Wrap in IF block",
                    fn = function()
                        b127(c3)
                    end
                },
                [11] = {
                    text = "Move up",
                    disabled = c3[1] <= 1,
                    fn = function()
                        b121(c3, -1)
                    end
                },
                [12] = {
                    text = "Move down",
                    disabled = c3[c4] >= #c2,
                    fn = function()
                        b121(c3, 1)
                    end
                },
                [13] = {
                    text = "Move to top",
                    disabled = c12 and c3[1] == 1,
                    fn = function()
                        b125(c3, 1)
                    end
                },
                [14] = {
                    text = "Move to bottom",
                    disabled = c12 and c3[c4] == #c2,
                    fn = function()
                        b125(c3, #b66() + 1)
                    end
                },
                [15] = "-",
                [16] = {
                    text = b130.multi and "Stop selecting" or "Select several",
                    hint = not b130.multi and "tap to pick" or nil,
                    fn = function()
                        b130.multi = not b130.multi
                        if b130.multi then
                            b108(c3)
                            a72("Tap steps to pick them. Long-press one for actions.", "accent")
                        else
                            b108({[1] = c1})
                            a72("Stopped selecting", "ok")
                        end
                        b69()
                    end
                },
                [17] = {
                    text = "Select all",
                    hint = "CTRL+A",
                    fn = function()
                        local d1 = {}
                        for d5 = 1, #b66() do
                            table.insert(d1, d5)
                        end
                        b108(d1)
                        b69()
                        a72(#d1 .. " steps selected", "ok")
                    end
                },
                [18] = "-",
                [19] = {
                    text = "Delete " .. c5,
                    hint = "DEL",
                    danger = true,
                    fn = function()
                        b119(c3)
                    end
                }
            })
        end
        local function b141(c1)
            local c2 = V.a273.Current().moves
            if not c2[c1] then
                return
            end
            if b60 ~= c1 then
                b60 = c1
                b67()
            end
            b47({
                [1] = {text = V.a273.IsRunning(c2[c1]) and "Stop the test" or "Test", hint = "CTRL+T", fn = b82},
                [2] = {
                    text = "Rename",
                    fn = function()
                        b54(b98)
                    end
                },
                [3] = {
                    text = "Duplicate",
                    fn = function()
                        b60 = V.a273.DuplicateMove(b60)
                        b67()
                    end
                },
                [4] = {
                    text = "Move up",
                    disabled = c1 <= 1,
                    fn = function()
                        b126(c1, c1 - 1)
                    end
                },
                [5] = {
                    text = "Move down",
                    disabled = c1 >= #c2,
                    fn = function()
                        b126(c1, c1 + 2)
                    end
                },
                [6] = {
                    text = "Link to the next game move",
                    hint = "8s",
                    disabled = c2[c1].trigger ~= "Key + used",
                    fn = function()
                        V.a273.ArmLink(c2[c1], 8)
                        b70()
                        a67("Moveset", "Use the game move for " .. c2[c1].name .. " now (8 seconds). It links to it by itself.", 6)
                    end
                },
                [7] = "-",
                [8] = {text = "Delete move", danger = true, fn = b94}
            })
        end
        b130.hold = function(c1, c2)
            if c1 == "step" then
                b140(c2)
            else
                b141(c2)
            end
        end
        b68 = function()
            b57(b93)
            b80 = {}
            b129 = {}
            for c4 in ipairs(V.a273.Current().moves) do
                local c6, c7, c8, c9, c10 = b59(b93, c4, "[" .. b23(c5.key) .. "] " .. c5.name, "", c4 == b60, {}, function()
                    if b130.moved then
                        return
                    end
                    b60 = c4
                    b67()
                end, nil, function()
                    b141(c4)
                end, nil, nil, true)
                c8.Text = b116(c5)
                b80[c5] = c8
                b129[c4] = c6
                c10.InputBegan:Connect(function(d1)
                    if d1.UserInputType == Enum.UserInputType.MouseButton1 or d1.UserInputType == Enum.UserInputType.Touch then
                        b132("move", c4, d1)
                    end
                end)
            end
        end
        b70 = function()
            local c1 = b65()
            if not b98:IsFocused() then
                b98.Text = c1.name
            end
            if not b100:IsFocused() then
                b100.Text = "CD " .. b24(c1.cd) .. "s"
            end
            if not b102:IsFocused() then
                local c2 = c1.anim ~= "" and c1.alts and #c1.alts > 0 and " +" .. #c1.alts or ""
                b102.Text = c1.anim ~= "" and (V.a273.NameOf(c1.anim) or c1.anim) .. c2 or ""
            end
            if not b81 then
                b99.Text = "KEY " .. b23(c1.key)
            end
            b101.Text = c1.opts.replace and "REPLACE" or b22[c1.trigger] and b22[c1.trigger][1] or string.upper(c1.trigger)
            local c3 = c1.trigger == "Key + used" and not c1.opts.replace and c1.anim == ""
            b103.Text = c3 and "LINK" or "PICK"
            b103.TextColor3 = c3 and a32.Accent or a32.Text
            local c4 = false
            local c5 = {[1] = c1.steps}
            for c9, c10 in ipairs(c1.branches or {}) do
                table.insert(c5, c10.steps)
            end
            for c14, c15 in ipairs(c5) do
                for c19, c20 in ipairs(c15) do
                    if c20.type == "anim" and not c20.off then
                        c4 = true
                    end
                end
            end
            b105.Text = c1.opts.hideGameMove and (c4 and "HIDE ON" or "HIDE ON !") or "HIDE OFF"
            b105.TextColor3 = c1.opts.hideGameMove and not c4 and #c1.steps > 0 and a32.Warn or a32.Text
            local c21 = c1.key == "MouseButton1"
            if not b104:IsFocused() then
                b104.Text = c1.combo > 0 and "HIT " .. c1.combo or ""
            end
            b104.PlaceholderText = c21 and "HIT #" or "M1 ONLY"
            b104.TextTransparency = c21 and 0 or 0.5
            local c22 = c1.trigger == "Key only"
            if c22 then
                b102.PlaceholderText = "NOT USED"
            else
                b102.PlaceholderText = c1.trigger == "On animation" and "TRIGGER ANIM ID" or "NOT LINKED YET"
            end
            b102.TextTransparency = c22 and 0.5 or 0
        end
        local function b142(c1)
            local c2 = 4 + (c1 - 1) * 33
            local c3 = c2 + 30
            local c4 = b114.Size.Y.Offset
            local c5 = b114.CanvasPosition.Y
            if c2 < c5 + 2 then
                b114.CanvasPosition = Vector2.new(0, math.max(0, c2 - 4))
            elseif c3 > c5 + c4 - 2 then
                b114.CanvasPosition = Vector2.new(0, c3 - c4 + 4)
            end
        end
        b69 = function(c1)
            if b70 then
                b70()
            end
            local c2 = b114.CanvasPosition
            b57(b114)
            b128 = {}
            local c3 = b66()
            b75()
            if #c3 == 0 then
                b58(b114, c4 and "Branch " .. c4.name .. " is empty. Add blocks with the buttons above. BRANCH, IF BR and SWITCH blocks run it by its name." or a60.IsMobile() and "No steps yet. Tap a block above to add it (ANIM opens the picker). Long-press anything to see what it does, long-press a step for its menu, hold and drag a step to move it." or "No steps yet. Click a block above to add it (ANIM opens the picker). Hover anything to see what it does, right-click a step for its menu, drag steps to reorder them.")
                return
            end
            local c5 = 0
            local c8, c7, c6 = ipairs(c3)
            while true do
                local c10 = c8(c7, c6)
                local c9 = c8(c7, c6)
                if c9 == nil then
                    break
                end
                c6 = c9
                local c11 = V.a273.TypeByKey[c10.type].label
                if c10.type == "end" or c10.type == "else" then
                    c5 = math.max(0, c5 - 1)
                end
                local c12 = string.rep("|  ", c5) .. c9 .. "  " .. c11
                if c10.type == "if" or c10.type == "ifbr" then
                    c12 = c12 .. "  " .. string.upper(c10.check)
                end
                if c10.off then
                    c12 = c12 .. "  (OFF)"
                end
                local c13, c14, c15, c16, c17 = b59(b114, c9, c12, b115(c10), b62[c9] == true, {
                    [1] = {
                        [1] = "UP",
                        [2] = function()
                            b121(b123(c9), -1)
                        end,
                        [3] = "Move up (Ctrl + Up, or drag the row)"
                    },
                    [2] = {
                        [1] = "DN",
                        [2] = function()
                            b121(b123(c9), 1)
                        end,
                        [3] = "Move down (Ctrl + Down, or drag the row)"
                    },
                    [3] = {
                        [1] = "CPY",
                        [2] = function()
                            local d1 = b123(c9)
                            b120(b118(d1), d1[#d1] + 1)
                        end,
                        [3] = "Duplicate (Ctrl + D)"
                    },
                    [4] = {
                        [1] = "X",
                        [2] = function()
                            b119(b123(c9))
                        end,
                        [3] = "Delete (Del). UNDO brings it back"
                    }
                }, function()
                    if b130.moved then
                        return
                    end
                    if b25() or b130.multi then
                        if b62[c9] then
                            b62[c9] = nil
                        else
                            b62[c9] = true
                            b61 = c9
                        end
                        b69()
                        a72(b124() .. " steps selected", "ok")
                        return
                    end
                    if b26() and b61 then
                        local d2 = math.max(b61, c9)
                        local d1 = math.min(b61, c9)
                        b62 = {}
                        for d6 = d1, d2 do
                            b62[d6] = true
                        end
                        b69()
                        a72(d2 - d1 + 1 .. " steps selected", "ok")
                        return
                    end
                    local d7 = #V.a273.TypeByKey[c10.type].fields > 0
                    if b62[c9] and b124() == 1 and not d7 then
                        b62 = {}
                        b61 = nil
                        b69()
                        return
                    end
                    b108({[1] = c9})
                    b69()
                    if d7 then
                        b71(c9)
                    end
                end, b6[c10.type], function()
                    b140(c9)
                end, c10.off, true, true)
                b128[c9] = c13
                if c17 then
                    c17.InputBegan:Connect(function(d1)
                        if d1.UserInputType == Enum.UserInputType.MouseButton1 or d1.UserInputType == Enum.UserInputType.Touch then
                            b132("step", c9, d1)
                        end
                    end)
                end
                if c10.type == "else" or V.a273.IsBlockIf(c10) then
                    c5 = c5 + 1
                end
            end
            local c18 = c1 or b61
            task.defer(function()
                b114.CanvasPosition = c2
                if c18 and c18 >= 1 and c18 <= #c3 then
                    b142(c18)
                end
            end)
        end
        local b143 = nil
        local b144 = {[1] = "idle", [2] = "walk", [3] = "run", [4] = "dash", [5] = "air", [6] = "block", [7] = "default"}
        local function b145(c1, c2)
            local c3 = string.lower(c2)
            for c7, c8 in ipairs(c1.branches) do
                if string.lower(c8.name) == c3 then
                    return c7
                end
            end
            return nil
        end
        T1_0.b146 = function(c1, c2, c3)
            local c4 = string.lower(c2)
            local function c5(d1)
                for d5, d6 in ipairs(d1) do
                    if d6.type == "branch" and string.lower(d6.target) == c4 then
                        d6.target = c3
                    elseif d6.type == "ifbr" or d6.type == "if" then
                        for d10, d11 in ipairs({[1] = "yes", [2] = "no"}) do
                            if string.lower(d6[d11]) == c4 then
                                d6[d11] = c3
                            end
                        end
                    elseif d6.type == "switch" then
                        for d15, d16 in ipairs(b144) do
                            if string.lower(d6[d16]) == c4 then
                                d6[d16] = c3
                            end
                        end
                    end
                end
            end
            c5(c1.steps)
            for c9, c10 in ipairs(c1.branches) do
                c5(c10.steps)
            end
        end
        b143 = a40("CanvasGroup", {
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(156, 70),
            Size = UDim2.fromOffset(304, 246),
            Visible = false,
            Active = true,
            Parent = b1
        })
        a49(b143, a32.Accent)
        T1_0.b147 = b55(b143, "BRANCHES", 8, 6, 230, 18)
        a35(T1_0.b147, "TextColor3")
        b52(b143, "DONE", 248, 4, 50, 22, function()
            b143.Visible = false
        end)
        T1_0.b148 = b53(b143, "RENAME THE OPEN BRANCH", 8, 32, 200, 22)
        b52(b143, "+ NEW BRANCH", 212, 32, 86, 22, function()
            local c1 = b65()
            if #c1.branches >= 12 then
                a67("Moveset", "A move can have 12 branches.", 3)
                return
            end
            local c2 = #c1.branches + 1
            while b145(c1, "Branch " .. c2) do
                c2 = c2 + 1
            end
            table.insert(c1.branches, {name = "Branch " .. c2, steps = {}})
            b63 = #c1.branches
            b61 = nil
            b62 = {}
            V.a273.Save()
            b74()
            b69()
        end)
        T1_0.b149 = b56(b143, 8, 60, 290, 180)
        T1_0.b150 = function(c1)
            b63 = c1
            b61 = nil
            b62 = {}
            b143.Visible = false
            b114.CanvasPosition = Vector2.zero
            b69()
        end
        b74 = function()
            local c1 = b65()
            T1_0.b147.Text = "BRANCHES  \194\183  " .. string.upper(c1.name)
            local c2, c3 = b66()
            T1_0.b148.Text = c3 and c3.name or ""
            T1_0.b148.PlaceholderText = c3 and "RENAME THIS BRANCH" or "OPEN A BRANCH TO RENAME IT"
            T1_0.b148.TextEditable = c3 ~= nil
            b57(T1_0.b149)
            b59(T1_0.b149, 1, "MAIN", #c1.steps .. " steps  \194\183  runs when the move fires", b63 == 0, {}, function()
                T1_0.b150(0)
            end, a32.Accent)
            for c7 in ipairs(c1.branches) do
                b59(T1_0.b149, c7 + 1, string.upper(c8.name), #c8.steps .. " steps", b63 == c7, {
                    [1] = {
                        [1] = "X",
                        [2] = function()
                            table.remove(c1.branches, c7)
                            if b63 == c7 then
                                b63 = 0
                            elseif b63 > c7 then
                                b63 = b63 - 1
                            end
                            V.a273.Save()
                            b74()
                            b69()
                        end,
                        [3] = "Delete this branch"
                    }
                }, function()
                    T1_0.b150(c7)
                end, b6.branch)
            end
            b143.Visible = true
        end
        T1_0.b148.FocusLost:Connect(function()
            local c1 = b65()
            local c2, c3 = b66()
            if not c3 then
                return
            end
            local c4 = string.sub(a7(T1_0.b148.Text), 1, 20)
            local c5 = string.lower(c4)
            if c4 == "" or c5 == "main" or c4 == "-" then
                T1_0.b148.Text = c3.name
                return
            end
            local c6 = b145(c1, c4)
            if c6 and c1.branches[c6] ~= c3 then
                a67("Moveset", "Another branch already has that name.", 3)
                T1_0.b148.Text = c3.name
                return
            end
            local c7 = c3.name
            c3.name = c4
            T1_0.b146(c1, c7, c4)
            V.a273.Save()
            b74()
            b69()
        end)
        T1_0.b151 = a40("CanvasGroup", {
            BackgroundColor3 = a32.Background,
            Position = UDim2.fromOffset(156, 70),
            Size = UDim2.fromOffset(304, 246),
            Visible = false,
            Active = true,
            Parent = b1
        })
        a49(T1_0.b151, a32.Accent)
        T1_0.b152 = b55(T1_0.b151, "EDIT STEP", 8, 5, 142, 18)
        a35(T1_0.b152, "TextColor3")
        T1_0.b155 = ""
        T1_0.b154 = {}
        T1_0.b153 = nil
        T1_0.b156 = nil
        T1_0.b157 = false
        T1_0.b158 = function(c1)
            local c2 = b66()
            local c3 = (T1_0.b153 or 0) + c1
            if c3 >= 1 and c3 <= #c2 then
                b71(c3)
            end
        end
        T1_0.b159 = b52(T1_0.b151, "<", 154, 4, 22, 20, function()
            T1_0.b158(-1)
        end)
        T1_0.b160 = b52(T1_0.b151, ">", 180, 4, 22, 20, function()
            T1_0.b158(1)
        end)
        T1_0.b161 = b52(T1_0.b151, "TEST", 206, 4, 44, 20, function()
            b82()
        end)
        T1_0.b162 = b52(T1_0.b151, "DONE", 254, 4, 44, 20, function()
            b78()
        end)
        T1_0.b163 = T1_0.b159
        T1_0.b164 = T1_0.b160
        T1_0.b164.TextSize = 11
        T1_0.b163.TextSize = 11
        b37(T1_0.b159, "Previous step (Up arrow when you are not typing)")
        b37(T1_0.b160, "Next step (Down arrow when you are not typing)")
        b37(T1_0.b161, "Test the move without closing this (Ctrl + T)")
        b37(T1_0.b162, "Close (Esc or Enter)")
        T1_0.b165 = a40("TextLabel", {
            TextSize = 9,
            TextColor3 = a32.Muted,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Position = UDim2.fromOffset(8, 28),
            Size = UDim2.fromOffset(288, 24),
            Parent = T1_0.b151
        })
        T1_0.b166 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(0, 56),
            Size = UDim2.new(1, 0, 1, -56),
            ScrollBarThickness = 3,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = T1_0.b151
        })
        a35(T1_0.b166, "ScrollBarImageColor3")
        a40("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T1_0.b166})
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 8),
            PaddingRight = UDim.new(0, 10),
            PaddingBottom = UDim.new(0, 8),
            Parent = T1_0.b166
        })
        T1_0.b167 = setmetatable({}, {__mode = "k"})
        T1_0.b168 = function(c1, c2)
            if (c1.type == "if" or c1.type == "ifbr") and c2.k == "value" then
                return b20[c1.check] and 5 or 1
            end
            local c3 = c1.type and b17[c1.type]
            return c3 and c3[c2.k] or b16[c2.k] or 1
        end
        T1_0.b169 = function(c1, c2, c3)
            if c2.k == "smoothTime" then
                return math.clamp(c3, 0, 5)
            elseif c2.k == "turn" then
                return math.clamp(c3, 0.05, 1)
            elseif c2.k == "weight" then
                return math.clamp(c3, 0, 1)
            elseif c2.k == "comboLen" then
                return math.max(1, math.floor(c3 + 0.5))
            elseif c2.k == "skip" then
                return math.max(0, math.floor(c3 + 0.5))
            elseif c2.k == "keep" then
                return math.clamp(c3, 0, 1)
            elseif c2.k == "speed" and c1.type == "dash" then
                return math.max(0, c3)
            elseif c2.k == "value" and (c1.type == "if" or c1.type == "ifbr") then
                if c1.check == "HP above %" or c1.check == "HP below %" then
                    return math.clamp(c3, 0, 100)
                elseif c1.check ~= "Tag at least" then
                    return math.max(0, c3)
                end
            elseif b18[c2.k] then
                return math.max(0, c3)
            end
            return c3
        end
        T1_0.b170 = function(c1, c2, c3, c4, c5, c6, c7)
            local function c8(d1, d2, d3)
                local d4 = tonumber(c3()) or 0
                if d3 then
                    d4 = tonumber(c1.Text) or d4
                end
                local d5 = c6(d4 + d1 * c5() * (d2 and 10 or 1))
                d5 = math.floor(d5 * 1000 + 0.5) / 1000
                c4(d5)
                c1.Text = b24(c3())
                if d3 then
                    c1.CursorPosition = #c1.Text + 1
                end
                c7(true, false)
            end
            T1_0.b167[c1] = c8
            c1.InputChanged:Connect(function(d1)
                if d1.UserInputType == Enum.UserInputType.MouseWheel and c1:IsFocused() then
                    a73("Moveset", c8, d1.Position.Z > 0 and 1 or -1, b26(), true)
                end
            end)
            c1.Focused:Connect(function()
                c2.ScrollingEnabled = false
            end)
            c1.FocusLost:Connect(function(d1)
                c2.ScrollingEnabled = true
                local d2 = tonumber(c1.Text)
                if d2 then
                    c4(c6(d2))
                end
                c1.Text = b24(c3())
                c7(false, d1)
            end)
            return c8
        end
        a39(UserInputService.InputBegan:Connect(function(c1)
            if c1.KeyCode ~= Enum.KeyCode.Up and c1.KeyCode ~= Enum.KeyCode.Down then
                return
            end
            local c2 = UserInputService:GetFocusedTextBox()
            local c3 = c2 and T1_0.b167[c2]
            if c3 then
                a73("Moveset", c3, c1.KeyCode == Enum.KeyCode.Up and 1 or -1, b26(), true)
            end
        end))
        T1_0.b171 = function(c1, c2, c3, c4)
            for c8, c9 in ipairs(c1:GetChildren()) do
                if c9:IsA("Frame") or c9:IsA("TextLabel") then
                    c9:Destroy()
                end
            end
            c1.ScrollingEnabled = true
            local c12 = c4.ctrlW or 146
            local c11 = c4.ctrlX or 136
            local c10 = c4.labelW or 132
            local c13 = {}
            local c14 = 0
            local function c15(d1, d2, d3)
                if d2 then
                    b50()
                else
                    V.a273.Save()
                end
                if c4.onChange then
                    c4.onChange(d1)
                end
                if c4.onCommit then
                    c4.onCommit(d1, d3)
                elseif d3 then
                    for d7, d8 in ipairs(c13) do
                        if d8.k == d1.k then
                            local d9 = c13[d7 + 1]
                            if d9 then
                                task.defer(function()
                                    if d9.tb.Parent then
                                        b54(d9.tb)
                                    end
                                end)
                            end
                            break
                        end
                    end
                end
            end
            local c18, c17, c16 = ipairs(c3)
            while true do
                local c20 = c18(c17, c16)
                if c19 == nil then
                    break
                end
                c16 = c19
                if not c4.show or c4.show(c20) then
                    c14 = c14 + 1
                    local c21 = a40("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 24), LayoutOrder = c14, Parent = c1})
                    local c22 = b55(c21, string.upper(c4.label and c4.label(c20) or c20.label), 0, 0, c10, 24, true)
                    if c20.kind == "number" then
                        local c23 = b53(c21, "", c11 + 24, 1, c12 - 48, 22)
                        c23.TextXAlignment = Enum.TextXAlignment.Center
                        c23.Text = b24(c2[c20.k])
                        table.insert(c13, {k = c20.k, tb = c23})
                        local c24 = T1_0.b170(c23, c1, function()
                            return c2[c20.k]
                        end, function(d1)
                            c2[c20.k] = d1
                        end, function()
                            return T1_0.b168(c2, c20)
                        end, function(d1)
                            return T1_0.b169(c2, c20, d1)
                        end, function(d1, d2)
                            c15(c20, d1, d2)
                        end)
                        if c20.k == "smoothTime" then
                            b37(c23, "Custom easing duration in seconds (0 to 5). Type a value such as 0.25 for a quarter second.")
                        end
                        local c25 = b52(c21, "-", c11, 1, 22, 22, function()
                            c24(-1, b26())
                        end)
                        local c26 = b52(c21, "+", c11 + c12 - 22, 1, 22, 22, function()
                            c24(1, b26())
                        end)
                        local c27 = c25
                        local c28 = c26
                        c28.TextSize = 12
                        c27.TextSize = 12
                        b37(c25, "Lower it by " .. b24(T1_0.b168(c2, c20)) .. " (Shift = 10x). Or click in and use the wheel / Up / Down.")
                        b37(c26, "Raise it by " .. b24(T1_0.b168(c2, c20)) .. " (Shift = 10x). Or click in and use the wheel / Up / Down.")
                    elseif c20.kind == "text" then
                        local c29 = b53(c21, "", c11, 1, c12, 22)
                        c29.Text = tostring(c2[c20.k])
                        table.insert(c13, {k = c20.k, tb = c29})
                        c29.FocusLost:Connect(function(d1)
                            c2[c20.k] = a7(c29.Text)
                            c15(c20, false, d1)
                        end)
                    elseif c20.kind == "item" then
                        local c30 = b53(c21, "ITEM NAME", c11, 1, c12 - 48, 22)
                        c30.Text = tostring(c2[c20.k])
                        table.insert(c13, {k = c20.k, tb = c30})
                        c30.FocusLost:Connect(function(d1)
                            c2[c20.k] = a7(c30.Text)
                            c15(c20, false, d1)
                        end)
                        local function c31(d1)
                            c2[c20.k] = d1
                            if c30.Parent then
                                c30.Text = d1
                            end
                            c15(c20, false, false)
                        end
                        local c32 = nil
                        c32 = b52(c21, "LIST", c11 + c12 - 44, 1, 44, 22, function()
                            local d1 = {[1] = {text = "ITEMS IN THIS SERVER", disabled = true}}
                            if c20.k == "item" then
                                table.insert(d1, {
                                    text = "Any item",
                                    hint = "empty name",
                                    fn = function()
                                        c31("")
                                    end
                                })
                            end
                            local d2, d3 = pcall(a147.Scan)
                            d3 = d2 and type(d3) == "table" and d3 or {}
                            for d7, d8 in ipairs(d3) do
                                local d9 = type(d8) == "table" and d8.Name or tostring(d8)
                                table.insert(d1, {
                                    text = d9,
                                    hint = type(d8) == "table" and d8.Description or nil,
                                    fn = function()
                                        c31(d9)
                                    end
                                })
                            end
                            if #d3 == 0 then
                                table.insert(d1, {text = "None found yet: get closer to items", disabled = true})
                            end
                            b47(d1, {anchor = c32})
                        end)
                        b37(c32, "Pick from the same items the Item Menu shows (items in this server, and ones you saw before).")
                    elseif c20.kind == "anim" then
                        local c33 = b53(c21, "ID (EMPTY = OFF)", c11, 1, c12 - 48, 22)
                        c33.Text = tostring(c2[c20.k])
                        table.insert(c13, {k = c20.k, tb = c33})
                        local c34 = a40("TextLabel", {
                            TextSize = 9,
                            TextColor3 = a32.Muted,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            TextTruncate = Enum.TextTruncate.AtEnd,
                            Position = UDim2.fromOffset(0, 13),
                            Size = UDim2.fromOffset(c10, 11),
                            Parent = c21
                        })
                        local function c35()
                            local d1 = V.a273.IdOf(c2[c20.k])
                            local d2 = d1 and V.a273.NameOf(d1) or nil
                            c34.Text = d2 or ""
                            c22.Size = UDim2.fromOffset(c10, d2 and 13 or 24)
                        end
                        c35()
                        c33.FocusLost:Connect(function(d1)
                            c2[c20.k] = V.a273.IdOf(c33.Text) or ""
                            c33.Text = c2[c20.k]
                            c35()
                            c15(c20, false, d1)
                        end)
                        b52(c21, "PICK", c11 + c12 - 44, 1, 44, 22, function()
                            b72(function(e1)
                                c2[c20.k] = e1
                                if c33.Parent then
                                    c33.Text = e1
                                    c35()
                                end
                                c15(c20, false, false)
                            end, "USE")
                        end)
                    elseif c20.kind == "timeline" then
                        local c36 = math.floor((c12 - 8) / 3)
                        local c37 = {
                            [1] = "Second it starts from",
                            [2] = "Second it stops at (0 = full length)",
                            [3] = "Speed (1 = normal)"
                        }
                        local c40, c39, c38 = ipairs(c20.keys)
                        while true do
                            local c42 = c40(c39, c38)
                            if c41 == nil then
                                break
                            end
                            c38 = c41
                            local c43 = b53(c21, ({[1] = "START", [2] = "END", [3] = "SPEED"})[c41], c11 + (c41 - 1) * (c36 + 4), 1, c36, 22)
                            c43.Text = b24(c2[c42])
                            local c44 = {k = c42, kind = "number"}
                            table.insert(c13, {k = c42, tb = c43})
                            T1_0.b170(c43, c1, function()
                                return c2[c42]
                            end, function(d1)
                                c2[c42] = math.max(0, d1)
                            end, function()
                                return 0.1
                            end, function(d1)
                                return math.max(0, d1)
                            end, function(d1, d2)
                                c15(c44, d1, d2)
                            end)
                            b37(c43, c37[c41] .. ". Click in, then use the wheel or Up / Down to change it.")
                        end
                    elseif c20.kind == "bool" then
                        local c45 = nil
                        c45 = b52(c21, c2[c20.k] and "ON" or "OFF", c11, 1, c12, 22, function()
                            c2[c20.k] = not c2[c20.k]
                            c45.Text = c2[c20.k] and "ON" or "OFF"
                            c15(c20, false, false)
                        end)
                    elseif c20.kind == "choice" then
                        local c46 = nil
                        c46 = b52(c21, string.upper(tostring(c2[c20.k])), c11, 1, c12, 22, function()
                            if #c20.options <= 2 then
                                local d1 = table.find(c20.options, c2[c20.k]) or 1
                                c2[c20.k] = c20.options[d1 % #c20.options + 1]
                                c46.Text = string.upper(c2[c20.k])
                                c15(c20, false, false)
                                return
                            end
                            local d2 = {}
                            local d5, d4, d3 = ipairs(c20.options)
                            while true do
                                local d7 = d5(d4, d3)
                                if d6 == nil then
                                    break
                                end
                                d3 = d6
                                table.insert(d2, {
                                    text = string.upper(d7),
                                    on = d7 == c2[c20.k],
                                    fn = function()
                                        if c2[c20.k] == d7 then
                                            return
                                        end
                                        c2[c20.k] = d7
                                        if c46.Parent then
                                            c46.Text = string.upper(d7)
                                        end
                                        c15(c20, false, false)
                                    end
                                })
                            end
                            b47(d2, {anchor = c46})
                        end)
                        c46.TextTruncate = Enum.TextTruncate.AtEnd
                    end
                    if c4.after and c4.after[c20.k] then
                        c14 = c4.after[c20.k](c1, c14)
                    end
                end
            end
            if not c4.keepScroll then
                c1.CanvasPosition = Vector2.zero
            end
            return c13, c14
        end
        T1_0.b172 = setmetatable({}, {__mode = "k"})
        T1_0.b173 = nil
        T1_0.b174 = {}
        T1_0.b175 = function(c1)
            return math.floor(c1 * 100 + 0.5) / 100
        end
        T1_0.b176 = function(c1, c2, c3, c4, c5)
            local c6 = {}
            local c7 = a40("Frame", {
                BackgroundTransparency = 1,
                Position = UDim2.fromOffset(c2, c3),
                Size = UDim2.fromOffset(c4, 62),
                Parent = c1
            })
            c6.root = c7
            local c8 = b55(c7, "", 0, 0, c4, 14, true)
            c8.TextSize = 9
            local c9 = a40("Frame", {
                BackgroundColor3 = a32.Background,
                Position = UDim2.fromOffset(0, 16),
                Size = UDim2.fromOffset(c4, 18),
                Parent = c7
            })
            a49(c9, a32.Stroke)
            local function c10(d1)
                local d2 = a40("Frame", {BackgroundTransparency = d1, Size = UDim2.fromScale(0, 1), Parent = c9})
                a35(d2, "BackgroundColor3")
                return d2
            end
            local c13 = c10(0.45)
            local c12 = c10(0.45)
            local c11 = c10(0.8)
            local c14 = a40("Frame", {
                BackgroundColor3 = a32.Text,
                AnchorPoint = Vector2.new(0.5, 0),
                Size = UDim2.new(0, 2, 1, 0),
                Visible = false,
                ZIndex = 4,
                Parent = c9
            })
            local c15 = a40("TextButton", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 2, Parent = c9})
            local function c16()
                local d1 = a40("TextButton", {
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0, 0.5),
                    Size = UDim2.new(0, 6, 1, 6),
                    ZIndex = 3,
                    Parent = c9
                })
                a35(d1, "BackgroundColor3")
                return d1
            end
            local c18 = c16()
            local c17 = c16()
            b37(c17, "Drag: where the animation starts")
            b37(c18, "Drag: where it stops (all the way right = full length)")
            b37(c15, "Click or drag to scrub through the animation. Light parts at the ends are the fade in / fade out.")
            local function c19()
                return V.a273.AnimLength(c5.id())
            end
            local function c20(d1)
                local d2 = c11
                local d3 = c12
                local d4 = c13
                local d5 = c17
                local d6 = c18
                d6.Visible = d1
                d5.Visible = d1
                d4.Visible = d1
                d3.Visible = d1
                d2.Visible = d1
            end
            c6.Opts = function(d1)
                return {
                    start = c5.get("start"),
                    stop = c5.get("stop"),
                    speed = c5.get("speed"),
                    fadeIn = c5.get("fadeIn"),
                    fadeOut = c5.get("fadeOut"),
                    looped = c5.get("looped"),
                    layer = c5.get("layer"),
                    weight = c5.get("weight"),
                    at = d1 and d1.at,
                    paused = d1 and d1.paused
                }
            end
            c6.Play = function()
                local d1 = c5.id()
                if not d1 then
                    a67("Moveset", "Set the animation ID first.", 3)
                    return
                end
                task.spawn(function()
                    local e1, e2 = V.a273.PreviewPlay(d1, c6.Opts())
                    if e1 then
                        a72(string.format("Preview: %s (%.2fs)", V.a273.NameOf(d1) or d1, e2), "accent")
                        if c7.Parent then
                            c6.Render()
                        end
                    elseif e2 ~= "stopped" then
                        a67("Moveset", "Preview failed: " .. tostring(e2) .. ".", 4)
                    end
                end)
            end
            c6.TogglePlay = function()
                local d1 = V.a273.PreviewState()
                if d1 and d1.id == c5.id() then
                    V.a273.PreviewPause(not d1.paused)
                else
                    c6.Play()
                end
            end
            local c21 = b52(c7, "PLAY", 0, 40, 42, 22, function()
                c6.TogglePlay()
            end)
            local c22 = b52(c7, "STOP", 46, 40, 42, 22, function()
                V.a273.PreviewStop(c5.get("fadeOut"))
            end)
            local c23 = nil
            c23 = b52(c7, "LOOP OFF", 92, 40, 54, 22, function()
                c5.set("looped", not c5.get("looped"))
                V.a273.PreviewLooped(c5.get("looped"))
                c23.Text = c5.get("looped") and "LOOP ON" or "LOOP OFF"
                if c5.commit then
                    c5.commit()
                end
            end)
            b37(c21, "Play / pause the preview on your character")
            b37(c22, "Stop the preview (uses the fade out)")
            b37(c23, "Loop between the start and end")
            c6.controlsX = 150
            c6.Render = function()
                local d1 = c5.id()
                c23.Text = c5.get("looped") and "LOOP ON" or "LOOP OFF"
                if not d1 then
                    c6.base = c5.empty or "Set an animation ID first."
                    c8.Text = c6.base
                    c20(false)
                    return
                end
                local d2 = c19()
                if not d2 then
                    local d3 = T1_0.b174[d1]
                    c20(false)
                    if d3 == true then
                        c6.base = "Loading the timeline..."
                    elseif d3 and os.clock() - d3 < 5 then
                        c6.base = "Press PLAY to load the timeline."
                    else
                        c6.base = "Loading the timeline..."
                        T1_0.b174[d1] = true
                        task.spawn(function()
                            local e1 = V.a273.ProbeLength(d1)
                            T1_0.b174[d1] = not e1 and os.clock() or nil
                            if c7.Parent then
                                c6.Render()
                            end
                        end)
                    end
                    c8.Text = c6.base
                    return
                end
                c20(true)
                local d4 = math.clamp(c5.get("start"), 0, d2)
                local d5 = c5.get("stop")
                if d5 <= 0 or d5 > d2 then
                    d5 = d2
                end
                d5 = math.max(d5, d4)
                local d6 = math.max(math.abs(c5.get("speed")), 0.01)
                local d7 = math.min(c5.get("fadeIn") * d6, d5 - d4)
                local d8 = math.min(c5.get("fadeOut") * d6, d5 - d4)
                local d9 = c11
                local d10 = c11
                d10.Size = UDim2.fromScale((d5 - d4) / d2, 1)
                d9.Position = UDim2.fromScale(d4 / d2, 0)
                local d11 = c12
                local d12 = c12
                d12.Size = UDim2.fromScale(d7 / d2, 1)
                d11.Position = UDim2.fromScale(d4 / d2, 0)
                local d13 = c13
                local d14 = c13
                d14.Size = UDim2.fromScale(d8 / d2, 1)
                d13.Position = UDim2.fromScale((d5 - d8) / d2, 0)
                c17.Position = UDim2.fromScale(d4 / d2, 0.5)
                c18.Position = UDim2.fromScale(d5 / d2, 0.5)
                c6.base = string.format("%.2f - %.2fs of %.2fs", d4, d5, d2) .. "  \194\183  fade " .. b24(c5.get("fadeIn")) .. " / " .. b24(c5.get("fadeOut")) .. "s"
                c8.Text = c6.base
            end
            local function c24(d1)
                local d2 = c19()
                if not d2 then
                    return nil
                end
                local d3 = c9.AbsolutePosition.X
                return math.clamp((d1 - d3) / math.max(c9.AbsoluteSize.X, 1), 0, 1) * d2
            end
            local function c25(d1)
                local d2 = c5.id()
                if not d1 or not d2 then
                    return
                end
                local d3 = V.a273.PreviewState()
                if d3 and d3.id == d2 then
                    V.a273.PreviewSeek(d1)
                elseif not c6.starting then
                    c6.starting = true
                    task.spawn(function()
                        V.a273.PreviewPlay(d2, c6.Opts({at = d1, paused = true}))
                        c6.starting = false
                    end)
                end
            end
            local function c26(d1)
                return d1.UserInputType == Enum.UserInputType.MouseButton1 or d1.UserInputType == Enum.UserInputType.Touch
            end
            c17.InputBegan:Connect(function(d1)
                if not c26(d1) then
                    return
                end
                T1_0.b173 = {
                    unlock = a60.LockScroll(c9),
                    move = function(e1)
                        local e3 = c19()
                        local e2 = c24(e1)
                        if not e2 then
                            return
                        end
                        local e4 = c5.get("stop")
                        if e4 <= 0 then
                            e4 = e3
                        end
                        c5.set("start", T1_0.b175(math.max(0, math.min(e2, e4 - 0.05))))
                        c6.Render()
                    end,
                    done = c5.commit
                }
            end)
            c18.InputBegan:Connect(function(d1)
                if not c26(d1) then
                    return
                end
                T1_0.b173 = {
                    unlock = a60.LockScroll(c9),
                    move = function(e1)
                        local e3 = c19()
                        local e2 = c24(e1)
                        if not e2 then
                            return
                        end
                        if e2 >= e3 - 0.02 then
                            c5.set("stop", 0)
                        else
                            c5.set("stop", T1_0.b175(math.max(e2, c5.get("start") + 0.05)))
                        end
                        c6.Render()
                    end,
                    done = c5.commit
                }
            end)
            c15.InputBegan:Connect(function(d1)
                if not c26(d1) then
                    return
                end
                c25(c24(d1.Position.X))
                T1_0.b173 = {
                    unlock = a60.LockScroll(c9),
                    move = function(e1)
                        c25(c24(e1))
                    end
                }
            end)
            c6.Tick = function()
                local d1 = c5.id()
                local d2 = V.a273.PreviewState()
                local d3 = d2 ~= nil and d1 ~= nil and d2.id == d1
                local d4 = c19()
                if d3 and not d4 and d2.length > 0 then
                    c6.Render()
                    d4 = c19()
                end
                if d3 and d4 then
                    c14.Visible = true
                    c14.Position = UDim2.fromScale(math.clamp(d2.time / d4, 0, 1), 0)
                    c8.Text = string.format("%.2fs  \194\183  ", d2.time) .. (c6.base or "")
                else
                    c14.Visible = false
                    if c6.base and c8.Text ~= c6.base then
                        c8.Text = c6.base
                    end
                end
                local d5 = d3 and not d2.paused and "PAUSE" or "PLAY"
                if c21.Text ~= d5 then
                    c21.Text = d5
                end
            end
            T1_0.b172[c6] = true
            c6.Render()
            return c6
        end
        a39(UserInputService.InputChanged:Connect(function(c1)
            if T1_0.b173 and (c1.UserInputType == Enum.UserInputType.MouseMovement or c1.UserInputType == Enum.UserInputType.Touch) then
                a73("Moveset", T1_0.b173.move, c1.Position.X)
            end
        end))
        a39(UserInputService.InputEnded:Connect(function(c1)
            if T1_0.b173 and (c1.UserInputType == Enum.UserInputType.MouseButton1 or c1.UserInputType == Enum.UserInputType.Touch) then
                local c2 = T1_0.b173
                T1_0.b173 = nil
                c2.unlock()
                if c2.done then
                    a73("Moveset", c2.done)
                end
            end
        end))
        a39(b2.RenderStepped:Connect(function()
            if not b1.Visible or not a79 then
                return
            end
            for c4 in pairs(T1_0.b172) do
                if c4.root.Parent then
                    c4.Tick()
                else
                    T1_0.b172[c4] = nil
                end
            end
        end))
        T1_0.b177 = {tp = true, vel = true, curve = true, turn = true, face = true}
        T1_0.b178 = a57.Get("MovesetGhost") ~= false
        T1_0.b179 = nil
        T1_0.b180 = {folder = nil, segs = {}, nextAt = 0, shown = false}
        T1_0.b181 = function(c1, c2, c3)
            local c4 = Instance.new("Part")
            c4.Name = c1
            c4.Anchored = true
            c4.CanCollide = false
            c4.CanTouch = false
            c4.CastShadow = false
            pcall(function()
                c4.CanQuery = false
            end)
            c4.Material = Enum.Material.Neon
            c4.Size = c2
            if c3 then
                c4.Shape = c3
            end
            c4.Transparency = 1
            c4.Parent = T1_0.b180.folder
            return c4
        end
        T1_0.b180.ensure = function()
            if T1_0.b180.folder then
                return
            end
            local c1 = workspace.CurrentCamera
            local c2 = c1 and c1:FindFirstChild("RYOIKI_Ghost")
            if c2 then
                c2:Destroy()
            end
            local c3 = Instance.new("Folder")
            c3.Name = "RYOIKI_Ghost"
            T1_0.b180.folder = c3
            T1_0.b180.segs = {}
            T1_0.b180.body = T1_0.b181("Body", Vector3.new(2.2, 5.4, 1.2))
            T1_0.b180.nose = T1_0.b181("Nose", Vector3.new(0.4, 0.4, 1.6))
            T1_0.b180.mark = T1_0.b181("Target", Vector3.new(1.6, 1.6, 1.6), Enum.PartType.Ball)
        end
        T1_0.b180.hide = function()
            if T1_0.b180.shown and T1_0.b180.folder then
                T1_0.b180.folder.Parent = nil
            end
            T1_0.b180.shown = false
        end
        T1_0.b182 = function(c1, c2, c3, c4, c5)
            for c9 = 1, #c2 - 1 do
                local c11 = c2[c9 + 1]
                local c10 = c2[c9]
                local c12 = (c11 - c10)["Magnitude"]
                if c12 > 0.02 and c1 < 200 then
                    c1 = c1 + 1
                    local c13 = T1_0.b180.segs[c1]
                    if not c13 then
                        c13 = T1_0.b181("Path", Vector3.new(0.2, 0.2, 0.2))
                        T1_0.b180.segs[c1] = c13
                    end
                    c13.Size = Vector3.new(c5, c5, c12)
                    c13.CFrame = CFrame.lookAt((c10 + c11) / 2, c11)
                    c13.Color = c3
                    c13.Transparency = c4
                end
            end
            return c1
        end
        T1_0.b180.tick = function()
            local c1 = T1_0.b153 and T1_0.b151.Visible and b66() or nil
            local c2 = c1 and c1[T1_0.b153]
            if not (T1_0.b178 and c2 and T1_0.b177[c2.type] and b1.Visible and a79) then
                T1_0.b180.hide()
                return
            end
            local c3 = os.clock()
            if c3 < T1_0.b180.nextAt then
                return
            end
            T1_0.b180.nextAt = c3 + 0.1
            local c4, c5, c6 = pcall(V.a273.GhostPath, c2)
            if not c4 or not c5 then
                T1_0.b180.hide()
                if T1_0.b179 and T1_0.b179.Parent then
                    T1_0.b179.Text = c4 and tostring(c6 or "Nothing to show") or "Preview error"
                    T1_0.b179.TextColor3 = a32.Warn
                end
                return
            end
            T1_0.b180.ensure()
            local c7 = workspace.CurrentCamera
            if T1_0.b180.folder.Parent ~= c7 then
                T1_0.b180.folder.Parent = c7
            end
            T1_0.b180.shown = true
            local c8 = c5.blocked and a32.Warn or a32.Accent
            local c9 = T1_0.b182(0, c5.points or {}, c8, 0.25, 0.18)
            c9 = T1_0.b182(c9, c5.tail or {}, a32.Muted, 0.55, 0.12)
            for c13 = c9 + 1, #T1_0.b180.segs do
                T1_0.b180.segs[c13].Transparency = 1
            end
            if c5.ghost then
                T1_0.b180.body.CFrame = c5.ghost * CFrame.new(0, -0.3, 0)
                T1_0.b180.body.Color = c8
                T1_0.b180.body.Transparency = 0.7
                T1_0.b180.nose.CFrame = c5.ghost * CFrame.new(0, 0.6, -1.3)
                T1_0.b180.nose.Color = c8
                T1_0.b180.nose.Transparency = 0.2
            else
                T1_0.b180.body.Transparency = 1
                T1_0.b180.nose.Transparency = 1
            end
            if c5.target then
                T1_0.b180.mark.CFrame = CFrame.new(c5.target)
                T1_0.b180.mark.Color = a32.Warn
                T1_0.b180.mark.Transparency = 0.45
            else
                T1_0.b180.mark.Transparency = 1
            end
            if T1_0.b179 and T1_0.b179.Parent then
                T1_0.b179.Text = c5.info or ""
                T1_0.b179.TextColor3 = c5.blocked and a32.Warn or a32.Muted
            end
        end
        a39(b2.RenderStepped:Connect(function()
            local c1 = pcall(T1_0.b180.tick)
            if not c1 then
                T1_0.b180.hide()
            end
        end))
        T1_0.b183 = function(c1)
            local c2 = 0
            for c6, c7 in ipairs(b9) do
                if c1[c7] and c1[c7] ~= "" then
                    c2 = c2 + 1
                end
            end
            return c2
        end
        T1_0.b184 = a57.Get("MovesetAdvanced") == true
        T1_0.b185 = function(c1, c2)
            local c4 = c2.k
            local c3 = c1.type
            if c4 == "smoothTime" then
                return c1.smooth == "Custom"
            end
            if c3 == "anim" and b10[c4] then
                return T1_0.b157
            elseif c3 == "anim" and c4 == "loopFor" then
                return c1.looped
            elseif c3 == "if" or c3 == "ifbr" then
                if c4 == "value" then
                    return b8[c1.check] ~= nil
                elseif c4 == "tag" then
                    return c1.check == "Tag at least"
                elseif c4 == "item" then
                    return c1.check == "Has item" or c1.check == "Item in hand"
                elseif c4 == "anim" then
                    return c1.check == "Game anim played"
                elseif c4 == "from" then
                    return b19[c1.check] == true
                elseif c4 == "skip" then
                    return c1.onFail == "Skip steps"
                elseif c4 == "no" then
                    return c3 == "ifbr" or c1.onFail == V.a273.BranchIf
                elseif c4 == "mode" and c3 == "if" then
                    return c1.yes ~= "-" or c1.onFail == V.a273.BranchIf and c1.no ~= "-"
                end
            elseif c3 == "key" then
                if c4 == "key" then
                    return c1.mode == "Press key"
                elseif c4 == "time" then
                    return c1.mode == "Press key" or c1.mode == "Game move"
                elseif c4 == "slot" then
                    return c1.mode == "Game move"
                elseif c4 == "move" then
                    return c1.mode == "Use move"
                end
            elseif c3 == "turn" then
                if c4 == "pitch" or c4 == "roll" then
                    return c1.mode == "Custom"
                end
                if c4 == "smooth" then
                    return true
                end
            elseif c3 == "tp" then
                local c5 = c1.mode == "Target" or c1.mode == "Behind target"
                if c4 == "smooth" then
                    return true
                elseif c4 == "range" then
                    return c5 or c1.mode == "Cursor"
                elseif c4 == "prediction" then
                    return c5
                elseif c4 == "x" or c4 == "z" then
                    return c1.mode ~= "Cursor"
                end
            elseif c3 == "face" then
                if c4 == "range" or c4 == "prediction" then
                    return c1.mode == "Target" or c1.mode == "Target 360"
                elseif c4 == "smooth" then
                    return true
                end
            elseif c3 == "dash" then
                local c6 = c1.dir == "To target" or c1.dir == "Away from target"
                if c4 == "range" then
                    return c6
                elseif c4 == "stopNear" then
                    return c1.dir == "To target"
                elseif c4 == "ease" or c4 == "wall" or c4 == "waitEnd" or c4 == "keep" then
                    return c1.time > 0
                elseif c4 == "smooth" then
                    return c1.time > 0 or c1.smooth ~= "Off"
                end
            elseif c3 == "vel" or c3 == "curve" then
                local c7 = c1.mode == "Target" or c1.mode == "Away from target"
                if c4 == "smooth" then
                    local c8 = c3 == "curve" and c1.time or c1.motion == "Curve" and c1.curveTime or c1.time
                    return c8 > 0 or c1.smooth ~= "Off"
                end
                if c3 == "vel" then
                    if c4 == "y" or c4 == "time" then
                        return c1.motion ~= "Curve"
                    elseif c4 == "yStart" or c4 == "yEnd" or c4 == "shape" or c4 == "curveTime" then
                        return c1.motion == "Curve"
                    elseif c4 == "range" or c4 == "prediction" then
                        return c7
                    elseif c4 == "stopNear" then
                        return c1.mode == "Target"
                    elseif c4 == "ramp" then
                        return c1.motion ~= "Curve" and c1.time > 0
                    elseif c4 == "endMove" then
                        return c1.motion == "Curve" and c1.curveTime > 0 or c1.motion ~= "Curve" and c1.time > 0
                    end
                end
                if c4 == "steer" then
                    return c1.mode == "Facing"
                elseif c4 == "faceDir" then
                    return c1.mode == "Facing" and c1.steer ~= "Off" or c7
                elseif c4 == "stopWall" then
                    if c3 == "vel" and c1.motion == "Curve" then
                        return c1.curveTime > 0
                    end
                    return c1.time > 0
                end
            end
            return true
        end
        T1_0.b186 = function(c1, c2)
            local c3 = V.a273.Advanced[c1.type]
            return c3 ~= nil and c3[c2.k] == true and not T1_0.b184 and c1[c2.k] == c2.default
        end
        T1_0.b187 = function(c1, c2)
            return T1_0.b185(c1, c2) and not T1_0.b186(c1, c2)
        end
        T1_0.b188 = function(c1, c2)
            if (c1.type == "if" or c1.type == "ifbr") and c2.k == "value" then
                return b8[c1.check] or c2.label
            end
            if c1.type == "tp" and c2.k == "z" then
                if c1.mode == "Behind target" then
                    return "Distance behind (studs)"
                elseif c1.mode == "Target" then
                    return "Distance in front (studs)"
                end
            end
            if (c1.type == "vel" or c1.type == "curve") and c2.k == "z" and (c1.mode == "Target" or c1.mode == "Away from target") then
                return c1.mode == "Target" and "Z (toward target)" or "Z (away from target)"
            end
            return c2.label
        end
        T1_0.b189 = function(c1)
            local c2 = V.a273.TypeByKey[c1.type]
            if c1.type ~= "branch" and c1.type ~= "switch" and c1.type ~= "ifbr" and c1.type ~= "if" then
                return c2.fields
            end
            local c3 = {[1] = "-", [2] = "Main"}
            for c7, c8 in ipairs(b65().branches) do
                table.insert(c3, c8.name)
            end
            local c9 = {}
            for c13, c14 in ipairs(c2.fields) do
                if c14.kind == "text" and c14.k ~= "tag" then
                    table.insert(c9, {k = c14.k, label = c14.label, kind = "choice", default = c14.default, options = c3})
                else
                    table.insert(c9, c14)
                end
            end
            return c9
        end
        T1_0.b190 = function(c1, c2)
            local c3 = {}
            for c7, c8 in ipairs(c2) do
                if T1_0.b187(c1, c8) then
                    table.insert(c3, c8.k .. "=" .. T1_0.b188(c1, c8))
                end
            end
            return table.concat(c3, "|")
        end
        T1_0.b191 = function(c1)
            local c2 = nil
            for c6, c7 in ipairs(T1_0.b154) do
                if c7.k == c1 then
                    c2 = T1_0.b154[c6 + 1]
                    break
                end
            end
            task.defer(function()
                if not T1_0.b151.Visible then
                    return
                end
                if c2 and c2.tb.Parent then
                    b54(c2.tb)
                else
                    b78()
                end
            end)
        end
        T1_0.b192 = function(c1)
            return a40("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 24), LayoutOrder = c1, Parent = T1_0.b166})
        end
        b79 = function(c1, c2)
            local c3 = b66()
            local c5 = T1_0.b153 and c3[T1_0.b153]
            if not c5 then
                T1_0.b151.Visible = false
                return
            end
            local c6 = V.a273.TypeByKey[c5.type]
            T1_0.b152.Text = "STEP " .. T1_0.b153 .. "/" .. #c3 .. "  \194\183  " .. c6.label .. (c4 and "  \194\183  " .. string.upper(c4.name) or "")
            T1_0.b159.TextTransparency = T1_0.b153 <= 1 and 0.6 or 0
            T1_0.b160.TextTransparency = T1_0.b153 >= #c3 and 0.6 or 0
            local c7 = b7[c5.type] or ""
            local c8 = math.ceil(b3:GetTextSize(c7, 9, Enum.Font.Gotham, Vector2.new(288, 200)).Y)
            T1_0.b165.Text = c7
            T1_0.b165.Size = UDim2.fromOffset(288, c8)
            T1_0.b166.Position = UDim2.fromOffset(0, 32 + c8)
            T1_0.b166.Size = UDim2.new(1, 0, 1, -(32 + c8))
            local c9 = T1_0.b189(c5)
            T1_0.b155 = T1_0.b190(c5, c9)
            T1_0.b156 = nil
            local c10 = T1_0.b166.CanvasPosition
            local c11 = nil
            if c5.type == "anim" then
                c11 = {
                    id = function(d1, d2)
                        d2 = d2 + 1
                        local d3 = a40("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 64), LayoutOrder = d2, Parent = d1})
                        T1_0.b156 = T1_0.b176(d3, 0, 0, 282, {
                            id = function()
                                return V.a273.IdOf(c5.id)
                            end,
                            get = function(e1)
                                local e2 = math.max(math.abs(c5.speed), 0.01)
                                if e1 == "start" then
                                    return c5.start
                                elseif e1 == "stop" then
                                    return c5.time > 0 and c5.start + c5.time * e2 or 0
                                elseif e1 == "speed" then
                                    return c5.speed
                                elseif e1 == "fadeIn" then
                                    return c5.fade
                                elseif e1 == "fadeOut" then
                                    return c5.fadeOut
                                elseif e1 == "layer" then
                                    return c5.layer
                                elseif e1 == "weight" then
                                    return c5.weight
                                end
                                return c5.looped
                            end,
                            set = function(e1, e2)
                                local e3 = math.max(math.abs(c5.speed), 0.01)
                                if e1 == "start" then
                                    local e4 = c5.time > 0 and c5.start + c5.time * e3 or nil
                                    c5.start = math.max(0, e2)
                                    if e4 then
                                        c5.time = math.max(0.01, T1_0.b175((e4 - c5.start) / e3))
                                    end
                                elseif e1 == "stop" then
                                    c5.time = e2 > 0 and math.max(0.01, T1_0.b175((e2 - c5.start) / e3)) or 0
                                elseif e1 == "looped" then
                                    c5.looped = e2
                                end
                            end,
                            commit = function()
                                V.a273.Save()
                                if T1_0.b151.Visible and c3[T1_0.b153] == c5 then
                                    b79(true)
                                end
                            end
                        })
                        d2 = d2 + 1
                        local d4 = T1_0.b192(d2)
                        b55(d4, "MOVEMENT ANIMS", 0, 0, 132, 24, true)
                        local d5 = T1_0.b183(c5)
                        local d6 = "SHOW"
                        if T1_0.b157 then
                            d6 = "HIDE THEM"
                        elseif d5 > 0 then
                            d6 = "SHOW (" .. d5 .. " SET)"
                        end
                        b37(b52(d4, d6, 136, 1, 146, 22, function()
                            T1_0.b157 = not T1_0.b157
                            b79(true)
                        end), "Optional anims that replace the main one while you stand, walk, run, dash, are in the air or block. Empty = the main one plays.")
                        return d2
                    end
                }
            end
            local c12, c13 = T1_0.b171(T1_0.b166, c5, c9, {
                keepScroll = c1,
                show = function(d1)
                    return T1_0.b187(c5, d1)
                end,
                label = function(d1)
                    return T1_0.b188(c5, d1)
                end,
                after = c11,
                onCommit = function(d1, d2)
                    if not T1_0.b151.Visible or c3[T1_0.b153] ~= c5 then
                        return
                    end
                    if d1.kind == "choice" or d1.kind == "bool" or d1.kind == "anim" or T1_0.b190(c5, c9) ~= T1_0.b155 then
                        b79(true, d2 and d1.k or nil)
                    else
                        if T1_0.b156 and T1_0.b156.root.Parent then
                            T1_0.b156.Render()
                        end
                        if d2 then
                            T1_0.b191(d1.k)
                        end
                    end
                end
            })
            T1_0.b154 = c12
            local c15 = false
            local c14 = 0
            for c19, c20 in ipairs(c9) do
                local c21 = V.a273.Advanced[c5.type]
                if c21 and c21[c20.k] and T1_0.b185(c5, c20) then
                    c15 = true
                    if T1_0.b186(c5, c20) then
                        c14 = c14 + 1
                    end
                end
            end
            if c15 then
                c13 = c13 + 1
                local c22 = T1_0.b192(c13)
                b55(c22, "MORE SETTINGS", 0, 0, 132, 24, true)
                b37(b52(c22, T1_0.b184 and "HIDE THEM" or "SHOW (" .. c14 .. ")", 136, 1, 146, 22, function()
                    T1_0.b184 = not T1_0.b184
                    a57.Set("MovesetAdvanced", T1_0.b184)
                    b79(true)
                end), "Settings most moves never need. A changed one always stays visible. This choice is remembered for every step.")
            end
            T1_0.b179 = nil
            if T1_0.b177[c5.type] then
                c13 = c13 + 1
                local c23 = T1_0.b192(c13)
                b55(c23, "PREVIEW IN WORLD", 0, 0, 132, 24, true)
                local c24 = nil
                c24 = b52(c23, T1_0.b178 and "ON" or "OFF", 136, 1, 146, 22, function()
                    T1_0.b178 = not T1_0.b178
                    a57.Set("MovesetGhost", T1_0.b178)
                    c24.Text = T1_0.b178 and "ON" or "OFF"
                    T1_0.b180.nextAt = 0
                    if T1_0.b179 then
                        T1_0.b179.Text = T1_0.b178 and "..." or "Preview is off"
                        T1_0.b179.TextColor3 = a32.Muted
                    end
                end)
                b37(c24, "Shows a ghost where this step puts you, the path it takes (grey = where you drift after) and which way you end up facing. Starts from where you stand now, earlier steps are not counted.")
                c13 = c13 + 1
                local c25 = T1_0.b192(c13)
                T1_0.b179 = b55(c25, T1_0.b178 and "..." or "Preview is off", 0, 0, 282, 24, true)
                T1_0.b179.TextSize = 9
                T1_0.b180.nextAt = 0
            end
            c13 = c13 + 1
            local c26 = T1_0.b192(c13)
            b55(c26, "THIS STEP", 0, 0, 132, 24, true)
            local c27 = nil
            c27 = b52(c26, c5.off and "OFF (SKIPPED)" or "ON", 136, 1, 146, 22, function()
                c5.off = not c5.off or nil
                c27.Text = c5.off and "OFF (SKIPPED)" or "ON"
                V.a273.Save()
            end)
            b37(c27, "OFF steps are skipped when the move runs (Ctrl + E). Handy for testing without deleting.")
            if c1 then
                task.defer(function()
                    T1_0.b166.CanvasPosition = c10
                end)
            end
            if c2 then
                T1_0.b191(c2)
            end
        end
        b71 = function(c1, c2)
            local c3 = b66()
            local c4 = c3[c1]
            if not c4 then
                return
            end
            b46()
            if T1_0.b153 ~= c1 then
                V.a273.PreviewStop(0.1)
            end
            T1_0.b153 = c1
            b108({[1] = c1})
            T1_0.b157 = T1_0.b183(c4) > 0
            T1_0.b166.CanvasPosition = Vector2.zero
            b79(false)
            T1_0.b151.Visible = true
            if c2 and T1_0.b154[1] then
                local c5 = T1_0.b154[1].tb
                task.defer(function()
                    if c5.Parent and T1_0.b151.Visible then
                        b54(c5)
                    end
                end)
            end
        end
        b78 = function()
            if not T1_0.b151.Visible then
                return
            end
            local c1 = UserInputService:GetFocusedTextBox()
            if c1 and c1:IsDescendantOf(T1_0.b151) then
                c1:ReleaseFocus()
            end
            T1_0.b151.Visible = false
            T1_0.b166.ScrollingEnabled = true
            V.a273.PreviewStop(0.1)
            b69()
        end
        T1_0.b193 = nil
        T1_0.b193 = a40("CanvasGroup", {
            BackgroundColor3 = a32.Background,
            Size = UDim2.fromScale(1, 1),
            Visible = false,
            Active = true,
            Parent = b1
        })
        T1_0.b194 = b55(T1_0.b193, "CHARACTER SETTINGS", 12, 8, 370, 22)
        a35(T1_0.b194, "TextColor3")
        b52(T1_0.b193, "CLOSE", 394, 8, 66, 22, function()
            T1_0.b193.Visible = false
        end)
        T1_0.b195 = a40("ScrollingFrame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(10, 36),
            Size = UDim2.fromOffset(450, 280),
            ScrollBarThickness = 3,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.new(),
            Parent = T1_0.b193
        })
        a35(T1_0.b195, "ScrollBarImageColor3")
        a40("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T1_0.b195})
        a40("UIPadding", {PaddingRight = UDim.new(0, 8), PaddingBottom = UDim.new(0, 8), Parent = T1_0.b195})
        T1_0.b196 = function(c1, c2, c3)
            return a40("TextLabel", {
                Text = c1,
                TextSize = 10,
                TextColor3 = a32.Muted,
                TextWrapped = true,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Top,
                Size = UDim2.new(1, 0, 0, c3 or 40),
                LayoutOrder = c2,
                Parent = T1_0.b195
            })
        end
        T1_0.b197 = function(c1, c2, c3, c4)
            local c5 = c4 and Enum.Font.GothamBold or Enum.Font.Gotham
            local c6 = math.ceil(b3:GetTextSize(c1, 10, c5, Vector2.new(440, 2000)).Y) + 3
            local c7 = T1_0.b196(c1, c2, c6)
            c7.Font = c5
            if c3 then
                c7.TextColor3 = c3
            end
            return c7
        end
        T1_0.b198 = function()
            T1_0.b194.Text = "HOW THE SKILL BUILDER WORKS"
            T1_0.b171(T1_0.b195, {}, {}, {})
            local c1 = 0
            local function c2(d1, d2, d3)
                c1 = c1 + 1
                T1_0.b197(d1, c1, d2, d3)
            end
            c2("THE BASICS", a32.Accent, true)
            c2("1. A MOVE is one of your skills. Pick one on the left, or press +MOVE to make one. +MOVE also has READY MADE moves you can try first and then change.")
            c2("2. KEY is the button you press for it (1, 2, 3, 4, M1...). Click it, then press the new key.")
            c2("3. The button next to CD says HOW IT STARTS. GAME MOVE (best to start with) = together with the game's own move, so it follows the game's cooldown. It must be LINKED once: press the red LINK button, then use the game move. KEY PRESS = the moment you press the key. GAME ANIM = whenever a game animation plays, no key. REPLACE = blocks the game's move, yours fires instead.")
            c2("4. STEPS are what the move does, top to bottom. Press + ADD BLOCK and pick one (start with PLAY ANIMATION, then DASH or LAUNCH). Click a step to change it, drag steps to reorder them, right-click a step for more. SCREEN SHAKE shakes your camera.")
            c2("5. TEST (Ctrl + T) tries the move right away, no key or cooldown needed.")
            c2("6. HIDE ON hides the game's own animation while your move runs. Turn it OFF if your move has no ANIM step, or you just stand still while it runs.")
            c2("7. REPLACE (in a move's OPTS) blocks the game's move on that key, so only yours happens, right when you press it.")
            c2("8. Everything saves by itself. UNDO / REDO fixes mistakes. SETS keeps more than one moveset. Hover anything to see what it does.")
            c2("ON A PHONE", a32.Accent, true)
            c2("Long-press anything to see what it does. Long-press a step or a move for its menu, hold it and drag to move it. KEY opens a list of keys to pick from. There are no keys on a phone, so a GAME MOVE move fires when its linked game move plays: press LINK, then use the game move once (or use PICK). KEY PRESS and REPLACE moves get an on-screen button (change it in OPTS).")
            c2("YOUR DASH", a32.Accent, true)
            c2("+DASH (under the move list) adds Dash Front / Back / Left / Right on Q, just like +M1s. Dash once each way (Q, S+Q, A+Q, D+Q) and each one links to the game's dash for its direction. Then give them steps: an ANIM step for a new dash anim, a VEL or DASH step for extra movement. To fully replace the game's dash, pick REPLACE GAME'S MOVE in the trigger menu.")
            c2("WHAT EVERY BLOCK DOES", a32.Accent, true)
            for c6, c7 in ipairs({
                [1] = "anim",
                [2] = "wait",
                [3] = "tp",
                [4] = "vel",
                [5] = "dash",
                [6] = "face",
                [7] = "turn",
                [8] = "key",
                [9] = "stun",
                [10] = "stop",
                [11] = "if",
                [12] = "else",
                [13] = "end",
                [14] = "tag",
                [15] = "branch",
                [16] = "switch"
            }) do
                c2(V.a273.TypeByKey[c7].label, b6[c7], true)
                c2(b7[c7] or "")
            end
            T1_0.b193.Visible = true
        end
        b73 = function(c1, c2)
            b46()
            if c1 == "help" then
                T1_0.b198()
                return
            end
            if c1 == "keys" then
                local c3 = a60.IsMobile()
                T1_0.b194.Text = c3 and "TOUCH" or "SHORTCUTS"
                T1_0.b171(T1_0.b195, {}, {}, {})
                local c4 = c3 and {
                    [1] = {[1] = "TAP A STEP", [2] = "Select it and open its settings"},
                    [2] = {[1] = "LONG-PRESS A STEP", [2] = "Menu with every action, let go to open it"},
                    [3] = {[1] = "HOLD + DRAG A STEP", [2] = "Move it (drags every selected step). Moves too"},
                    [4] = {[1] = "LONG-PRESS A MOVE", [2] = "Test, rename, copy, link to the next game move"},
                    [5] = {[1] = "LONG-PRESS ANYTHING", [2] = "Explains what it does, tap to close it"},
                    [6] = {[1] = "SELECT SEVERAL", [2] = "In a step's menu: then tap steps to pick them"},
                    [7] = {[1] = "KEY BUTTON", [2] = "Pick the key from a list"},
                    [8] = {[1] = "NUMBER FIELDS", [2] = "- / + buttons, or tap and type"},
                    [9] = {[1] = "TIMELINE", [2] = "Drag the ends to trim, drag the bar to scrub"},
                    [10] = {[1] = "PICKER: PLAY", [2] = "Preview with the timeline; ADD keeps the trim + fades"},
                    [11] = {[1] = "PICKER: MULTI", [2] = "Tap animations to pick several, then add them"},
                    [12] = {[1] = "PICKER: LONG-PRESS", [2] = "Add to / remove from FAVORITES"},
                    [13] = {[1] = "ON-SCREEN BUTTONS", [2] = "KEY ONLY / REPLACE moves, drag them by MOVES"},
                    [14] = {[1] = "BR: BUTTON", [2] = "Branches of the move: open, add, rename, delete"},
                    [15] = {[1] = "SETS BUTTON", [2] = "Switch, add, copy, export, import or delete movesets"},
                    [16] = {[1] = "? BUTTON", [2] = "The guide and what every block does"}
                } or {
                    [1] = {[1] = "CLICK A STEP", [2] = "Select it and open its settings"},
                    [2] = {[1] = "DRAG A STEP", [2] = "Reorder it (drags every selected step). Moves drag too"},
                    [3] = {[1] = "RIGHT-CLICK", [2] = "Menu with every action for a step or a move"},
                    [4] = {[1] = "HOVER A STEP", [2] = "Shows its UP / DN / CPY / X buttons"},
                    [5] = {[1] = "HOVER ANYTHING", [2] = "Explains what it does"},
                    [6] = {[1] = "CTRL + CLICK", [2] = "Add / remove a step from the selection"},
                    [7] = {[1] = "SHIFT + CLICK", [2] = "Select every step in between"},
                    [8] = {[1] = "UP / DOWN", [2] = "Select the step above / below"},
                    [9] = {[1] = "ENTER", [2] = "Open / close the selected step's settings"},
                    [10] = {[1] = "CTRL + E", [2] = "Switch the selected steps off / on (off = skipped)"},
                    [11] = {[1] = "CTRL + C / X / V", [2] = "Copy / cut / paste steps, also into other moves"},
                    [12] = {[1] = "CTRL + D", [2] = "Duplicate the selected steps"},
                    [13] = {[1] = "DELETE", [2] = "Delete the selected steps"},
                    [14] = {[1] = "CTRL + A", [2] = "Select every step"},
                    [15] = {[1] = "CTRL + UP / DOWN", [2] = "Move the selected steps"},
                    [16] = {[1] = "CTRL + Z / Y", [2] = "Undo / redo (also the UNDO / REDO buttons)"},
                    [17] = {[1] = "CTRL + T", [2] = "Test the move, press again to stop it"},
                    [18] = {[1] = "ESC", [2] = "Close the open menu / panel, or clear the selection"},
                    [19] = {[1] = "STEP SETTINGS < / >", [2] = "Previous / next step without closing (or UP / DOWN)"},
                    [20] = {[1] = "NUMBER FIELDS", [2] = "- / + buttons, SHIFT + click changes it 10x"},
                    [21] = {[1] = "IN A NUMBER FIELD", [2] = "Mouse wheel or UP / DOWN changes the value"},
                    [22] = {[1] = "ENTER IN A FIELD", [2] = "Saves it and jumps to the next field"},
                    [23] = {[1] = "LISTS WITH 3+ CHOICES", [2] = "Click to open the list and pick one"},
                    [24] = {[1] = "TIMELINE", [2] = "Drag the ends to trim, click / drag the bar to scrub"},
                    [25] = {[1] = "PICKER: PLAY", [2] = "Preview with the timeline; ADD keeps the trim + fades"},
                    [26] = {[1] = "PICKER: CTRL + CLICK", [2] = "Pick several animations, then add them at once"},
                    [27] = {[1] = "PICKER: SHIFT + CLICK", [2] = "Pick everything between two animations"},
                    [28] = {[1] = "PICKER: RIGHT-CLICK", [2] = "Add to / remove from FAVORITES"},
                    [29] = {[1] = "BR: BUTTON", [2] = "Branches of the move: open, add, rename, delete"},
                    [30] = {[1] = "SETS BUTTON", [2] = "Switch, add, copy, export, import or delete movesets"},
                    [31] = {[1] = "? BUTTON", [2] = "The guide and what every block does"},
                    [32] = {[1] = "+MOVE", [2] = "Empty move or a ready made one"},
                    [33] = {[1] = "+DASH", [2] = "Dash Front / Back / Left / Right moves on Q, like +M1s"}
                }
                for c8, c9 in ipairs(c4) do
                    local c10 = a40("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 22), LayoutOrder = c8, Parent = T1_0.b195})
                    local c11 = b55(c10, c9[1], 0, 0, 160, 22)
                    c11.TextColor3 = a32.Accent
                    b55(c10, c9[2], 166, 0, 276, 22, true)
                end
                T1_0.b193.Visible = true
                return
            end
            if c1 == "move" then
                local c12 = b65()
                T1_0.b194.Text = "MOVE OPTIONS  \194\183  " .. string.upper(c12.name)
                local c13 = {
                    ["Target in range"] = "Range (studs)",
                    ["HP above %"] = "HP %",
                    ["HP below %"] = "HP %",
                    ["Tag at least"] = "Tag amount"
                }
                local c14, c15 = T1_0.b171(T1_0.b195, c12.opts, V.a273.MoveFields, {
                    labelW = 200,
                    ctrlX = 230,
                    ctrlW = 208,
                    keepScroll = c2,
                    show = function(d1)
                        if d1.k == "reqValue" then
                            return c13[c12.opts.req] ~= nil
                        elseif d1.k == "reqTag" then
                            return c12.opts.req == "Tag at least"
                        elseif d1.k == "reqNot" then
                            return c12.opts.req ~= "Always"
                        elseif d1.k == "hotbarName" then
                            return c12.opts.hotbar == true
                        elseif d1.k == "cancelKey" then
                            return c12.opts.cancel == "A key"
                        end
                        return true
                    end,
                    label = function(d1)
                        return d1.k == "reqValue" and (c13[c12.opts.req] or d1.label) or d1.label
                    end,
                    onChange = function(d1)
                        if d1.k == "hideGameMove" then
                            c12.hide = c12.opts.hideGameMove
                            task.defer(b70)
                        elseif d1.k == "req" or d1.k == "hotbar" or d1.k == "cancel" then
                            task.defer(b73, "move", true)
                        end
                    end
                })
                local c16 = a40("Frame", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 24),
                    LayoutOrder = math.max(990, c15 + 1),
                    Parent = T1_0.b195
                })
                local c17 = b55(c16, "", 0, 0, 220, 24, true)
                c17.Text = "LEARNED HIT REACTIONS: " .. V.a273.ReactionCount()
                b52(c16, "FORGET THEM", 230, 1, 208, 22, function()
                    V.a273.ResetReactions()
                    c17.Text = "LEARNED HIT REACTIONS: 0"
                    a67("Moveset", "Forgot the learned hit-reaction animations. They are relearned as you hit people.", 4)
                end)
                T1_0.b196("Only this move. Hide the game's animation = hides original game animations while this custom move runs. Disable the game's move on this key = blocks direct player input on this client even when this custom move has no steps. An explicit KEY block set to Game move can still call that move from inside another custom move; its internal key press is allowed through the block. With KEY + USED, this custom move starts on key press instead because the original animation is blocked. Hide game's hotbar slot = hides the original 1-4 or G slot for this move; turning it OFF restores that slot. If multiple moves use the same key, turn it OFF in all of them to show the shared slot. It is separate from disabling the move and from showing custom hotbar slots. Replace the game's move = blocks the original move on this key and fires this custom move right when you press it (WHEN is ignored). Only usable if = the move does nothing unless that is true when you press it. Face cursor turns you toward your mouse while the move runs. Hit detection is what IF HIT SOMEONE uses in this move: HEALTH = someone near you loses HP, REACTION = someone near you gets knocked back, ragdolled or stunned by the game, or plays a learned hit-reaction animation. The range is used when the IF block's own value is 0. On-screen button = a button for this move on your screen; AUTO shows it only on a phone, for KEY ONLY and REPLACE moves. Show on game hotbar = on key 1-4 or G it renames that game move on the hotbar (works even with no steps, just to rename it); on any other key it adds a new slot to the hotbar that you can click, even with no steps. Cancel it with = stop this move while it runs: ANY OTHER MOVE = when another of your moves starts or you use game move 1-4 / G, A KEY = when you press that key. M1, M2 and dash moves never get a slot. On by default.", 999, 104)
            else
                T1_0.b194.Text = "CHARACTER  \194\183  " .. string.upper(V.a273.Current().name)
                T1_0.b171(T1_0.b195, V.a273.Settings(), V.a273.SettingFields, {
                    labelW = 200,
                    ctrlX = 230,
                    ctrlW = 208,
                    onChange = function()
                        V.a273.ApplyLocomotion()
                    end
                })
                T1_0.b196("Under every animation: START / END / SPEED is its timeline. Start = second it starts from, End = second it stops at (0 = full), Speed = how fast. Looping ones (idle, walk, run) loop between Start and End. Block and the dashes are swapped right after you press F or Q, picking the dash by the key you hold: S = back, A = left, D = right, otherwise front. Only one block / dash anim plays at a time, and any attack or move animation cuts it off. For your own dash with its own speed and length, use +DASH under the move list. Custom idle / walk / run / jump / fall play under every action animation.", 995, 92)
                T1_0.b196("Character-wide things that can only have one value at a time, saved with this moveset. Idle / walk / run / jump / fall swap what your Animate script plays (others see them) and kick in the next time you move or jump. Empty = the game's own. Per-move options are under OPTS next to each move. Look at cursor turns your neck / waist joints, which only you see (the game does not send those joints to other players); Always face cursor turns your whole body and everyone sees it. VEL / CURVE can use Character Aim to steer along the head direction; turn on Look at cursor if you want that aim to follow your cursor.", 999, 92)
            end
            T1_0.b193.Visible = true
        end
        T1_0.b201 = nil
        T1_0.b200 = nil
        T1_0.b199 = nil
        T1_0.b203 = {}
        T1_0.b202 = {}
        T1_0.b207 = false
        T1_0.b206 = {}
        T1_0.b205 = {}
        T1_0.b204 = nil
        T1_0.b208 = "RECENT"
        T1_0.b211 = "USE"
        T1_0.b210 = nil
        T1_0.b209 = nil
        T1_0.b216 = nil
        T1_0.b215 = true
        T1_0.b214 = {}
        T1_0.b213 = {}
        T1_0.b212 = nil
        T1_0.b220 = nil
        T1_0.b219 = nil
        T1_0.b218 = nil
        T1_0.b217 = nil
        T1_0.b221 = false
        T1_0.b222 = false
        T1_0.b223 = nil
        T1_0.b224 = nil
        T1_0.b199 = a40("CanvasGroup", {
            BackgroundColor3 = a32.Background,
            Size = UDim2.fromScale(1, 1),
            Visible = false,
            Active = true,
            Parent = b1
        })
        T1_0.b225 = b55(T1_0.b199, "PICK AN ANIMATION", 12, 8, 160, 22)
        a35(T1_0.b225, "TextColor3")
        T1_0.b226 = b53(T1_0.b199, "SEARCH ALL...", 176, 8, 150, 22)
        T1_0.b200 = function(c1)
            T1_0.b199.Visible = false
            V.a273.PreviewStop(0.1)
            local c2 = T1_0.b210
            T1_0.b210 = nil
            T1_0.b209 = nil
            T1_0.b216 = nil
            T1_0.b214 = {}
            T1_0.b213 = {}
            T1_0.b212 = nil
            if c1 and c2 then
                c2()
            end
        end
        b52(T1_0.b199, "RESCAN", 330, 8, 60, 22, function()
            T1_0.b204 = nil
            T1_0.b224()
        end)
        b52(T1_0.b199, "CLOSE", 394, 8, 66, 22, function()
            T1_0.b200(true)
        end)
        T1_0.b227 = b56(T1_0.b199, 10, 36, 140, 280)
        T1_0.b228 = b56(T1_0.b199, 156, 36, 304, 212)
        T1_0.b229 = {id = nil, start = 0, stop = 0, speed = 1, fadeIn = 0.1, fadeOut = 0.1, looped = false}
        T1_0.b230 = T1_0.b176(T1_0.b199, 156, 252, 304, {
            id = function()
                return T1_0.b229.id
            end,
            empty = "Press PLAY on an animation to see its timeline here.",
            get = function(c1)
                return T1_0.b229[c1]
            end,
            set = function(c1, c2)
                if c1 == "start" or c1 == "stop" then
                    c2 = math.max(0, c2)
                end
                T1_0.b229[c1] = c2
            end
        })
        T1_0.b231 = T1_0.b230.controlsX
        T1_0.b232 = function(c1, c2, c3, c4, c5)
            b55(T1_0.b230.root, c1, T1_0.b231, 40, 24, 22, true).TextSize = 8
            local c6 = b53(T1_0.b230.root, "", T1_0.b231 + 22, 40, 28, 22, 2)
            c6.TextXAlignment = Enum.TextXAlignment.Center
            c6.Text = b24(T1_0.b229[c2])
            T1_0.b170(c6, {}, function()
                return T1_0.b229[c2]
            end, function(d1)
                T1_0.b229[c2] = math.max(c4, d1)
            end, function()
                return c3
            end, function(d1)
                return math.max(c4, d1)
            end, function()
                T1_0.b230.Render()
            end)
            b37(c6, c5 .. " Click in, then use the wheel or Up / Down.")
            T1_0.b231 = T1_0.b231 + 52
        end
        T1_0.b232("SPD", "speed", 0.1, 0.05, "Preview speed. Also used for the step when you ADD it.")
        T1_0.b232("IN", "fadeIn", 0.05, 0, "Fade in (s).")
        T1_0.b232("OUT", "fadeOut", 0.05, 0, "Fade out (s). Also used by STOP.")
        T1_0.b233 = function(c1)
            local c2 = T1_0.b209
            local c3 = T1_0.b211 == "ADD" and T1_0.b229.id == c1 and table.clone(T1_0.b229) or nil
            V.a273.PushRecent(c1)
            T1_0.b200(false)
            if c2 then
                c2(c1, c3)
            end
        end
        T1_0.b234 = function(c1)
            if T1_0.b229.id ~= c1 then
                T1_0.b229.id = c1
                local c2 = T1_0.b229
                local c3 = T1_0.b229
                c3.stop = 0
                c2.start = 0
            end
            T1_0.b230.Render()
            T1_0.b230.Play()
        end
        T1_0.b235 = function(c1)
            local c2 = 0
            for c6, c7 in ipairs(T1_0.b202) do
                if c7.who == nil == c1 then
                    c2 = c2 + 1
                end
            end
            return c2
        end
        T1_0.b236 = function(c1)
            local c2 = {}
            if c1 == "FAV" or c1 == "RECENT" then
                for c6, c7 in ipairs(c1 == "FAV" and V.a273.Favorites() or V.a273.Recent()) do
                    table.insert(c2, {id = c7, title = V.a273.NameOf(c7) or "Animation " .. c7, sub = c7})
                end
            elseif c1 == "YOU" or c1 == "OTHERS" then
                for c11 = #T1_0.b202, 1, -1 do
                    local c12 = T1_0.b202[c11]
                    if c1 == "YOU" == (c12.who == nil) then
                        table.insert(c2, {id = c12.id, title = c12.name, sub = c12.id .. (c12.who and "  \194\183  " .. c12.who or "")})
                    end
                end
            else
                for c16, c17 in ipairs(T1_0.b206[c1] or {}) do
                    table.insert(c2, {id = c17.id, title = c17.label, sub = c17.id})
                end
            end
            return c2
        end
        T1_0.b237 = function()
            local c1 = string.lower(a7(T1_0.b226.Text))
            local c2 = c1 ~= ""
            b57(T1_0.b227)
            local c3 = {
                [1] = {[1] = "FAV", [2] = "FAVORITES", [3] = #V.a273.Favorites()},
                [2] = {[1] = "RECENT", [2] = "RECENT", [3] = #V.a273.Recent()},
                [3] = {[1] = "YOU", [2] = "YOUR MOVES", T1_0.b235(true)},
                [4] = {[1] = "OTHERS", [2] = "OTHER PLAYERS", T1_0.b235(false)}
            }
            for c7, c8 in ipairs(T1_0.b205) do
                table.insert(c3, {[1] = c8.name, [2] = string.upper(c8.name), [3] = #c8.items})
            end
            local c11, c10, c9 = ipairs(c3)
            while true do
                local c13 = c11(c10, c9)
                if c12 == nil then
                    break
                end
                c9 = c12
                b59(T1_0.b227, c12, c13[2], c13[3] .. " anims", not c2 and T1_0.b208 == c13[1], {}, function()
                    T1_0.b208 = c13[1]
                    T1_0.b226.Text = ""
                    T1_0.b237()
                end, c12 <= 4 and a32.Accent or nil)
            end
            if T1_0.b207 then
                b58(T1_0.b227, "Scanning the game for animations...")
            end
            local c14 = c2 and "?" .. c1 or T1_0.b208
            local c15 = c14 == T1_0.b223 and T1_0.b228.CanvasPosition or Vector2.zero
            if c14 ~= T1_0.b223 then
                T1_0.b216 = nil
            end
            T1_0.b223 = c14
            b57(T1_0.b228)
            local c16 = nil
            if c2 then
                c16 = {}
                local function c17(d1, d2, d3)
                    if #c16 < 150 and string.find(string.lower(d2 .. " " .. d3), c1, 1, true) then
                        table.insert(c16, {id = d1, title = d2, sub = d3})
                    end
                end
                for c21 = #T1_0.b202, 1, -1 do
                    local c22 = T1_0.b202[c21]
                    c17(c22.id, c22.name, c22.id .. "  \194\183  " .. (c22.who or "you"))
                end
                for c26, c27 in ipairs(T1_0.b204 or {}) do
                    c17(c27.id, c27.label, c27.id .. "  \194\183  " .. c27.cat)
                end
            else
                c16 = T1_0.b236(T1_0.b208)
            end
            local c30, c29, c28 = ipairs(c16)
            while true do
                local c32 = c30(c29, c28)
                local c31 = c30(c29, c28)
                if c31 == nil then
                    break
                end
                c28 = c31
                if c31 > 200 then
                    break
                end
                b59(T1_0.b228, c31, c32.title, c32.sub, T1_0.b214[c32.id] == true, {
                    [1] = {
                        [1] = "PLAY",
                        [2] = function()
                            T1_0.b234(c32.id)
                        end
                    }
                }, function()
                    if T1_0.b212 and (b25() or b26() or T1_0.b221) then
                        if b26() and T1_0.b216 and c16[T1_0.b216] then
                            local d2 = math.max(T1_0.b216, c31)
                            local d1 = math.min(T1_0.b216, c31)
                            for d6 = d1, d2 do
                                local d7 = c16[d6].id
                                if not T1_0.b214[d7] then
                                    T1_0.b214[d7] = true
                                    table.insert(T1_0.b213, d7)
                                end
                            end
                        elseif T1_0.b214[c32.id] then
                            T1_0.b214[c32.id] = nil
                            local d8 = table.find(T1_0.b213, c32.id)
                            if d8 then
                                table.remove(T1_0.b213, d8)
                            end
                        else
                            T1_0.b214[c32.id] = true
                            table.insert(T1_0.b213, c32.id)
                        end
                        T1_0.b216 = c31
                        T1_0.b237()
                        return
                    end
                    T1_0.b233(c32.id)
                end, V.a273.IsFavorite(c32.id) and a32.Accent or nil, function()
                    local d1 = V.a273.ToggleFavorite(c32.id)
                    a72((d1 and "Added to favorites: " or "Removed from favorites: ") .. c32.title, "ok")
                    T1_0.b237()
                end)
            end
            if #c16 == 0 then
                local c33 = "Empty."
                if c2 then
                    c33 = "Nothing matches the search."
                elseif T1_0.b208 == "FAV" then
                    c33 = a60.IsMobile() and "Long-press any animation to add it to your favorites." or "Right-click any animation to add it to your favorites."
                elseif T1_0.b208 == "RECENT" then
                    c33 = "Animations you pick show up here, so your favourites are one click away."
                elseif T1_0.b208 == "YOU" then
                    c33 = "Use your moves in game (CAPTURE on) and they show up here."
                elseif T1_0.b208 == "OTHERS" then
                    c33 = "Turn on SPY OTHERS and the moves other players use show up here."
                end
                b58(T1_0.b228, c33)
            end
            if T1_0.b219 then
                local c34 = T1_0.b211 == "COPY" and "COPY " or "ADD "
                T1_0.b219.Text = #T1_0.b213 > 0 and c34 .. #T1_0.b213 .. " PICKED" or T1_0.b221 and "TAP TO PICK" or "NONE PICKED"
                T1_0.b218.Visible = T1_0.b211 ~= "COPY"
                T1_0.b220.Text = T1_0.b221 and "MULTI: ON" or "MULTI: OFF"
            end
            task.defer(function()
                T1_0.b228.CanvasPosition = c15
            end)
        end
        T1_0.b217 = a40("Frame", {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(156, 294),
            Size = UDim2.fromOffset(304, 22),
            Visible = false,
            Parent = T1_0.b199
        })
        T1_0.b220 = b52(T1_0.b217, "MULTI: OFF", 0, 0, 58, 22, function()
            T1_0.b221 = not T1_0.b221
            T1_0.b237()
        end)
        b37(T1_0.b220, "ON: tapping an animation picks it instead of using it right away, so you can add several at once. Ctrl + click does the same on PC.")
        T1_0.b218 = b52(T1_0.b217, "CHAIN: ON", 62, 0, 80, 22, function()
            T1_0.b215 = not T1_0.b215
            T1_0.b218.Text = T1_0.b215 and "CHAIN: ON" or "CHAIN: OFF"
        end)
        b52(T1_0.b217, "CLEAR", 146, 0, 46, 22, function()
            T1_0.b216 = nil
            T1_0.b214 = {}
            T1_0.b213 = {}
            T1_0.b237()
        end)
        T1_0.b219 = b52(T1_0.b217, "NONE PICKED", 196, 0, 108, 22, function()
            if #T1_0.b213 == 0 then
                a67("Moveset", a60.IsMobile() and "Turn MULTI on, then tap animations to pick several." or "Ctrl + click or Shift + click animations (or turn MULTI on) to pick several.", 3)
                return
            end
            local c3 = T1_0.b215
            local c2 = T1_0.b212
            local c1 = T1_0.b213
            for c7 = #c1, 1, -1 do
                V.a273.PushRecent(c1[c7])
            end
            T1_0.b200(false)
            if c2 then
                c2(c1, c3)
            end
        end)
        T1_0.b224 = function()
            if T1_0.b207 then
                return
            end
            T1_0.b207 = true
            if T1_0.b199.Visible then
                T1_0.b237()
            end
            task.spawn(function()
                local d1, d2 = pcall(V.a273.ScanLibrary)
                T1_0.b207 = false
                T1_0.b204 = d1 and d2 or {}
                T1_0.b206 = {}
                T1_0.b205 = {}
                for d6, d7 in ipairs(T1_0.b204) do
                    local d8 = T1_0.b206[d7.cat]
                    if not d8 then
                        d8 = {}
                        T1_0.b206[d7.cat] = d8
                        table.insert(T1_0.b205, {name = d7.cat, items = d8})
                    end
                    table.insert(d8, d7)
                end
                table.sort(T1_0.b205, function(e1, e2)
                    return string.lower(e1.name) < string.lower(e2.name)
                end)
                if not d1 then
                    a72("Animation scan failed: " .. tostring(d2), "warn")
                end
                if T1_0.b199.Visible then
                    T1_0.b237()
                end
            end)
        end
        T1_0.b226:GetPropertyChangedSignal("Text"):Connect(function()
            T1_0.b222 = true
        end)
        b72 = function(c1, c2, c3, c4)
            T1_0.b211 = c2 or "USE"
            T1_0.b210 = c3
            T1_0.b209 = c1
            T1_0.b216 = nil
            T1_0.b214 = {}
            T1_0.b213 = {}
            T1_0.b212 = c4
            T1_0.b221 = false
            T1_0.b217.Visible = c4 ~= nil
            T1_0.b228.Size = UDim2.fromOffset(304, c4 and 186 or 212)
            T1_0.b230.root.Position = UDim2.fromOffset(156, c4 and 226 or 252)
            local c5 = T1_0.b229
            local c6 = T1_0.b229
            local c7 = T1_0.b229
            c7.stop = 0
            c6.start = 0
            c5.id = nil
            T1_0.b230.Render()
            local c8 = a60.IsMobile() and "TAP" or "CLICK"
            if T1_0.b211 == "COPY" then
                T1_0.b225.Text = c8 .. " TO COPY AN ID"
            elseif T1_0.b211 == "ADD" then
                T1_0.b225.Text = c8 .. " TO ADD A STEP"
            else
                T1_0.b225.Text = c8 .. " TO PICK"
            end
            T1_0.b199.Visible = true
            if not T1_0.b204 and not T1_0.b207 then
                T1_0.b224()
            end
            T1_0.b237()
        end
        task.delay(8, function()
            if a37 and not T1_0.b204 and not T1_0.b207 then
                T1_0.b224()
            end
        end)
        V.a273.OnCapture = function(c1, c2, c3)
            local c4 = c1 .. "|" .. (c3 or "")
            if T1_0.b203[c4] then
                return
            end
            T1_0.b203[c4] = true
            table.insert(T1_0.b202, {id = c1, name = c2 and c2 ~= "" and c2 or "Animation", who = c3})
            if #T1_0.b202 > 300 then
                local c5 = table.remove(T1_0.b202, 1)
                T1_0.b203[c5.id .. "|" .. (c5.who or "")] = nil
            end
            T1_0.b222 = true
        end
        V.a273.OnLearn = function(c1, c2, c3)
            if c3 then
                a67("Moveset", c1.name .. " also linked to " .. c2 .. " (another version of that hit, like the air one).", 4)
            else
                a67("Moveset", c1.name .. " linked to animation " .. c2 .. ". It now only fires when that move really goes off.", 4)
            end
            if b1.Visible then
                b70()
            end
        end
        V.a273.OnFire = function(c1)
            a72("Move: " .. c1.name, "accent")
        end
        V.a273.OnTrace = function(c1, c2)
            a67("Debug: " .. c1.name, c2, 4)
            print("[RYOIKI] " .. c1.name .. ": " .. c2)
        end
        T1_0.b201 = function()
            if T1_0.b222 and T1_0.b199.Visible then
                T1_0.b222 = false
                T1_0.b237()
            end
        end
        b32 = function()
            return T1_0.b193.Visible or T1_0.b199.Visible
        end
        b33 = function()
            return T1_0.b151.Visible or b143.Visible
        end
        T1_0.b238 = function()
            T1_0.b151.Visible = false
            b143.Visible = false
            local c1 = V.a273.Current().moves
            b60 = math.clamp(b60, 1, #c1)
            b61 = nil
            b62 = {}
            b68()
            b70()
            b69()
        end
        b76 = function()
            b51()
            if V.a273.Undo() then
                T1_0.b238()
                a72("Undo", "ok")
            else
                a72("Nothing to undo", "warn")
            end
        end
        b77 = function()
            b51()
            if V.a273.Redo() then
                T1_0.b238()
                a72("Redo", "ok")
            else
                a72("Nothing to redo", "warn")
            end
        end
        T1_0.b239 = function(c1)
            local c2 = b66()
            if #c2 == 0 then
                return
            end
            if T1_0.b151.Visible then
                T1_0.b158(c1)
                return
            end
            local c3 = nil
            if b61 then
                c3 = math.clamp(b61 + c1, 1, #c2)
            else
                c3 = c1 > 0 and 1 or #c2
            end
            b108({[1] = c3})
            b69()
        end
        T1_0.b240 = function(c1, c2)
            if c2 or not b1.Visible or not a79 or c1.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end
            local c3 = c1.KeyCode
            if b28 then
                b46()
                if c3 == Enum.KeyCode.Escape then
                    return
                end
            end
            if c3 == Enum.KeyCode.Escape then
                if b130.active then
                    b131()
                elseif T1_0.b199.Visible then
                    T1_0.b200(true)
                elseif T1_0.b151.Visible then
                    b78()
                elseif T1_0.b193.Visible then
                    T1_0.b193.Visible = false
                elseif b143.Visible then
                    b143.Visible = false
                elseif next(b62) or b61 or b130.multi then
                    b61 = nil
                    b62 = {}
                    b130.multi = false
                    b69()
                end
                return
            end
            if T1_0.b199.Visible or T1_0.b193.Visible then
                return
            end
            if c3 == Enum.KeyCode.Delete then
                local c4 = b107()
                if #c4 > 0 then
                    T1_0.b151.Visible = false
                    b119(c4)
                end
                return
            end
            if not b25() then
                if b143.Visible then
                    return
                end
                if c3 == Enum.KeyCode.Up or c3 == Enum.KeyCode.Down then
                    T1_0.b239(c3 == Enum.KeyCode.Up and -1 or 1)
                elseif c3 == Enum.KeyCode.Return or c3 == Enum.KeyCode.KeypadEnter then
                    if T1_0.b151.Visible then
                        b78()
                    elseif b61 and b66()[b61] then
                        b71(b61)
                    end
                end
                return
            end
            if c3 == Enum.KeyCode.Z then
                b76()
            elseif c3 == Enum.KeyCode.Y then
                b77()
            elseif c3 == Enum.KeyCode.C or c3 == Enum.KeyCode.X then
                local c5 = b107()
                if #c5 == 0 then
                    return
                end
                b64 = b118(c5)
                if c3 == Enum.KeyCode.X then
                    T1_0.b151.Visible = false
                    b119(c5)
                end
                a72((c3 == Enum.KeyCode.X and "Cut " or "Copied ") .. #b64 .. " steps", "ok")
            elseif c3 == Enum.KeyCode.V then
                if #b64 == 0 then
                    return
                end
                b120(b64, b109(b66()))
                a72("Pasted " .. #b64 .. " steps", "accent")
            elseif c3 == Enum.KeyCode.D then
                local c6 = b107()
                if #c6 == 0 then
                    return
                end
                b120(b118(c6), c6[#c6] + 1)
                a72("Duplicated " .. #c6 .. " steps", "accent")
            elseif c3 == Enum.KeyCode.A then
                local c7 = {}
                for c11 = 1, #b66() do
                    table.insert(c7, c11)
                end
                b108(c7)
                b69()
                a72(#c7 .. " steps selected", "ok")
            elseif c3 == Enum.KeyCode.E then
                local c12 = b107()
                if #c12 > 0 then
                    b122(c12)
                    if T1_0.b151.Visible then
                        b79(true)
                    end
                end
            elseif c3 == Enum.KeyCode.Up or c3 == Enum.KeyCode.Down then
                b121(b107(), c3 == Enum.KeyCode.Up and -1 or 1)
                if T1_0.b151.Visible and b61 then
                    T1_0.b153 = b61
                    b79(true)
                end
            elseif c3 == Enum.KeyCode.T then
                b82()
            end
        end
        a39(UserInputService.InputBegan:Connect(function(c1, c2)
            a73("Moveset", T1_0.b240, c1, c2)
        end))
        T1_0.b241 = false
        b1:GetPropertyChangedSignal("Visible"):Connect(function()
            if not b1.Visible then
                b46()
                b36()
            end
            if b1.Visible and not T1_0.b241 then
                T1_0.b241 = true
                if a57.Get("MovesetHelpSeen") ~= true then
                    a57.Set("MovesetHelpSeen", true)
                    b73("help")
                elseif a60.IsMobile() then
                    a67("Moveset", "Press ? for the guide. Long-press anything for help or a step for its menu, hold and drag to move it.", 7)
                else
                    a67("Moveset", "Press ? for the guide. Hover anything for help, right-click steps for a menu.", 6)
                end
            end
        end)
        b67 = function()
            b61 = nil
            b62 = {}
            b130.multi = false
            b63 = 0
            b143.Visible = false
            local c1 = V.a273.Current()
            local c2, c3 = V.a273.Index()
            if not b84:IsFocused() then
                b84.Text = c1.name
            end
            b86.Text = "SETS " .. c2 .. "/" .. c3
            T1_0.b151.Visible = false
            b114.CanvasPosition = Vector2.zero
            b68()
            b70()
            b69()
        end
        task.spawn(function()
            while a37 do
                task.wait(0.2)
                if b28 and (not b1.Visible or not a79) then
                    b46()
                end
                if b1.Visible then
                    for c4, c5 in pairs(b80) do
                        if c5.Parent then
                            c5.Text = b116(c4)
                        end
                    end
                    local c6 = V.a273.IsRunning(b65()) and "STOP" or "TEST"
                    if b106.Text ~= c6 then
                        b106.Text = c6
                    end
                    if T1_0.b161.Text ~= c6 then
                        T1_0.b161.Text = c6
                    end
                    T1_0.b201()
                end
            end
        end);
        (function()
            V.a273.NoKeys = a60.IsMobile
            local c1 = a40("Frame", {
                Name = "MovePad",
                BackgroundTransparency = 1,
                AnchorPoint = Vector2.new(1, 0.5),
                Position = UDim2.new(1, -110, 0.5, 0),
                Size = UDim2.fromOffset(64, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                Visible = false,
                ZIndex = 2,
                Parent = a60.Screen
            })
            local c2 = a57.Get("PadPos")
            if type(c2) == "table" and tonumber(c2.sx) and tonumber(c2.sy) then
                c1.Position = UDim2.fromScale(math.clamp(tonumber(c2.sx), 0.1, 1), math.clamp(tonumber(c2.sy), 0.1, 0.9))
            end
            a40("UIListLayout", {
                Padding = UDim.new(0, 6),
                SortOrder = Enum.SortOrder.LayoutOrder,
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                Parent = c1
            })
            local c3 = a40("TextButton", {
                Text = "MOVES",
                Font = Enum.Font.GothamBold,
                TextSize = 9,
                TextColor3 = a32.Muted,
                BackgroundColor3 = a32.Panel,
                BackgroundTransparency = 0.2,
                Size = UDim2.fromOffset(64, 18),
                LayoutOrder = 0,
                Parent = c1
            })
            a49(c3, a32.Stroke)
            local c6 = nil
            local c5 = nil
            local c4 = nil
            c3.InputBegan:Connect(function(d1)
                local d2 = d1.UserInputType
                if d2 == Enum.UserInputType.MouseButton1 or d2 == Enum.UserInputType.Touch then
                    c5 = d1.Position
                    c4 = d1
                    c6 = c1.AbsolutePosition - a60.Screen.AbsolutePosition + Vector2.new(c1.AbsoluteSize.X, c1.AbsoluteSize.Y / 2)
                end
            end)
            a39(UserInputService.InputChanged:Connect(function(d1)
                if c4 and (d1 == c4 or c4.UserInputType ~= Enum.UserInputType.Touch and d1.UserInputType == Enum.UserInputType.MouseMovement) then
                    local d2 = d1.Position - c5
                    local d3 = a60.Size()
                    local d4 = math.clamp(c6.X + d2.X, 70, math.max(70, d3.X - 4))
                    local d5 = math.clamp(c6.Y + d2.Y, 40, math.max(40, d3.Y - 40))
                    c1.Position = UDim2.fromScale(d4 / d3.X, d5 / d3.Y)
                end
            end))
            a39(UserInputService.InputEnded:Connect(function(d1)
                if c4 and (d1 == c4 or c4.UserInputType ~= Enum.UserInputType.Touch and d1.UserInputType == Enum.UserInputType.MouseButton1) then
                    c4 = nil
                    a57.Set("PadPos", {sx = c1.Position.X.Scale, sy = c1.Position.Y.Scale})
                end
            end))
            local c8 = nil
            local c7 = {}
            local function c9(d1)
                if #d1.steps == 0 then
                    return false
                end
                local d2 = d1.opts.pad
                if d2 == "On" then
                    return true
                elseif d2 == "Off" then
                    return false
                end
                return a60.IsMobile() and (d1.trigger == "Key only" or d1.opts.replace == true)
            end
            local function c10(d1)
                for d5, d6 in ipairs(c7) do
                    d6.Frame:Destroy()
                end
                c7 = {}
                local d9, d8, d7 = ipairs(d1)
                while true do
                    local d11 = d9(d8, d7)
                    if d10 == nil then
                        break
                    end
                    d7 = d10
                    local d12 = a40("TextButton", {
                        BackgroundColor3 = a32.Panel,
                        BackgroundTransparency = 0.15,
                        Size = UDim2.fromOffset(64, 48),
                        ClipsDescendants = true,
                        LayoutOrder = d10,
                        Parent = c1
                    })
                    a35(a49(d12, a32.Accent), "Color")
                    local d13 = a40("Frame", {
                        BackgroundColor3 = Color3.new(0, 0, 0),
                        BackgroundTransparency = 0.45,
                        AnchorPoint = Vector2.new(0, 1),
                        Position = UDim2.fromScale(0, 1),
                        Size = UDim2.fromScale(1, 0),
                        Parent = d12
                    })
                    a40("TextLabel", {
                        Text = b23(d11.key),
                        Font = Enum.Font.GothamBold,
                        TextSize = 9,
                        TextColor3 = a32.Muted,
                        Position = UDim2.fromOffset(0, 4),
                        Size = UDim2.new(1, 0, 0, 10),
                        ZIndex = 2,
                        Parent = d12
                    })
                    a40("TextLabel", {
                        Text = string.upper(d11.name),
                        Font = Enum.Font.GothamBold,
                        TextSize = 10,
                        TextWrapped = true,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        Position = UDim2.fromOffset(3, 15),
                        Size = UDim2.new(1, -6, 0, 28),
                        ZIndex = 2,
                        Parent = d12
                    })
                    d12.MouseButton1Click:Connect(function()
                        if V.a273.Enabled and V.a273.Fire(d11) then
                            a72("Move: " .. d11.name, "accent")
                        end
                    end)
                    table.insert(c7, {Frame = d12, Move = d11, Cd = d13})
                end
            end
            task.spawn(function()
                while a37 do
                    local d2 = {}
                    local d1 = {}
                    if V.a273.Enabled then
                        for d6, d7 in ipairs(V.a273.Current().moves) do
                            if c9(d7) then
                                table.insert(d1, d7)
                                table.insert(d2, tostring(d7) .. d7.name .. d7.key)
                            end
                        end
                    end
                    local d8 = table.concat(d2, "|")
                    if d8 ~= c8 then
                        c8 = d8
                        c10(d1)
                    end
                    c1.Visible = #d1 > 0
                    for d12, d13 in ipairs(c7) do
                        local d14 = d13.Move
                        local d15 = V.a273.CooldownLeft(d14)
                        d13.Cd.Size = UDim2.fromScale(1, d14.cd > 0 and d15 > 0 and math.clamp(d15 / d14.cd, 0, 1) or 0)
                        d13.Frame.BackgroundColor3 = V.a273.IsRunning(d14) and a32.Lift or a32.Panel
                    end
                    task.wait(0.1)
                end
            end)
        end)()
        task.spawn(function()
            local c1 = game:GetService("RunService")
            local c2 = Players.LocalPlayer
            local c3 = {One = "1", Two = "2", Three = "3", Four = "4"}
            local c4 = a40("ScreenGui", {Name = "RYOIKI_Hotbar", ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
            local c5 = {}
            local c6 = setmetatable({}, {__mode = "k"})
            local c7 = {}
            local c8 = {}
            local function c9(d1)
                if d1 and d1:IsA("GuiObject") then
                    local d2 = c6[d1]
                    if not d2 then
                        d2 = {wanted = true, restoreVisible = true}
                        c6[d1] = d2
                    end
                    d2.wanted = true
                    d1.Visible = false
                end
            end
            local function c10(d1)
                local d2 = c6[d1]
                if d2 then
                    d2.wanted = false
                    if d1 and d1.Parent then
                        d1.Visible = d2.restoreVisible
                    end
                end
            end
            local function c11(d1)
                return d1 and (d1:IsA("TextLabel") or d1:IsA("TextButton")) and d1.Text or nil
            end
            local function c12(d1)
                while d1 and not d1:IsA("ScreenGui") do
                    if d1:IsA("GuiObject") and not d1.Visible then
                        return false
                    end
                    d1 = d1.Parent
                end
                return d1 ~= nil and d1.Enabled
            end
            local function c13(d1)
                for d5, d6 in ipairs(d1:GetDescendants()) do
                    if d6:IsA("LuaSourceContainer") then
                        d6:Destroy()
                    end
                end
            end
            local function c14(d1)
                if d1.TextTransparency < 1 or c5[d1] == nil then
                    c5[d1] = d1.TextTransparency < 1 and d1.TextTransparency or c5[d1] or 0
                    d1.TextTransparency = 1
                end
            end
            local function c15(d1)
                if c5[d1] ~= nil and d1.Parent then
                    d1.TextTransparency = c5[d1]
                end
                c5[d1] = nil
                if c7[d1] then
                    c7[d1]:Destroy()
                    c7[d1] = nil
                end
            end
            local function c16(d1, d2)
                c14(d1)
                local d3 = c7[d1]
                if not d3 or not d3.Parent then
                    d3 = d1:Clone()
                    c13(d3)
                    for d7, d8 in ipairs(d3:GetChildren()) do
                        if d8:IsA("GuiObject") then
                            d8:Destroy()
                        end
                    end
                    d3.Name = "RYOIKI_Name"
                    d3.AnchorPoint = Vector2.zero
                    d3.Rotation = 0
                    d3.Parent = c4
                    c7[d1] = d3
                end
                d3.Text = d2
                d3.TextColor3 = d1.TextColor3
                d3.TextTransparency = c5[d1] or 0
            end
            local function c17(d1)
                local d2 = d1:FindFirstChild("Key")
                if not d2 then
                    return nil
                end
                local d3 = d2:FindFirstChild("Key")
                if c11(d3) then
                    return d3
                end
                return c11(d2) and d2 or nil
            end
            local function c18(d1)
                local d2 = {}
                for d6, d7 in ipairs(d1:GetChildren()) do
                    if d7:GetAttribute("RYOIKI") then
                        d7:Destroy()
                    elseif d7:IsA("GuiObject") and c11(d7:FindFirstChild("ItemName")) then
                        table.insert(d2, d7)
                    end
                end
                local function d8(e1)
                    return tonumber(c11(c17(e1)) or "")
                end
                table.sort(d2, function(e1, e2)
                    local e4 = d8(e2)
                    local e3 = d8(e1)
                    if e3 and e4 and e3 ~= e4 then
                        return e3 < e4
                    end
                    if e1.LayoutOrder ~= e2.LayoutOrder then
                        return e1.LayoutOrder < e2.LayoutOrder
                    end
                    return e1.AbsolutePosition.X < e2.AbsolutePosition.X
                end)
                local d9 = {}
                for d13, d14 in ipairs(d2) do
                    d9[tostring(d8(d14) or d13)] = d14
                end
                return d2, d9
            end
            local c20 = 0
            local c19 = {}
            local function c21(d1)
                local d2 = os.clock() >= c20
                for d6, d7 in ipairs(c19) do
                    if not d7:IsDescendantOf(d1) then
                        d2 = true
                    end
                end
                if d2 then
                    c20 = os.clock() + 3
                    c19 = {}
                    for d11, d12 in ipairs(d1:GetDescendants()) do
                        if d12.Name == "Moveset" and d12:IsA("GuiObject") and not d12:IsDescendantOf(a58) and not d12:IsDescendantOf(c4) then
                            table.insert(c19, d12)
                        end
                    end
                end
                local d13 = {}
                for d17, d18 in ipairs(c19) do
                    local d19, d20 = c18(d18)
                    if #d19 > 0 then
                        table.insert(d13, {ms = d18, slots = d19, byKey = d20})
                    end
                end
                return d13
            end
            local function c22(d1)
                for d5, d6 in ipairs(d1.clones) do
                    d6.Frame:Destroy()
                end
                local d7 = d1
                local d8 = d1
                d8.sig = nil
                d7.clones = {}
            end
            local function c23(d1, d2, d3)
                c22(d1)
                local d4 = d2[#d2]
                for d8, d9 in ipairs(d3) do
                    local d10 = d4:Clone()
                    c13(d10)
                    for d14, d15 in ipairs(d10:GetDescendants()) do
                        if d15.Name == "Tip" then
                            d15:Destroy()
                        end
                    end
                    d10.Name = "RYOIKI_Slot"
                    d10.AnchorPoint = Vector2.zero
                    d10.Rotation = 0
                    local d16 = d10:FindFirstChild("ItemName")
                    if c11(d16) then
                        d16.Text = d9.name
                        d16.TextTransparency = c5[d4.ItemName] or d16.TextTransparency
                    end
                    local d17 = c17(d10)
                    if d17 then
                        d17.Text = b23(d9.m.key)
                    end
                    local d18 = a40("Frame", {
                        BackgroundColor3 = Color3.new(0, 0, 0),
                        BackgroundTransparency = 0.5,
                        BorderSizePixel = 0,
                        AnchorPoint = Vector2.new(0, 1),
                        Position = UDim2.fromScale(0, 1),
                        Size = UDim2.fromScale(1, 0),
                        ZIndex = d10.ZIndex + 5,
                        Parent = d10
                    })
                    local d19 = d9.m
                    local d20 = a40("TextButton", {
                        Text = "",
                        BackgroundTransparency = 1,
                        Size = UDim2.fromScale(1, 1),
                        ZIndex = d10.ZIndex + 6,
                        Parent = d10
                    })
                    d20.MouseButton1Click:Connect(function()
                        if V.a273.Enabled and V.a273.Fire(d19) then
                            a72("Move: " .. d19.name, "accent")
                        end
                    end)
                    d10.Parent = c4
                    table.insert(d1.clones, {Frame = d10, Move = d19, Cd = d18})
                end
            end
            local c24 = c1.RenderStepped:Connect(function()
                for d4, d5 in pairs(c6) do
                    if d4.Parent then
                        if d5.wanted then
                            d4.Visible = false
                        else
                            d4.Visible = d5.restoreVisible
                        end
                    else
                        c6[d4] = nil
                    end
                end
                for d9, d10 in pairs(c7) do
                    if d9.Parent then
                        d10.Position = UDim2.fromOffset(d9.AbsolutePosition.X, d9.AbsolutePosition.Y)
                        d10.Size = UDim2.fromOffset(d9.AbsoluteSize.X, d9.AbsoluteSize.Y)
                        d10.Visible = c12(d9)
                    end
                end
                for d14, d15 in pairs(c8) do
                    local d16 = {}
                    for d20, d21 in ipairs(d15.slots or {}) do
                        if d21.Parent and d21.Visible then
                            table.insert(d16, d21)
                        end
                    end
                    if #d16 == 0 then
                        d16 = d15.slots or {}
                    end
                    local d22 = d16[#d16]
                    if d22 and d22.Parent then
                        local d23 = d16[#d16 - 1]
                        local d24 = d23 and d23.Parent and d22.AbsolutePosition - d23.AbsolutePosition or Vector2.new(d22.AbsoluteSize.X + 6, 0)
                        local d25 = c12(d14)
                        for d29, d30 in ipairs(d15.clones) do
                            local d31 = d22.AbsolutePosition + d24 * d29
                            d30.Frame.Position = UDim2.fromOffset(d31.X, d31.Y)
                            d30.Frame.Size = UDim2.fromOffset(d22.AbsoluteSize.X, d22.AbsoluteSize.Y)
                            d30.Frame.Visible = d25
                        end
                    end
                end
            end)
            while a37 do
                pcall(function()
                    local d1 = c2:FindFirstChildOfClass("PlayerGui")
                    if d1 and c4.Parent ~= d1 then
                        c4.Parent = d1
                    end
                    local d4 = {}
                    local d3 = {}
                    local d2 = {}
                    if V.a273.Enabled and d1 then
                        for d8, d9 in ipairs(c21(d1)) do
                            local d12 = d9.byKey
                            local d11 = d9.slots
                            local d10 = d9.ms
                            local d13 = d10:FindFirstAncestorOfClass("ScreenGui")
                            if d13 then
                                c4.IgnoreGuiInset = d13.IgnoreGuiInset
                                c4.DisplayOrder = d13.DisplayOrder + 1
                                pcall(function()
                                    c4.ScreenInsets = d13.ScreenInsets
                                end)
                            end
                            d4[d10] = true
                            local d14 = c8[d10] or {clones = {}}
                            c8[d10] = d14
                            d14.slots = d11
                            local d15 = V.a273.Current().moves
                            local d16 = {}
                            for d20, d21 in ipairs(d15) do
                                if d21.opts.hideGameHotbar then
                                    local d22 = d12[c3[d21.key] or ""]
                                    local d23 = d21.key == "G" and d10.Parent and d10.Parent:FindFirstChild("Ultimate")
                                    local d24 = d22 or d23
                                    if d24 and d24:IsA("GuiObject") then
                                        d16[d24] = true
                                    end
                                end
                            end
                            for d28 in pairs(d16) do
                                c9(d28)
                                d3[d28] = true
                            end
                            local d30 = {}
                            local d29 = {}
                            for d34, d35 in ipairs(d15) do
                                local d36 = d12[c3[d35.key] or ""]
                                local d37 = d35.key == "G" and d10.Parent and d10.Parent:FindFirstChild("Ultimate")
                                local d38 = d36 or d37
                                if d35.opts.hotbar and not (d38 and d16[d38]) then
                                    local d39 = d35.opts.hotbarName ~= "" and d35.opts.hotbarName or d35.name
                                    local d40 = d37 and d37:FindFirstChild("Title")
                                    if d36 then
                                        local d41 = d36:FindFirstChild("ItemName")
                                        c16(d41, d39)
                                        d2[d41] = true
                                        local d42 = d36:FindFirstChild("Tip")
                                        if c11(d42) then
                                            c14(d42)
                                            d2[d42] = true
                                        end
                                    elseif c11(d40) then
                                        c16(d40, d39)
                                        d2[d40] = true
                                    elseif d35.key ~= "MouseButton1" and d35.key ~= "MouseButton2" and d35.key ~= "Q" and not d35.dir and not c3[d35.key] and d35.key ~= "G" then
                                        table.insert(d29, {m = d35, name = d39})
                                        table.insert(d30, tostring(d35) .. d39 .. d35.key)
                                    end
                                end
                            end
                            local d43 = tostring(d11[#d11]) .. "|" .. table.concat(d30, "|")
                            if #d29 == 0 then
                                c22(d14)
                            elseif d43 ~= d14.sig then
                                c23(d14, d11, d29)
                                d14.sig = d43
                            end
                            for d47, d48 in ipairs(d14.clones) do
                                local d49 = d48.Move
                                local d50 = V.a273.CooldownLeft(d49)
                                d48.Cd.Size = UDim2.fromScale(1, d49.cd > 0 and d50 > 0 and math.clamp(d50 / d49.cd, 0, 1) or 0)
                            end
                        end
                    end
                    for d54, d55 in pairs(c8) do
                        if not d4[d54] then
                            c22(d55)
                            c8[d54] = nil
                        end
                    end
                    for d59 in pairs(c5) do
                        if not d2[d59] then
                            c15(d59)
                        end
                    end
                    for d63, d64 in pairs(c6) do
                        d64.wanted = d3[d63] == true
                    end
                end)
                task.wait(0.25)
            end
            c24:Disconnect()
            for c28 in pairs(c5) do
                c15(c28)
            end
            for c32 in pairs(c6) do
                c10(c32)
            end
            table.clear(c6)
            c4:Destroy()
        end)
        b67()
    end)()
    V.a275 = function()
        a37 = false
        pcall(V.a258.Stop)
        pcall(V.a273.Unload)
        pcall(function()
            local c1 = workspace.CurrentCamera
            local c2 = c1 and c1:FindFirstChild("RYOIKI_Ghost")
            if c2 then
                c2:Destroy()
            end
        end)
        pcall(V.a257.Reset)
        pcall(function()
            V.a254.Disable()
        end)
        pcall(function()
            a147.Stop()
        end)
        pcall(a148.SetAuto, false)
        pcall(a150.Down, true)
        pcall(a151.Down, true)
        local b3, b2, b1 = ipairs(a38)
        while true do
            local b5 = b3(b2, b1)
            if b4 == nil then
                break
            end
            b1 = b4
            pcall(function()
                b5:Disconnect()
            end)
        end
        if a58 then
            a58:Destroy()
        end
        a50.RYOIKI = nil
        a50.RYOIKI_Destroy = nil
    end
    V.a276 = V.a197("Settings")
    V.a277 = a40("ScrollingFrame", {
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(10, 10),
        Size = UDim2.new(1, -20, 1, -20),
        ScrollBarThickness = 3,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(),
        Parent = V.a276
    })
    a35(V.a277, "ScrollBarImageColor3")
    a40("UIListLayout", {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V.a277})
    V.a278 = 0
    V.a279 = function(b1)
        V.a278 = V.a278 + 1
        local b2 = a40("Frame", {BackgroundColor3 = a32.Panel, Size = UDim2.new(1, -8, 0, 46), LayoutOrder = V.a278, Parent = V.a277})
        a49(b2, a32.Stroke)
        a40("TextLabel", {
            Text = string.upper(b1),
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            Position = UDim2.fromOffset(12, 0),
            Size = UDim2.new(0.4, 0, 1, 0),
            Parent = b2
        })
        return b2
    end
    V.a280 = V.a279("Toggle Keybind")
    V.a281 = nil
    V.a281 = a74(V.a280, a82.Name, function()
        if not UserInputService.KeyboardEnabled then
            a67("Keybind", "No keyboard here. Use the " .. string.sub(a5.Name, 1, 1) .. " button to open the hub.", 4)
            return
        end
        V.a255 = true
        V.a281.Text = "PRESS A KEY..."
    end)
    V.a281.AnchorPoint = Vector2.new(1, 0.5)
    V.a281.Position = UDim2.new(1, -10, 0.5, 0)
    V.a281.Size = UDim2.fromOffset(140, 26)
    a50._RYOIKI_RefreshBind = function()
        V.a281.Text = string.upper(a82.Name)
    end
    V.a282 = V.a279("Accent Color")
    V.a283 = a40("Frame", {
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        Size = UDim2.fromOffset(120, 24),
        Parent = V.a282
    })
    a40("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        Padding = UDim.new(0, 8),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = V.a283
    })
    V.a284 = {[1] = "FF2D55", [2] = "00E5FF", [3] = "A855F7", [4] = "FFD60A"}
    V.a287, V.a286, V.a285 = ipairs(V.a284)
    while true do
        local a289 = V.a287(V.a286, V.a285)
        if a288 == nil then
            break
        end
        V.a285 = a288
        local a290 = Color3.fromHex(a289)
        local a291 = a40("TextButton", {BackgroundColor3 = a290, Size = UDim2.fromOffset(24, 24), LayoutOrder = a288, Parent = V.a283})
        local a292 = a49(a291, a32.Stroke)
        a34(function()
            a292.Color = a32.Accent == a290 and a32.Text or a32.Stroke
        end)
        a291.MouseButton1Click:Connect(function()
            a36(a290)
            a57.Set("Accent", a289)
            a72("Accent: #" .. a289, "accent")
        end)
    end
    V.a293 = V.a279("UI Scale")
    V.a294 = nil
    V.a294, V.a256 = a76(V.a293, 0.8, 1.2, 1, 0.05, "x", function(b1)
        a119(b1)
        a57.Set("Scale", b1)
    end)
    V.a294.AnchorPoint = Vector2.new(1, 0.5)
    V.a294.Position = UDim2.new(1, -62, 0.5, 0)
    V.a294.Size = UDim2.fromOffset(150, 22)
    V.a295 = a74(V.a293, "Reset", function()
        V.a256.Set(1)
    end)
    V.a295.TextSize = 9
    V.a295.AnchorPoint = Vector2.new(1, 0.5)
    V.a295.Position = UDim2.new(1, -10, 0.5, 0)
    V.a295.Size = UDim2.fromOffset(42, 22)
    V.a296 = V.a279("Phone Layout")
    V.a297 = {[1] = "Auto", [2] = "On", [3] = "Off"}
    V.a298 = nil
    V.a298 = a74(V.a296, "Auto", function()
        local b1 = table.find(V.a297, a60.Mode) or 1
        a60.SetMode(V.a297[b1 % #V.a297 + 1])
        a67("Phone Layout", a60.IsMobile() and "Phone layout is on: fits the screen, long-press for menus and help." or "Phone layout is off.", 4)
    end)
    V.a298.AnchorPoint = Vector2.new(1, 0.5)
    V.a298.Position = UDim2.new(1, -10, 0.5, 0)
    V.a298.Size = UDim2.fromOffset(140, 26)
    a60.OnChange(function()
        local b1 = a60.Mode
        if b1 == "Auto" then
            V.a298.Text = a60.Touch() and "AUTO (PHONE)" or "AUTO (PC)"
        else
            V.a298.Text = string.upper(b1)
        end
    end)
    V.a299 = function(b1)
        return string.gsub(string.gsub(string.gsub(tostring(b1), "&", "&amp;"), "<", "&lt;"), ">", "&gt;")
    end
    V.a300 = function(b1)
        return "#" .. b1:ToHex()
    end
    V.a301 = function()
        V.a278 = V.a278 + 1
        local b1 = a40("Frame", {
            BackgroundColor3 = a32.Panel,
            Size = UDim2.new(1, -8, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            LayoutOrder = V.a278,
            Visible = false,
            Parent = V.a277
        })
        a49(b1, a32.Stroke)
        a40("UIPadding", {
            PaddingLeft = UDim.new(0, 12),
            PaddingRight = UDim.new(0, 12),
            PaddingTop = UDim.new(0, 8),
            PaddingBottom = UDim.new(0, 8),
            Parent = b1
        })
        local b2 = a40("TextLabel", {
            RichText = true,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Parent = b1
        })
        return b1, b2
    end
    V.a302 = function(b1, b2, b3, b4, b5)
        local b6 = a74(b1, b2, b5)
        b6.AnchorPoint = Vector2.new(1, 0.5)
        b6.Position = UDim2.new(1, b3, 0.5, 0)
        b6.Size = UDim2.fromOffset(b4, 26)
        return b6
    end
    V.a303 = V.a279("Executor Check")
    V.a305 = V.a301()
    V.a304 = V.a301()
    V.a306 = function()
        local b1 = a65.Run()
        local b3 = V.a300(a32.Muted)
        local b2 = V.a300(a32.Ok)
        local b4 = {
            [1] = "<b>" .. V.a299(b1.name) .. "</b>  <font color=\"" .. b3 .. "\">" .. b1.good .. " of " .. b1.total .. " work</font>",
            [2] = ""
        }
        for b8, b9 in ipairs(b1.rows) do
            local b10 = b9.state == "ok" and "<font color=\"" .. b2 .. "\">OK</font>" or b9.state == "broken" and "<font color=\"" .. V.a300(a32.Warn) .. "\">BROKEN</font>" or "<font color=\"" .. V.a300(a32.Accent) .. "\">MISSING</font>"
            local b11 = b10 .. "  " .. V.a299(b9.name) .. "  <font color=\"" .. b3 .. "\">" .. V.a299(b9.why) .. "</font>"
            if b9.extra then
                b11 = b11 .. "\n      <font color=\"" .. b3 .. "\"><i>" .. V.a299(b9.extra) .. "</i></font>"
            end
            table.insert(b4, b11)
        end
        V.a305.Text = table.concat(b4, "\n")
        V.a304.Visible = true
        local b12 = #b1.bad + #b1.gone
        if b12 == 0 then
            a72("Executor check: everything works", "ok")
        else
            a72("Executor check: " .. a65.Summary(b1), "accent")
        end
        a62.Add("info", "ran executor check: " .. a65.Summary(b1))
    end
    V.a302(V.a303, "Hide", -10, 50, function()
        V.a304.Visible = false
    end)
    V.a302(V.a303, "Run check", -66, 90, V.a306)
    V.a307 = V.a279("Debug Log")
    V.a309 = V.a301()
    V.a308 = V.a301()
    V.a310 = function()
        local b1 = V.a300(a32.Muted)
        local b2 = {}
        local b3 = math.max(1, #a62.Lines - 19)
        for b7 = #a62.Lines, b3, -1 do
            local b8 = a62.Lines[b7]
            local b9 = b8.kind == "err" and V.a300(a32.Accent) or b8.kind == "warn" and V.a300(a32.Warn) or V.a300(a32.Text)
            table.insert(b2, "<font color=\"" .. b1 .. "\">" .. b8.time .. "</font>  <font color=\"" .. b9 .. "\">" .. V.a299(b8.text) .. "</font>" .. (b8.n > 1 and "<font color=\"" .. b1 .. "\"> x" .. b8.n .. "</font>" or ""))
        end
        if #b2 == 0 then
            b2[1] = "<font color=\"" .. b1 .. "\">nothing here yet. if something breaks it shows up here</font>"
        else
            table.insert(b2, 1, "<font color=\"" .. b1 .. "\">newest first, last " .. #b2 .. " of " .. #a62.Lines .. "</font>")
        end
        V.a309.Text = table.concat(b2, "\n")
        V.a308.Visible = true
    end
    V.a311 = nil
    V.a311 = V.a302(V.a307, "Show", -10, 60, function()
        if V.a308.Visible then
            V.a308.Visible = false
            V.a311.Text = "SHOW"
        else
            V.a310()
            V.a311.Text = "HIDE"
        end
    end)
    V.a302(V.a307, "Copy", -76, 60, function()
        local b1 = a62.Text()
        if typeof(setclipboard) == "function" and pcall(setclipboard, b1) then
            a67("Debug Log", "Copied. Paste it in the discord and say what you were doing.", 4)
        else
            V.a309.Text = V.a299(b1)
            V.a308.Visible = true
            V.a311.Text = "HIDE"
            a67("Debug Log", "Your executor can't copy. Screenshot the log instead.", 4)
        end
    end)
    V.a302(V.a307, "Clear", -142, 60, function()
        table.clear(a62.Lines)
        if V.a308.Visible then
            V.a310()
        end
        a72("Debug log cleared", "ok")
    end)
    V.a312 = V.a279("Destroy GUI")
    V.a313 = a74(V.a312, "Destroy", V.a275)
    V.a313.AnchorPoint = Vector2.new(1, 0.5)
    V.a313.Position = UDim2.new(1, -10, 0.5, 0)
    V.a313.Size = UDim2.fromOffset(140, 26)
    V.a220("Fun")
    V.a220("Halloween")
    V.a220("Roulette")
    V.a315 = V.a194.Roulette
    V.a314 = V.a215.Roulette
    V.a316 = {
        [1] = {[1] = "ALL", [2] = "All modes"},
        [2] = {[1] = "SWP", [2] = "Brain Swap"},
        [3] = {[1] = "SRC", [2] = "Sorcery Clash"},
        [4] = {[1] = "FTT", [2] = "First to Twelve"},
        [5] = {[1] = "FSD", [2] = "Final Showdown"},
        [6] = {[1] = "EOJ", [2] = "End of Journey"},
        [7] = {[1] = "PFT", [2] = "Perfection Tag"},
        [8] = {[1] = "AMS", [2] = "American Shenanigans"},
        [9] = {[1] = "PSR", [2] = "Prison Realm"},
        [10] = {[1] = "SSP", [2] = "Soul Swap"}
    }
    V.a314.Mode = "ALL"
    V.a317 = a40("Frame", {
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(10, 44),
        Size = UDim2.new(1, -20, 0, 20),
        Parent = V.a315
    })
    a40("UIListLayout", {
        FillDirection = Enum.FillDirection.Horizontal,
        Padding = UDim.new(0, 3),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = V.a317
    })
    V.a318 = a40("TextLabel", {
        Text = "",
        TextColor3 = a32.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Position = UDim2.fromOffset(12, 74),
        Size = UDim2.new(1, -24, 0, 16),
        Visible = false,
        Parent = V.a315
    })
    V.a314.Scroll.Position = UDim2.fromOffset(10, 72)
    V.a314.Scroll.Size = UDim2.new(1, -20, 1, -82)
    V.a319 = {}
    V.a320 = function()
        local b1 = 0
        for b5, b6 in ipairs(V.a314.Cards) do
            if b6.Mode == V.a314.Mode then
                b1 = b1 + 1
            end
        end
        for b10, b11 in pairs(V.a319) do
            local b12 = b10 == V.a314.Mode
            b11.BackgroundColor3 = b12 and a32.Accent or a32.Background
            b11.TextColor3 = b12 and a32.Background or a32.Muted
        end
        for b16, b17 in ipairs(V.a316) do
            if b17[1] == V.a314.Mode and b17[1] ~= "ALL" and b1 == 0 then
                V.a318.Text = b17[2] .. ": nothing just for this mode yet."
            end
        end
        V.a318.Visible = V.a314.Mode ~= "ALL" and b1 == 0
        V.a314.Scroll.Position = UDim2.fromOffset(10, V.a318.Visible and 92 or 72)
        V.a218(V.a314)
    end
    V.a323, V.a322, V.a321 = ipairs(V.a316)
    while true do
        local a325 = V.a323(V.a322, V.a321)
        if a324 == nil then
            break
        end
        V.a321 = a324
        local a326 = a40("TextButton", {
            Text = a325[1],
            Font = Enum.Font.GothamBold,
            TextSize = 9,
            Size = UDim2.fromOffset(a324 == 1 and 40 or 41, 20),
            LayoutOrder = a324,
            Parent = V.a317
        })
        a49(a326, a32.Stroke)
        V.a319[a325[1]] = a326
        a326.MouseButton1Click:Connect(function()
            V.a314.Mode = a325[1]
            V.a320()
            a72("Roulette: " .. a325[2], "accent")
        end)
    end
    a34(V.a320)
    V.a215.Roulette.RenderModes = V.a320
    V.a220("Player")
    V.a220("AC Bypass")
    V.a327 = function()
    
    end
    V.a222("Fun", {
        Name = "Todo Inf Range Swap",
        Description = "Todo swap with infinite range.",
        Type = "Toggle",
        Callback = V.a327
    })
    V.a222("Fun", {
        Name = "Swap Target Indicator",
        Description = "Highlights who your cursor is near and shows if a swap is ready.",
        Type = "Toggle",
        Default = false,
        Callback = function(b1)
            if b1 then
                V.a254.Enable()
            else
                V.a254.Disable()
            end
        end
    })
    V.a222("Fun", {
        Name = "Skinwalker",
        Description = "When you die, your body gets back up and walks. Wall Crawl, Auto Walk and Auto Skinwalker are inside.",
        Type = "Button",
        ButtonText = "Open",
        Callback = function()
            V.a260()
        end
    })
    V.a222("Fun", {
        Name = "DESTROY MAP",
        Description = "WARNING: can lag your device REALLY hard. Resets you, then your body plows through every wall near you at 450 speed, and gets pulled back if it falls off the map. Box = seconds. Press again to stop.",
        Type = "Button",
        ButtonText = "DESTROY",
        Box = {
            Default = 40,
            Min = 1,
            Max = 120,
            Suffix = "s",
            Width = 52,
            Callback = function(b1)
                V.a262(b1)
            end
        },
        Callback = function()
            V.a261()
        end
    })
    V.a222("Fun", {
        Name = "Wrecking Ball",
        Description = "While ragdolled, hold M1: your body rams what your cursor is on, then flies back when you let go. Works with Skinwalker.",
        Type = "Button",
        ButtonText = "Open",
        Callback = function()
            V.a263()
        end
    })
    V.a222("Fun", {
        Name = "Item Menu",
        Description = "Pick one item, grab it, or auto-grab it.",
        Type = "Button",
        ButtonText = "Open",
        Callback = function()
            V.a191()
        end
    })
    V.a222("Halloween", {
        Name = "Auto Door",
        Description = "Opens every door on the map, nearest first, and keeps watching for new ones.",
        Type = "Toggle",
        Default = false,
        Callback = function(b1)
            a148.SetAuto(b1)
            if b1 then
                a67("Auto Door", a148.Count() .. " doors found right now.", 3)
            end
        end
    })
    V.a222("Halloween", {
        Name = "Open Nearest Door",
        Description = "Opens the closest door once.",
        Type = "Button",
        ButtonText = "Open",
        Callback = function()
            task.spawn(function()
                local c1, c2 = a148.OpenNearest()
                a67("Door", c1 and "Opened " .. tostring(c2) .. "." or "Could not open: " .. tostring(c2) .. ".", 3)
            end)
        end
    })
    V.a222("Halloween", {
        Name = "Hide Underground",
        Description = "Stays under the ground while opening doors so no one sees you.",
        Type = "Toggle",
        Default = false,
        Callback = function(b1)
            a148.Config.Hide = b1
        end
    })
    V.a222("Halloween", {
        Name = "Hide Depth",
        Description = "How far under the ground you stay (studs).",
        Type = "Slider",
        Min = 2,
        Max = 15,
        Default = 6,
        Step = 1,
        Callback = function(b1)
            a148.Config.Depth = b1
        end
    })
    V.a222("Halloween", {
        Name = "Sky Platform",
        Description = "Floats you up slowly and puts a platform under you. Off floats you back down.",
        Type = "Toggle",
        Default = false,
        OnControl = function(b1)
            a150.OnReset = function()
                b1.Set(false)
            end
        end,
        Callback = function(b1)
            if b1 then
                local b2, b3 = a150.Up()
                if not b2 then
                    a67("Sky Platform", tostring(b3), 3)
                end
            else
                a150.Down(false)
            end
        end
    })
    V.a222("Halloween", {
        Name = "Sky Height",
        Description = "How high Sky Platform takes you (studs).",
        Type = "Slider",
        Min = 100,
        Max = 2000,
        Default = 1100,
        Step = 50,
        Callback = function(b1)
            a150.Config.Height = b1
        end
    })
    V.a222("Roulette", {
        Name = "Auto Farm",
        Description = "Flies you 10000 studs up, puts a platform under you and freezes you there. Off brings you back down.",
        Type = "Toggle",
        Default = false,
        OnControl = function(b1)
            a151.OnReset = function()
                b1.Set(false)
            end
        end,
        Callback = function(b1)
            if b1 then
                local b2, b3 = a151.Up()
                if not b2 then
                    a67("Auto Farm", tostring(b3), 3)
                end
            else
                a151.Down(false)
            end
        end
    })
    V.a222("Roulette", {
        Name = "Kit Presets",
        Description = "Pick the kit you want. The list grows by itself every time the pick screen shows new kits.",
        Type = "Dropdown",
        Default = "Pick a kit...",
        Mode = "SSP",
        Options = function()
            local b1 = {}
            for b5, b6 in ipairs(V.a264.List) do
                local b7 = V.a264.Rarity[b6]
                table.insert(b1, {text = b6 .. (b7 and "  \194\183  " .. b7 or ""), value = b6})
            end
            return b1
        end,
        Callback = function(b1)
            V.a265.Want = b1
            a72("Auto Moveset will look for " .. b1, "accent")
        end
    })
    V.a222("Roulette", {
        Name = "Soul Swap Moveset",
        Description = "Or type any kit name yourself (part of the name is fine).",
        Type = "Input",
        Placeholder = "e.g. Viltrumite, Brawler",
        Mode = "SSP",
        Callback = function(b1)
            V.a265.Want = b1
        end
    })
    V.a222("Roulette", {
        Name = "Auto Moveset",
        Description = "Resets until the moveset you typed shows up on your screen, then stops by itself.",
        Type = "Toggle",
        Default = false,
        Mode = "SSP",
        OnControl = function(b1)
            V.a265.OnState = function(c1)
                if not c1 then
                    b1.Set(false)
                end
            end
        end,
        Callback = function(b1)
            if b1 then
                V.a265.Start()
            else
                V.a265.Stop()
            end
        end
    })
    V.a222("Player", {
        Name = "Walk Speed",
        Description = "How fast you run. Move it back to " .. V.a257.Default("Speed") .. " to release it.",
        Type = "Slider",
        Min = 16,
        Max = 200,
        Default = V.a257.Default("Speed"),
        Step = 1,
        Callback = function(b1)
            V.a257.Set("Speed", b1)
        end
    })
    V.a222("Player", {
        Name = "Jump Power",
        Description = "How high you jump. Move it back to " .. V.a257.Default("Jump") .. " to release it.",
        Type = "Slider",
        Min = 50,
        Max = 300,
        Default = V.a257.Default("Jump"),
        Step = 5,
        Callback = function(b1)
            V.a257.Set("Jump", b1)
        end
    })
    V.a222("Player", {
        Name = "Gravity",
        Description = "World gravity. Lower floats, higher drops you faster.",
        Type = "Slider",
        Min = 0,
        Max = 300,
        Default = math.floor(V.a257.Default("Gravity") + 0.5),
        Step = 1,
        Callback = function(b1)
            V.a257.Set("Gravity", b1)
        end
    })
    V.a222("Player", {
        Name = "Field of View",
        Description = "Camera zoom. Higher shows more of the screen.",
        Type = "Slider",
        Min = 40,
        Max = 120,
        Default = math.floor(V.a257.Default("FOV") + 0.5),
        Step = 1,
        Callback = function(b1)
            V.a257.Set("FOV", b1)
        end
    })
    V.a222("Player", {
        Name = "Infinite Jump",
        Description = "Jump again in mid-air.",
        Type = "Toggle",
        Default = false,
        Callback = function(b1)
            V.a257.InfJump(b1)
        end
    })
    V.a222("Player", {
        Name = "Anti AFK",
        Description = "Stops the idle kick while you are away.",
        Type = "Toggle",
        Default = false,
        Callback = function(b1)
            V.a257.AntiAFK(b1)
        end
    })
    V.a222("Fun", {
        Name = "Knockback Multiplier",
        Description = "Get launched further when you are hit.",
        Type = "Button",
        ButtonText = "Open",
        Callback = function()
            V.a267()
        end
    })
    V.a222("Player", {
        Name = "Reset Character",
        Description = "Resets like the Roblox menu. Warns if it didn't go through.",
        Type = "Button",
        ButtonText = "Reset",
        Callback = function()
            V.a257.ResetCharacter()
        end
    })
    V.a328 = V.a222("AC Bypass", {
        Name = "Rubberband Bypass",
        Description = "Teleports you ahead. If pulled back, it resets and retries.",
        Type = "Button",
        ButtonText = "Start",
        Callback = function()
            if V.a258.IsRunning() then
                V.a258.Stop()
                a67("AC Bypass", "Stopped.", 3)
            else
                V.a258.Start()
            end
        end
    })
    V.a258.OnState = function(b1)
        local b2 = V.a328 and V.a328:FindFirstChild("Button")
        if b2 then
            b2.Text = b1 and "STOP" or "START"
        end
    end
    V.a222("AC Bypass", {
        Name = "Noclip",
        Description = "Walk through walls. Needs AC Bypass first.",
        Type = "Toggle",
        Default = false,
        Allow = function()
            if V.a258.IsBypassed() then
                return true
            end
            return false, "Requires AC Bypass. Run Rubberband Bypass in the AC BYPASS tab first."
        end,
        Callback = function(b1)
            V.a257.Noclip(b1)
        end
    })
    V.a222("AC Bypass", {
        Name = "Teleport Distance",
        Description = "Test teleport distance, in studs.",
        Type = "Slider",
        Min = 20,
        Max = 200,
        Default = 60,
        Step = 5,
        Callback = function(b1)
            V.a258.SetDistance(b1)
        end
    })
    V.a222("AC Bypass", {
        Name = "Halloween",
        Description = "Go to the Halloween tab.",
        Type = "Button",
        ButtonText = "Go",
        Callback = function()
            V.a198("Halloween")
        end
    })
    V.a329 = a57.Get("Accent")
    if type(V.a329) == "string" then
        local a330, a331 = pcall(Color3.fromHex, V.a329)
        if a330 then
            a36(a331)
        end
    end
    V.a332 = a57.Get("ToggleKey")
    if type(V.a332) == "string" then
        local a333, a334 = pcall(function()
            return Enum.KeyCode[V.a332]
        end)
        if a333 and a334 then
            a82 = a334
            a115()
            if a50._RYOIKI_RefreshBind then
                a50._RYOIKI_RefreshBind()
            end
        end
    end
    V.a335 = a57.Get("Scale")
    if type(V.a335) == "number" and V.a256 then
        V.a256.Set(math.clamp(V.a335, 0.8, 1.2))
    end
    V.a336 = function()
        a80 = true
        a118(true)
        if a60.IsMobile() then
            a67(a5.Name, "Loaded. Tap \195\151 to hide, the " .. string.sub(a5.Name, 1, 1) .. " button opens it again.", 4)
        else
            a67(a5.Name, "Loaded. Press " .. a82.Name .. " to hide.", 3)
        end
    end
    a39(UserInputService.InputBegan:Connect(function(b1, b2)
        if V.a255 and b1.UserInputType == Enum.UserInputType.Keyboard then
            V.a255 = false
            if b1.KeyCode ~= Enum.KeyCode.Escape then
                a82 = b1.KeyCode
                a57.Set("ToggleKey", a82.Name)
                a115()
                a67("Keybind", "Toggle key set to " .. a82.Name .. ".", 3)
            end
            if a50._RYOIKI_RefreshBind then
                a50._RYOIKI_RefreshBind()
            end
            return
        end
        if b2 or not a80 then
            return
        end
        if b1.KeyCode == a82 then
            a118(not a79)
        end
    end))
    a50.RYOIKI = {
        AddFeature = V.a222,
        Notify = a67,
        SetStatus = a72,
        SetAccent = a36,
        Destroy = V.a275,
        SetItems = V.a177,
        ItemHooks = a153,
        ItemScan = a152,
        Grabber = a147
    }
    a50.RYOIKI_Destroy = V.a275
    RYOIKI = a50.RYOIKI
    V.a217()
    V.a198("Home")
    a42.HookButtons(a58)
    V.a336()
end
