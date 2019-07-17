#Springs缓动预定义
iOSAppLaunch = "spring(320,40,0)"
iOSKeyboard = "spring(280,33,10)"
iOSSlideView = "spring(220,28,0)"
iOSRetreat = "spring(220,28,0)"
iOSActionSheet = "spring(280,33,10)"

materialAppLaunch = "spring(260,32,16)"
materialKeyboard = "spring(220,35,25)"
materialSlideView = "spring(220,35,25)"
materialRetreat = "spring(160,30,10)"
materialActionSheet = "spring(250,37,20)"

floaty = "spring(160,40,10)"
hello = "spring(400,22,20)"
retreat = "spring(160,30,10)"
pop = "spring(280,13,10)"
bigPop = "spring(370,8,0)"
dramatic = "spring(120,140,0)"
slow = "spring(100,50,0)"
quick = "spring(400,20,10)"
loose = "spring(240,18,28)"

# Variables
cardAmount = 10
rows = 16
gutter = 10
rowHeight = 200
k = Screen.width/Screen.height
n = Screen.width/375

scroll = ScrollComponent.wrap(scroll_1)
scroll_1.width = Screen.width
	
scroll_1.x = 0
scroll.scrollHorizontal = false
top_1.backgroundColor = null
topicScroll = new ScrollComponent
	parent: $2rdscreen
	height: topic.height
	width: Screen.width
	y: 52
	backgroundColor: null
topicScroll.scrollVertical = false
topicScroll.contentInset =
# 	right: -20
# 	left: -79

topicScroll.states.stateA = 
	originY:0
	scale: 0
	opacity:0
	options: 
		curve: quick
		time: 0.3

likeLayer = new Layer
likeLayer.parent = topicScroll
likeLayer.width = Screen.width
likeLayer.opacity = 0
likeLayer.x = Align.center()
likeLayer.originX = 0.5
likeLayer.originY = 0
likeLayer.height = topicScroll.height
likeLayer.backgroundColor = null
like = $like.copy()
like.parent = likeLayer
like.x = Align.left(Screen.width/2-80*n)
like.y = Align.top()
book = $book.copy()
book.parent = likeLayer
book.x = Align.left(Screen.width/2-8*n)
book.y = Align.top()
likeLayer.states.stateA =
	opacity: 1
	options: 
		curve: quick
		time: 0.2

likeLayer.states.stateB =
	y:128
	parent : homepage
	height : 40
	backgroundColor: "#FFF"
	opacity: 1
	options: 
		curve: quick
		time: 0.2
	
hotarea_pad.visible = false
hotarea.visible = false
toast.opacity = 0
toast.y = Align.bottom(64)
toast.states.stateA = 
	opacity:1
	y:Align.bottom(-64)
	options:
		curve:quick
		time:0.2
	

topicArr = ["端午去哪里玩","逛京味儿老胡同","探一探网红打卡","百元吃遍京城小吃","海岛凉一夏"]

tag = new Layer
	width: Screen.width
	height: 40
	parent:$2rdscreen
	y:4
	x:Align.center
	backgroundColor: null

tagArr = ["喜欢","全部","景点","住宿","美食"]
tagLayers = []

for i in [0...tagArr.length]
	Tagtxt = tagtxt.copy()
	Tagtxt.parent = tag
	Tagtxt.y = 14
	Tagtxt.x = 70*i*n+30
	Tagtxt.text = tagArr[i]
# 	Tagtxt.lineHeight = 1.4
# 	Tagtxt.height = 
	Tagtxt.states.stateA =
# 		size:CurrentTxt.size
		scale : 1.2
		fontWeight:CurrentTxt.fontWeight
		y :14
		options: 
			curve: quick
			time: 0.3
	
	tagLayers.push(Tagtxt)
	
tagLayers[1].scale = 1.4
tagLayers[1].fontWeight = CurrentTxt.fontWeight
tagLayers[1].y = 14

	
underLine = $underline.copy()
underLine.parent = $2rdscreen
underLine.midX = tagLayers[1].midX
underLine.y = 24
likeUnderLine = $underline.copy()
likeUnderLine.parent = likeLayer
likeUnderLine.midX = like.midX
likeUnderLine.midY = like.midY

# print like.children[0].children[0]
like.children[0].children[0].states.stateA =
	y:1
	options: 
		curve: quick
		time:0.2

book.children[0].children[0].states.stateA =
	y:-18
	options: 
		curve: quick
		time:0.2


like.onClick (event, layer) ->
	cardAmount = 8
	likeUnderLine.animate
			midX:@midX
			options:
				curve: quick
				time:0.2
	like.children[0].children[0].animate
		y:1
		options:
			curve: quick
			time:0.2	
	book.children[0].children[0].animate
		y:-18
		options:
			curve: quick
			time:0.2		
				
book.onClick (event, layer) ->
	cardAmount = 12
	likeUnderLine.animate
			midX:@midX
			options:
				curve: quick
				time:0.2
	like.children[0].children[0].animate
		y:-18
		options:
			curve: quick
			time:0.2	
	book.children[0].children[0].animate
		y:1
		options:
			curve: quick
			time:0.2		
# 	like.children[0].children[0].stateSwitch("stateA")
# 	book.children[0].children[0].stateSwitch("default")								
# 	print bottom.y
search.shadowType = "inner"
search.shadowSpread = 0


row = 0
col = 0
gutter = 4
cardLayers = []

cardGroup = new Layer
	parent: $2rdscreen
	y: 112
	width: Screen.width
	backgroundColor: null

cardGroup.states.stateA =
	y: 50
	options:
		curve: quick
		time:0.2

card.width =  169*n
for i in [0...cardAmount]
	Card = card.copy()
	Card.parent = cardGroup
	if i%2 == 0
		row = 0
		col++
	
	Card.x = (card.width+4)*row+16
	Card.y = (card.height+4)*(col-1)	
	row++
	
	cardLayers.push(Card)

for i in [0...topicArr.length]
	Block = topic.copy()
	Block.parent = topicScroll.content
	Block.width = 82.5*n
	Block.x = (Block.width+4)*i+16*n
	Block.y = 0
	Block.children[0].text = topicArr[i]

# cardLayers[0].height = 240
for i in [0...tagArr.length]	
	tagLayers[i].onClick (event, layer) ->
		cardAmount = 10
		cardGroup.stateSwitch("stateA")
		topicScroll.stateSwitch("stateA")
		if scroll.content.y+$1stscreen.height+7 <= 0
			likeLayer.stateSwitch("stateB") & likeLayer.opacity = 0
		else likeLayer.stateSwitch("default")
		
		for i in [0...tagArr.length]
			tagLayers[i].stateSwitch("default")	
		@.stateSwitch("stateA")
		underLine.animate
			midX:@midX
			options:
				curve: quick
				time:0.2
				
# print tagLayers	
tagLayers[1].onClick (event, layer) ->
	cardGroup.stateSwitch("default")
	topicScroll.stateSwitch("default")
	topicScroll.content.opacity = 1
# 	if scroll.content.y+$1stscreen.height+2 <= 0
# 		like.stateSwitch("stateB")
	likeLayer.stateSwitch("default")	

tagLayers[0].onClick (event, layer) ->
	cardAmount = 8
	cardGroup.stateSwitch("default")
	topicScroll.stateSwitch("default")
	topicScroll.content.opacity = 0
	if scroll.content.y+$1stscreen.height+7 <= 0
		likeLayer.stateSwitch("stateB")
	else likeLayer.stateSwitch("stateA")	

if k<=0.462
	Status_Bar.visible = false
	bottom.y = Align.bottom()
	currentColor.y = Align.bottom(-32)
# 	print "二屏露出占比"+(Screen.height-$2rdscreen.y-98-32)/Screen.height
	forhead.text = ((Screen.height-$2rdscreen.y-98-32)/Screen.height).toFixed(2)
	
else
	currentColor.y = Align.bottom()
	bottom.y = Align.bottom(32)
	Status_BarX.visible = false
	Status_Bar.visible = true
	Status_Bar.visible = true
	Status_Bar.z = 2
	
		
	homepage.y = -20
# 	print "二屏露出占比"+(Screen.height-$2rdscreen.y-98)/Screen.height
	forhead.text = ((Screen.height-$2rdscreen.y-98-32)/Screen.height).toFixed(2)






bottom.onTouchStart (event, layer) ->
	if Screen.width>=410 then hotarea_pad.visible = true
	else hotarea.visible = true
	toast.stateSwitch("stateA")
	
bottom.onTouchEnd (event, layer) ->	
	hotarea_pad.visible = false
	hotarea.visible = false
	toast.stateSwitch("default")
		
scroll.onMove ->
	if scroll.content.y+$1stscreen.height+7 <= 0
		tag.parent = homepage
		tag.y = 88
		tag.backgroundColor = "#FFF"
		underLine.parent = homepage
		underLine.y = 88+24
		
	if scroll.content.y+$1stscreen.height+7 <= 0
		likeLayer.parent = homepage
		likeLayer.y = 128
		likeLayer.backgroundColor = "#FFF"
		likeLayer.parent = homepage
		likeUnderLine.parent = likeLayer
		likeUnderLine.y = 24
		likeLayer.children[0].scale = 0.9
		likeLayer.children[1].scale = 0.9
		likeLayer.height = 40
# 		likeUnderLine.midX = like.midX
	else
		tag.parent = $2rdscreen
		tag.y = 4
		tag.backgroundColor = null
		underLine.parent = $2rdscreen
		underLine.y = 24
		
		likeLayer.parent = topicScroll
		likeLayer.backgroundColor = null
		likeUnderLine.parent = likeLayer
		likeLayer.y = 0
		likeLayer.children[0].scale = 1
		likeLayer.children[1].scale = 1

		


# 	navbar.opacity = Utils.modulate(y, [0, -22*n], [1,0], true)
# 	navbarblack.opacity = Utils.modulate(y, [0, 80*n], [0,1], true)
# 	minusOne.scale = Utils.modulate(y, [-360*n, -800*n], [1,1.8], true)
# 		
# 	print $2rdscreen.y
# 	print $1stscreen.height+7
# 		if scroll.content.y <= -370 then titlename.text = "大阪" else titlename.text = "北京"
# grid.children[0].destroy()

design = ["方案一","方案二","方案三","方案四"]

mask = new Layer
	width: Screen.width
	height: Screen.height
	opacity: 0
	backgroundColor: "#000"
	visible: false


	
sheet = new Layer
	width: Screen.width-24
	height: 360
	x: Align.center
	y: Align.bottom(360)
	backgroundColor: "#FFF"
	borderRadius: 24	


title1 = new TextLayer
	parent: sheet
	y: Align.center(-150)
	text: "Banner位"
	fontSize: 18
	x: 24
	color: "#212121"

title2 = new TextLayer
	parent: sheet
	y: Align.center(-40)
	text: "宫格样式"
	fontSize: 18
	x: 24
	color: "#212121"
	
title3 = new TextLayer
	parent: sheet
	y: Align.center(80)
	text: "宫格位置"
	fontSize: 18
	x: 24
	color: "#212121"	
	
BtnGroup = []

for i in [0...design.length]
	Btn = new Layer
		parent: sheet
		width: 60
		height: 44
		x: (60+8)*i+24
		y: Align.center
		backgroundColor: "#f5f5f5"
	Btntxt = new TextLayer
		parent: Btn
		fontSize: 12
		x: Align.center
		y: Align.center
		text: design[i]	
	BtnGroup.push(Btn)	
	

BtnBanGroup = []

for i in [0...3]
	BtnBan = new Layer
		parent: sheet
		width: 60
		height: 44
		x: (60+8)*i+24
		y: Align.center(-110)
		backgroundColor: "#f5f5f5"
	BtnBantxt = new TextLayer
		parent: BtnBan
		fontSize: 12
		x: Align.center
		y: Align.center
		text: design[i]	
	BtnBanGroup.push(BtnBan)	
		
BtnGridGroup = []

for i in [0...2]
	BtnGrid = new Layer
		parent: sheet
		width: 60
		height: 44
		x: (60+8)*i+24
		y: Align.center(120)
		backgroundColor: "#f5f5f5"
	BtnGridtxt = new TextLayer
		parent: BtnGrid
		fontSize: 12
		x: Align.center
		y: Align.center
		text: design[i]	
	BtnGridGroup.push(BtnGrid)


sheet.states.stateA =
	y: Align.bottom(-12)
	options:
		curve:quick
		time:0.2
		
mask.states.stateA =
	opacity: 0.5
	visible: true
	
			
grid.onClick (event, layer) ->
# 	print grid
	sheet.stateSwitch("stateA")
	mask.stateSwitch("stateA")

mask.onClick (event, layer) ->
# 	print grid
	sheet.stateSwitch("default")
	mask.stateSwitch("default")


# print grid.point
grid02.parent = grid
grid02.point = 0
grid03.point = 0
grid04.point = 0
grid02.width = grid.width
grid03.width = grid.width
grid03.visible = false
grid02.visible = false
grid04.visible = false
grid04.parent = grid
grid03.parent = grid
# print BtnGroup[0]

BtnBanGroup[0].switch = 
BtnBanGroup[1].switch = 
BtnBanGroup[2].switch = false

scroll.on Events.Move, ->
	scrolltoY(scroll.scrollY)

BtnGroup[0].onClick (event, layer) ->	
	grid03.visible = false
	grid04.visible = false
	grid02.visible = false
	grid01.visible = true
	
	
BtnGroup[1].onClick (event, layer) ->
	grid04.visible = false	
	grid03.visible = false
	grid02.visible = true
	grid01.visible = false

BtnGroup[2].onClick (event, layer) ->
	grid04.visible = false	
	grid03.visible = true
	grid02.visible = false
	grid01.visible = false
	
BtnGroup[3].onClick (event, layer) ->
	grid04.visible = true	
	grid03.visible = false
	grid02.visible = false
	grid01.visible = false


	
BtnBanGroup[0].onClick (event, layer) ->
	@switch = true	
	BtnBanGroup[1].switch = false
	BtnBanGroup[2].switch = false
	banner.borderRadius = 32
	banner.visible = true
	banner01.visible = false
	banner.height = 220
	$2rdscreen.y = 344
	grid.y = 161
	kk.y = 74
	kk.backgroundColor = "#FFF"
		
BtnBanGroup[1].onClick (event, layer) ->
	@switch = true	
	BtnBanGroup[0].switch = false
	BtnBanGroup[2].switch = false
	banner.borderRadius = 0
	banner.visible = true
	banner01.visible = false
	banner.height = 167
	$2rdscreen.y = 344
	grid.y = 161
	kk.y = 82
# 	kk.backgroundColor = "#FFF"
	kk.borderWidth = 0
	backgroundColor = null

BtnBanGroup[2].onClick (event, layer) ->
	@switch = true	
# 	print @switch
	BtnBanGroup[0].switch = false
	BtnBanGroup[1].switch = false
	banner.visible = false
	banner01.visible = true
	search.shadowSpread = 24
	banner01.parent = $1stscreen
	$2rdscreen.y = 364
	banner01.point = 0
	kk.y = 112
	kk.backgroundColor = null
	grid.y = 180
# 	banner.height = 110	
# print BtnBanGroup[2].switch

# 	print 1
BtnGridGroup[0].onClick (event, layer) ->
	# 如果banner位是方案三则补上高度偏差
	if BtnBanGroup[2].switch == true
# 		print BtnBanGroup[2].switch
# 		print kk.y
		kk.y = 74+38
		grid.y = 161+19
		kk.borderWidth = 0.5
		backgroundColor = "#FFF"
	else	
		kk.y = 74
		grid.y = 161
		kk.borderWidth = 0.5
		backgroundColor = "#FFF"	
	
BtnGridGroup[1].onClick (event, layer) ->
	# 如果banner位是方案三则补上高度偏差
	if BtnBanGroup[2].switch == true
		grid.y = 88+28
		kk.y = 260+28
		kk.borderWidth = 0
		backgroundColor = null
	else
		grid.y = 99
		kk.y = 260
		kk.borderWidth = 0
		backgroundColor = null
		



scrolltoY = (y) ->
	
	if BtnBanGroup[1].switch == true
		search.shadowSpread = Utils.modulate(y, [68, 80], [0,24], true)
		banner.height = Utils.modulate(y, [-240, 80], [180,88], true)
		banner.opacity = Utils.modulate(y, [-3, 80], [1,0], true)
	if BtnBanGroup[2].switch == true
# 		banner.height = Utils.modulate(y, [-280, 64], [280,88], true)
		search.shadowSpread = 24
		search.shadowSpread = Utils.modulate(y, [68, 80], [24,24], true)
	if BtnBanGroup[0].switch == true
		banner.height = Utils.modulate(y, [-240, 80], [560,88], true)
		search.shadowSpread = Utils.modulate(y, [68, 80], [0,24], true)
		banner.opacity = Utils.modulate(y, [-3, 80], [1,0], true)
	else
# 		banner.height = 260
		banner.height = Utils.modulate(y, [-180, 80], [560,88], true)
		banner.opacity = Utils.modulate(y, [-3, 80], [1,0], true)
		search.shadowSpread = Utils.modulate(y, [68, 80], [0,24], true)
# 	print 2		
# # print BtnGroup[0]
# BtnGroup[1].onClick (event, layer) ->	
# # 	for i in [0..2]
# # 		grid.children[i].destroy()
# 	grid.children[0].visible = false
# # 	grid.children[2].destroy()
# 	grid02.parent = grid
# 	grid02.width = grid.width
# 	grid02.x = 0
# 	grid02.y = 0
# 	$2rdscreen.y = 296	
	
#重置高度	
# $2rdscreen.height = 2801
# $2rdscreen.height = $2rdscreen.contentFrame().height
scroll_1.height = scroll_1.contentFrame().height
scroll.children.height = scroll_1.height

# 	top_1.back	