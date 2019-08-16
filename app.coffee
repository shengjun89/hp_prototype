# Define and set custom device
# Framer.Device.customize
# 	deviceType: Framer.Device.Type.Tablet
# 	devicePixelRatio: 1
# 	screenWidth: 360
# 	screenHeight: 780
# 	deviceImage: "http://f.cl.ly/items/001L0v3c1f120t0p2z24/custom.png"
# 	deviceImageWidth: 800
# 	deviceImageHeight: 1214

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
normal = Bezier(0.645, 0.045, 0.355, 1)

# Variables


cardAmount = 8
rows = 16
gutter = 10
rowHeight = 200
k = Screen.width/Screen.height
n = Screen.width/375
# print (Screen.height-$2rdscreen.y-68-49)/Screen.height
# print (Screen.height-$2rdscreen.y-scroll_1.y)/Screen.height
# print (Screen.height-$2rdscreen.y-88-42-bottom.height)/Screen.height

banner.image = "images/design/79LhmOb57XCGFOKckqPkH5dg18XslMrGZhpG1vRzFHie77cK0KMlhghwLPABJrARuEJSN4AH8f1gtikux1HuQ.png"
# print ($2rdscreen.y-32)/Screen.height
grid.height=grid.contentFrame().height+12
kk.y = grid.y+grid.height-4
$1stscreen.height = $1stscreen.contentFrame().height
$2rdscreen.y = $1stscreen.height-1
# $2rdscreen.y = 560
scroll = ScrollComponent.wrap(scroll_1)
scroll_1.width = Screen.width
	
scroll_1.x = 0
scroll.scrollHorizontal = false
topicScroll = new ScrollComponent
	parent: $2rdscreen
	height: topic.height
	width: Screen.width
	y: 56
	backgroundColor: null
topicScroll.scrollVertical = false
topicScroll.contentInset =
	right: -12
# print topicScroll.content.width
topicScroll.states.stateA = 
	originY:0
	scale: 0
	opacity:0
	options: 
		curve: normal
		time: 0.3


topic_1st.parent = topicScroll.content
topic_1st.x = 12
topic_1st.y = 0




menu.originX = 1
menu.originY = 0.5
menu.width = 114
menu.height = 0
menu.y = more.y+212
menu.x = Align.right(-12)
more.ignoreEvents = false

	
opacity = 0
# menu.size = 1
menu.opacity = 0
menu.states.statesA =
	height :172
	opacity :1
	options: 
		curve: normal
		time: 0.1		

menu.states.statesB =
	opacity :0
	height :0
	options: 
		curve: normal
		time: 0.1


more.onClick (event, layer) ->
	menu.stateCycle("statesA","statesB")
# more.children[0].states.stateA =
# 	opacity: 1
# 	backgroundColor: "#FFF"	
# 	options: 
# 		curve: quick
# 		time: 0.2
# more.children[1].states.stateA =
# 	opacity: 1
# 	backgroundColor: "#212121"
# 	options: 
# 		curve: quick
# 		time: 0.2
	
	
# more.children[0].states.stateB =
# 	opacity: 0.6
# 	backgroundColor: "#000"	
# 	options: 
# 		curve: quick
# 		time: 0.2
# more.children[1].states.stateB =
# 	opacity: 1
# 	backgroundColor: "#F5F5F5"
# 	options: 
# 		curve: quick
# 		time: 0.2

			 
# for i in [0...4]
# 	menu.children[i].opacity = 0
# 
# for i in [0...4]
# 	menu.children[i].states.statesA = 
# 		opacity :1
# 		options: 
# 			curve: quick
# 			time: 0.2
# 	

# 	for i in [0...4]
# 		menu.children[i].stateCycle()

# 	print 1


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
likeLayer.visible = false
likeLayer.states.stateA =
	opacity: 1
	options: 
		curve: quick
		time: 0.2

likeLayer.states.stateB =
	y:126
	parent : homepage
	height : 40
	backgroundColor: "#FFF"
	opacity: 1
	options: 
		curve: quick
		time: 0.2
	
hotarea_pad.visible = false
hotarea.visible = false
# toast.opacity = 0
# toast.y = Align.bottom(64)
# toast.states.stateA = 
# 	opacity:1
# 	y:Align.bottom(-220)
# 	options:
# 		curve:quick
# 		time:0.2
	

topicArr = ["端午去哪里玩","上海","秦皇岛","吃遍京城小吃","海岛凉一夏"]

tag = new Layer
	width: Screen.width
	height: 44
	parent:$2rdscreen
	y: 0
	x:Align.center
	backgroundColor: null
tagSubTxtArr = []
tagArr = ["喜欢","全部","景点","住宿","美食"]
tagSubArr = []
tagLayers = []
for i in [0...tagSubArr.length]
	TagSubtxt = new TextLayer
		parent: tag
		fontSize: 11
		x: (Screen.width-28)/5*i+22
		y: 36
		opacity: 0
		text: tagSubArr[i]
	tagSubTxtArr.push(TagSubtxt)
	
	TagSubtxt.states.stateA =
		opacity: 0
		
		
		
for i in [0...tagArr.length]
	Tagtxt = tagtxt.copy()
	Tagtxt.parent = tag
	Tagtxt.y = 8
	Tagtxt.x = 70*i*n+12
	Tagtxt.text = tagArr[i]
	Tagtxt.width = (Screen.width-28)/5
	Tagtxt.lineHeight = 2.2
# 	Tagtxt.height = 
	Tagtxt.states.stateA =
# 		size:CurrentTxt.size
		scale : 1.2
		fontWeight:CurrentTxt.fontWeight
		color: CurrentTxt.color
		y : 8
		options: 
			curve: quick
			time: 0.3
	
	tagLayers.push(Tagtxt)
	
tagLayers[1].scale = 1.2
tagLayers[1].fontWeight = CurrentTxt.fontWeight
tagLayers[1].color = CurrentTxt.color
tagLayers[1].y = 8

	
underLine = $underline.copy()
underLine.parent = $2rdscreen
underLine.midX = tagLayers[1].midX
underLine.y = 32
underLine.z = 3
likeUnderLine = $underline.copy()
likeUnderLine.parent = likeLayer
likeUnderLine.midX = like.midX
likeUnderLine.midY = like.midY

# print like.children[0].children[0]
like.children[0].children[0].states.stateA =
	y:-18
	options: 
		curve: quick
		time:0.2

book.children[0].children[0].states.stateA =
	y:1
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
		y:-18
		options:
			curve: quick
			time:0.2	
	book.children[0].children[0].animate
		y:1
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
		y:1
		options:
			curve: quick
			time:0.2	
	book.children[0].children[0].animate
		y:-18
		options:
			curve: quick
			time:0.2		
# 	like.children[0].children[0].stateSwitch("stateA")
# 	book.children[0].children[0].stateSwitch("default")								
# 	print bottom.y
search.shadowType = "inner"
search.shadowSpread = 0


sliderimage = ["images/slider/slide1.png","images/slider/slide2.png","images/slider/slide3.png","images/slider/slide4.png","images/slider/slide1.png"]

cardimage = ["images/card/1.jpeg","images/card/2.jpeg","images/card/3.jpeg","images/card/4.jpeg","images/card/5.jpeg","images/card/6.jpeg","images/card/7.jpeg","images/card/3.jpeg"]

avatarimage = ["images/avatar/8.jpeg","images/avatar/7.jpeg","images/avatar/3.jpeg","images/avatar/4.jpeg","images/avatar/5.jpeg","images/avatar/6.jpeg","images/avatar/7.jpeg","images/avatar/4.jpeg"]

row = 0
col = 0
gutter = 4
cardLayers = []
BlockLayers = []
cardGroup = new Layer
	parent: $2rdscreen
	y: 132
	width: Screen.width
	backgroundColor: null

cardGroup.states.stateA =
	y: 64
	options:
		curve: quick
		time:0.2

card.width =  172*n
for i in [0...cardAmount]
	Card = card.copy()
	Card.image = cardimage[i]
	Card.children[2].children[0].children[0].image = avatarimage[i]
	Card.parent = cardGroup
	if i%2 == 0
		row = 0
		col++
	
	Card.x = (card.width+8)*row+12
	Card.y = (card.height+8)*(col-1)	
	row++
	
	cardLayers.push(Card)


for i in [0...topicArr.length]
	Block = topic.copy()
	Block.parent = topicScroll.content
	Block.width = 95*n
	Block.x = (Block.width+8)*i+16*n+72
	Block.y = 0
	Block.children[3].text = topicArr[i]
	Block.children[1].image = sliderimage[i]
	BlockLayers.push(Block)
	mark = mark_p.copy()
	mark.parent = Block
	mark.y = 46
	
BlockLayers[0].children[5].visible = false
BlockLayers[3].children[5].visible = false
BlockLayers[4].children[5].visible = false
# 	Block.hueRotate = i * 60



# cardLayers[0].height = 240
for i in [0...tagArr.length]	
	tagLayers[i].onClick (event, layer) ->
		cardAmount = 8
		likeLayer.visible = false
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
	likeLayer.visible = true
	cardGroup.stateSwitch("default")
	cardGroup.y = 100
	topicScroll.stateSwitch("default")
	topicScroll.content.opacity = 0
	if scroll.content.y+$1stscreen.height+7 <= 0
		likeLayer.stateSwitch("stateB")
	else likeLayer.stateSwitch("stateA")	




		
scroll.onMove ->
	
	if scroll.content.y+$1stscreen.height-72 <= 0
		tag.parent = homepage
		tag.y = 88
		tag.height = 50
		tag.backgroundColor = "#FFF"
		underLine.parent = homepage
		underLine.y = 88+32
		fresh.animate
			opacity: 1
			rotation: -90
			options: 
				curve: quick
				time: 0.15
		homeicon.animate
			opacity: 0
			options: 
				curve: quick
				time: 0.15		
		
	if scroll.content.y+$1stscreen.height-72 <= 0
		likeLayer.parent = homepage
		likeLayer.y = 124
		likeLayer.backgroundColor = "#FFF"
		likeLayer.parent = homepage
		likeUnderLine.parent = likeLayer
		likeUnderLine.y = 24
		likeLayer.children[0].scale = 0.9
		likeLayer.children[1].scale = 0.9
		likeLayer.height = 40
# 		likeUnderLine.midX = like.midX
	else
		tag.height = 40
		tag.parent = $2rdscreen
		tag.y = 4
		tag.backgroundColor = null
		underLine.parent = $2rdscreen
		underLine.y = 36
		
		likeLayer.parent = topicScroll
		likeLayer.backgroundColor = null
		likeUnderLine.parent = likeLayer
		likeLayer.y = 0
		likeLayer.children[0].scale = 1
		likeLayer.children[1].scale = 1
		fresh.animate
			opacity: 0
			rotation: 90
			options: 
				curve: quick
				time: 0.2
		homeicon.animate
			opacity: 1
			options: 
				curve: quick
				time: 0.2

		


# 	navbar.opacity = Utils.modulate(y, [0, -22*n], [1,0], true)
# 	navbarblack.opacity = Utils.modulate(y, [0, 80*n], [0,1], true)
# 	minusOne.scale = Utils.modulate(y, [-360*n, -800*n], [1,1.8], true)
# 		
# 	print $2rdscreen.y
# 	print $1stscreen.height+7
# 		if scroll.content.y <= -370 then titlename.text = "大阪" else titlename.text = "北京"
# grid.children[0].destroy()

design = ["壹","贰","叁","肆","伍","陆"]

mask = new Layer
	width: Screen.width
	height: Screen.height
	opacity: 0
	backgroundColor: "#000"
	visible: false

sheet = new Layer
	width: Screen.width-24
	height: 160
	x: Align.center
	y: Align.bottom(360)
	backgroundColor: "#FFF"
	borderRadius: 24	

title2 = new TextLayer
	parent: sheet
	y: Align.center(-40)
	text: "切换宫格样式"
	fontSize: 18
	x: 16
	color: "#212121"
		
BtnGroup = []

for i in [0...design.length]
	Btn = new Layer
		parent: sheet
		width: 44
		height: 44
		x: (44+8)*i+16
		y: Align.center(16)
		backgroundColor: "#f5f5f5"
	Btntxt = new TextLayer
		parent: Btn
		fontSize: 12
		x: Align.center
		y: Align.center
		text: design[i]	
	BtnGroup.push(Btn)	
	
	Btn.onClick (event, layer) ->
		for i in [0...design.length]
			BtnGroup[i].switch = false
			BtnGroup[i].backgroundColor = "#f5f5f5"
		@switch = true
		@backgroundColor = "#DEF0FC"
		
BtnGroup[0].backgroundColor = "#DEF0FC"		


scroll.on Events.Move, ->
	scrolltoY(scroll.scrollY)
	
scroll.on Events.ScrollStart, (event, layer) ->
	more.stateSwitch("default")
	menu.stateSwitch("default")
	

# top_1.states.stateA =
# 	backgroundColor:"#FFF"
# 	options:
# 		time: 0.1
# top_1.states.stateB =
# 	backgroundColor: null
# 	options:
# 		time: 0.1
			
# search.backgroundColor = "rgba(0.0.0.0.2)"
# search.states.stateA =
# 	backgroundColor:"#F5F5F5"
# 	opacity: 1
# 	options:
# 		time: 0.1
# search.states.stateB =
# 	backgroundColor:"#000"
# 	opacity: 0.6
# 	options:
# 		time: 0.1	

		
# position.children[2].states.stateA =
# 	color:"#000"
# 	options:
# 		time: 0.1	
# position.children[2].states.stateB =
# 	color:"#FFF"
# 	options:
# 		time: 0.1			

# position.children[1].states.stateA =
# 	opacity: 1
# 	options:
# 		time: 0.1
# 	
# position.children[1].states.stateB =
# 	opacity: 0
# 	options:
# 		time: 0.1
	
scrolltoY = (y) ->
# 	print forheadText = (Screen.height-$2rdscreen.y-49)/Screen.height

	if y > 117
		top_1.parent = homepage
		top_1.y = 38
		Status_BarX.backgroundColor = "#FFF"
		Status_BarX.children[0].children[0].children[1].backgroundColor = "#000"
		Status_BarX.children[0].children[0].children[2].backgroundColor = "#000"
		Status_BarX.children[0].children[0].children[0].backgroundColor = "#000"
		Status_BarX.children[0].children[1].color = "#000"
		menu.parent = homepage
		menu.y = 100
	else			
		top_1.parent = $1stscreen
		top_1.y = 158
		Status_BarX.backgroundColor = "null"
		Status_BarX.children[0].children[0].children[1].backgroundColor = "#FFF"
		Status_BarX.children[0].children[0].children[2].backgroundColor = "#FFF"
		Status_BarX.children[0].children[0].children[0].backgroundColor = "#FFF"
		Status_BarX.children[0].children[1].color = "#FFF"
		menu.parent = $1stscreen
		menu.y = more.y+212
		
	touchBar = 49
	if k<=0.462
		touchBar = 90
	showRate = ((Screen.height-462+y-touchBar)/Screen.height*100).toFixed(2)
	if showRate <0 then showRate = 0	
# 	forhead.text = showRate+"%"
	
	loading.opacity = Utils.modulate(y, [0, 88], [1,0], true)
	banner.children[0].opacity = Utils.modulate(y, [0, 120], [1,0], true)
# 	searchbar.opacity = Utils.modulate(y, [0, -40], [1,0], true)
	bgmask.opacity = Utils.modulate(y, [0, -200], [1,0], true)
	for a in tagSubTxtArr
		a.opacity = Utils.modulate(y, [406, 413], [1,0], true)
# 	bgactive.blur = Utils.modulate(y, [0, -200], [4,0], true)

# 	if y > 90
# 		top_1.animate "stateA"
# 		position.children[1].animate "stateA"
# 		position.children[2].animate "stateA"
# 		search.animate "stateA"
# 		more.children[0].animate "stateA"
# 		more.children[1].animate "stateA"
# 	else	
# 		top_1.animate "stateB"
# 		position.children[1].animate "stateB"
# 		position.children[2].animate "stateB"
# 		search.animate "stateB"
# 		more.children[0].animate "stateB"
# 		more.children[1].animate "stateB"
	
	if y > 200 then more.ignoreEvents = true
	else more.ignoreEvents = false
	
	if y > 200 then backTop.ignoreEvents = false
	else backTop.ignoreEvents = true
	
	moredot.opacity = Utils.modulate(y, [220, 232], [1,0], true)
	backTop.opacity = Utils.modulate(y, [220, 280], [0,1], true)
	search.width = Utils.modulate(y, [220, 280], [234*n,116*n], true)
	
	icon01.opacity = Utils.modulate(y, [248, 280],[0,1], true)
	icon01.x = Utils.modulate(y, [220, 280], [328,198], true)
	
	icon02.opacity = Utils.modulate(y, [248, 280], [0,1], true)
	icon02.x = Utils.modulate(y, [220, 280], [328,238], true)
	
	icon03.opacity = Utils.modulate(y, [248, 280], [0,1], true)
	icon03.x = Utils.modulate(y, [220, 280], [328,278], true)
	
	if search.width <= 180
		search.children[0].width = 50
		search.children[0].children[1].text = "搜索"
	else
		search.children[0].width = 164
		search.children[0].children[1].text = "北京星湖园温泉度假村"

#重置高度	
# $2rdscreen.height = 2801
# $2rdscreen.height = $2rdscreen.contentFrame().height
scroll_1.height = scroll_1.contentFrame().height
scroll.children.height = scroll_1.height

if k<=0.462
	Status_Bar.visible = false
	Status_BarX.visible = true
	bottom.y = Align.bottom()
	currentColor.y = Align.bottom(-32)
	
else
	currentColor.y = Align.bottom()
	bottom.y = Align.bottom(32)
	Status_BarX.visible = false
	Status_Bar.visible = true
	Status_Bar.z = 2
	homepage.y = -20


# grid.onClick (event, layer) ->
# 	print grid
# 	sheet.stateSwitch("stateA")
# 	mask.stateSwitch("stateA")
# 	if Screen.width>=410 then hotarea_pad.visible = true
# 	else hotarea.visible = true
# 	toast.stateSwitch("stateA")


searchresult.states.stateA = 
	opacity: 1
	options: 
		curve: normal
		time: 0.15

searchresult.children[0].states.stateA =
	y: 40
	options: 
		curve: normal
		time: 0.15	
		
searchresult.children[1].states.stateA =
	y: Align.bottom(-32)
	options: 
		curve: normal
		time: 0.15	

mask.onClick (event, layer) ->
	hotarea_pad.visible = false
	hotarea.visible = false
# 	toast.stateSwitch("default")
# 	print grid



	
backTop.onClick (event, layer) ->
	scroll_1.animate
		y:0
		options: 
			curve: normal	
			time: 0.15
			

search.onClick (event, layer) ->
	searchresult.animate "stateA",time:0.15
	searchresult.children[1].animate "stateA"
	searchresult.children[0].animate "stateA"
	scroll_1.animate
		y: -120
# 		opacity: 0
		options: 
			curve: normal
			time: 0.15

backhome.onClick (event, layer) ->
	searchresult.animate "default",time:0.15
	searchresult.children[1].animate "default"
	searchresult.children[0].animate "default"
	scroll_1.animate
		y:0
# 		opacity: 0
		options: 
			curve: normal
			time: 0.15			
					
# bottom.onTouchStart (event, layer) ->
# 	if Screen.width>=410 then hotarea_pad.visible = true
# 	else hotarea.visible = true
# 	toast.stateSwitch("stateA")
# 	
# bottom.onTouchEnd (event, layer) ->	
# 	hotarea_pad.visible = false
# 	hotarea.visible = false
# 	toast.stateSwitch("default")
