local a,b,c=game:GetService("Players"),game:GetService("ReplicatedStorage"),game:GetService("Workspace")
local d=a.LocalPlayer
local e=d.Character or d.CharacterAdded:Wait()
local f=e:WaitForChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
local g,h,i=b.RemoteEvents:WaitForChild("\82\101\113\117\101\115\116\83\116\97\114\116\68\114\97\103\103\105\110\103\73\116\101\109"),b.RemoteEvents:WaitForChild("\83\116\111\112\68\114\97\103\103\105\110\103\73\116\101\109"),b.RemoteEvents:WaitForChild("\82\101\113\117\101\115\116\66\97\103\83\116\111\114\101\73\116\101\109")
local j=d:WaitForChild("Inventory")
local k=j:FindFirstChild("\79\108\100\32\83\97\99\107")
local l=j:FindFirstChild("\71\111\111\100\32\83\97\99\107")
local m=l or k
local n=c:WaitForChild("\73\116\101\109\115")
local o=Instance.new("\83\99\114\101\101\110\71\117\105",game.CoreGui)
o.Name="\65\70\71"
local p=Instance.new("Frame",o)
p.Position=UDim2.new(.5,0,.5,0)
p.Size=UDim2.new(0,280,0,320)
p.BackgroundColor3=Color3.fromRGB(25,25,25)
p.BorderSizePixel=0
p.AnchorPoint=Vector2.new(.5,.5)
local q=Instance.new("TextLabel",p)
q.Size=UDim2.new(1,0,0,40)
q.BackgroundTransparency=1
q.Text="\65\117\116\111\32\70\97\114\109\32\71\85\73"
q.TextColor3=Color3.new(1,1,1)
q.Font=Enum.Font.GothamBold
q.TextSize=24
q.Position=UDim2.new(0,0,0,0)
local r=Instance.new("TextButton",p)
r.Size=UDim2.new(1,-40,0,30)
r.Position=UDim2.new(0,10,0,50)
r.Text="\83\101\108\101\99\116\32\73\116\101\109"
r.BackgroundColor3=Color3.fromRGB(50,50,50)
r.TextColor3=Color3.new(1,1,1)
r.Font=Enum.Font.Gotham
r.TextSize=18
r.AutoButtonColor=false
local s=Instance.new("TextLabel",r)
s.Text="▼"
s.Size=UDim2.new(0,20,1,0)
s.Position=UDim2.new(1,-20,0,0)
s.BackgroundTransparency=1
s.TextColor3=Color3.new(1,1,1)
s.Font=Enum.Font.GothamBold
s.TextSize=18
local t=Instance.new("TextBox",p)
t.Size=UDim2.new(1,-20,0,30)
t.Position=UDim2.new(0,10,0,90)
t.PlaceholderText="\65\109\111\117\110\116\32\116\111\32\99\111\108\108\101\99\116"
t.Text=""
t.BackgroundColor3=Color3.fromRGB(50,50,50)
t.TextColor3=Color3.new(1,1,1)
t.Font=Enum.Font.Gotham
t.TextSize=18
t.ClearTextOnFocus=false
local u=Instance.new("TextButton",p)
u.Size=UDim2.new(1,-20,0,40)
u.Position=UDim2.new(0,10,0,130)
u.Text="\83\116\97\114\116\32\70\97\114\109\105\110\103"
u.BackgroundColor3=Color3.fromRGB(75,150,75)
u.TextColor3=Color3.new(1,1,1)
u.Font=Enum.Font.GothamBold
u.TextSize=20
u.AutoButtonColor=false
local v=Instance.new("TextButton",p)
v.Size=UDim2.new(1,-20,0,30)
v.Position=UDim2.new(0,10,0,180)
v.Text="\82\101\102\114\101\115\104\32\73\116\101\109\115"
v.BackgroundColor3=Color3.fromRGB(70,70,120)
v.TextColor3=Color3.new(1,1,1)
v.Font=Enum.Font.Gotham
v.TextSize=16
v.AutoButtonColor=false
local w=Instance.new("TextButton",p)
w.Size=UDim2.new(0,30,0,30)
w.Position=UDim2.new(1,-40,0,10)
w.Text="\88"
w.BackgroundColor3=Color3.fromRGB(150,50,50)
w.TextColor3=Color3.new(1,1,1)
w.Font=Enum.Font.GothamBold
w.TextSize=20
w.AutoButtonColor=false
local x,y={},nil
local z=nil
local function A()
	x={} local B={}
	for C,D in pairs(n:GetChildren()) do
		if D:IsA("Model") and not B[D.Name] then
			table.insert(x,D.Name)
			B[D.Name]=true
		end
	end
end
local function E()
	if z then z:Destroy() end
	z=Instance.new("ScrollingFrame",p)
	z.Position=UDim2.new(0,10,0,80)
	z.Size=UDim2.new(1,-20,0,100)
	z.BackgroundColor3=Color3.fromRGB(60,60,60)
	z.BorderSizePixel=0
	z.CanvasSize=UDim2.new(0,0,0,#x*30)
	z.ScrollBarThickness=6
	for F,G in ipairs(x) do
		local H=Instance.new("TextButton",z)
		H.Size=UDim2.new(1,0,0,30)
		H.Position=UDim2.new(0,0,0,(F-1)*30)
		H.BackgroundColor3=Color3.fromRGB(80,80,80)
		H.TextColor3=Color3.new(1,1,1)
		H.Text=G
		H.Font=Enum.Font.Gotham
		H.TextSize=16
		H.AutoButtonColor=false
		H.MouseButton1Click:Connect(function()
			y=G
			r.Text=G
			if z then z:Destroy() end
		end)
	end
end
r.MouseButton1Click:Connect(E)
v.MouseButton1Click:Connect(function() A() E() end)
w.MouseButton1Click:Connect(function() o:Destroy() end)
local function I(J)
	f.CFrame=CFrame.new(J+Vector3.new(0,5,0))
end
u.MouseButton1Click:Connect(function()
	if not m then u.Text="\78\111\32\115\97\99\107\33" wait(2) u.Text="\83\116\97\114\116\32\70\97\114\109\105\110\103" return end
	if not y then u.Text="\83\101\108\101\99\116\32\97\110\32\105\116\101\109\33" wait(1.5) u.Text="\83\116\97\114\116\32\70\97\114\109\105\110\103" return end
	local K=tonumber(t.Text)
	if not K or K<1 then u.Text="\69\110\116\101\114\32\97\32\118\97\108\105\100\32\97\109\111\117\110\116\33" wait(1.5) u.Text="\83\116\97\114\116\32\70\97\114\109\105\110\103" return end
	u.Text="\70\97\114\109\105\110\103\46\46\46"
	local L=0
	local M=f.Position
	for _,N in ipairs(n:GetChildren()) do
		if L>=K then break end
		if N.Name==y and N:IsA("Model") then
			I(N:GetModelCFrame().p) wait(0.3)
			g:FireServer(N) wait(0.3)
			i:InvokeServer(m,N) wait(0.1)
			h:FireServer(N) wait(0.3)
			L+=1
		end
	end
	I(M)
	u.Text="\68\111\110\101\32(\ "..L.." )" wait(2)
	u.Text="\83\116\97\114\116\32\70\97\114\109\105\110\103"
end)
A()
