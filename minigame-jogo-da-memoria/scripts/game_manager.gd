extends Node2D

var card_face
var card_back
var init
var number_of_matches
var default_image
var image1
var image2
var image3
var image4
var image5
var image6
var image7
var image8
var name_image1
var name_image2
var name_image3
var name_image4
var name_image5
var name_image6
var name_image7
var name_image8
var last_try_was_pair
var card_one_checked_if_pairing
var card_two_checked_if_pairing
var card_one_str
var card_two_str
var all_remaining_cards = []
var random_card
var card_number

func _ready():
	number_of_matches = 0
	card_one_str = "Card 1"
	card_two_str = "Card 2"
	last_try_was_pair = false
	default_image = preload("res://minigame-jogo-da-memoria/sprites/dandelion-flower.png")
	image1 = preload("res://minigame-jogo-da-memoria/sprites/chess-knight.png")
	name_image1 = "Chess Knight"
	image2 = preload("res://minigame-jogo-da-memoria/sprites/plastic-duck.png")
	name_image2 = "Rubber Duck"
	image3 = preload("res://minigame-jogo-da-memoria/sprites/eight-ball.png")
	name_image3 = "Eight Ball"
	image4 = preload("res://minigame-jogo-da-memoria/sprites/cycling.png")
	name_image4 = "Bicycle"
	image5 = preload("res://minigame-jogo-da-memoria/sprites/pc.png")
	name_image5 = "PC"
	image6 = preload("res://minigame-jogo-da-memoria/sprites/pie-slice.png")
	name_image6 = "Pie"
	image7 = preload("res://minigame-jogo-da-memoria/sprites/coffee-cup.png")
	name_image7 = "Coffee"
	image8 = preload("res://minigame-jogo-da-memoria/sprites/tic-tac-toe.png")
	name_image8 = "Tic-Tac-Toe"
	# isso faz com que as funcoes aleatorias, a cada execucao do jogo,
	# gerem numeros realmente aleatorios
	randomize()
	init = false

func _process(_delta):
	if !init:
		_shuffle_cards()

func _shuffle_cards():
	all_remaining_cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
	
	#prints (all_remaining_cards.size())
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_1_card_1 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_1_card_2 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_2_card_1 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_2_card_2 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_3_card_1 = "Card" + str(card_number)
	
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_3_card_2 = "Card" + str(card_number)
	
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_4_card_1 = "Card" + str(card_number)
	
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_4_card_2 = "Card" + str(card_number)
	
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_5_card_1 = "Card" + str(card_number)
	
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_5_card_2 = "Card" + str(card_number)
	
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_6_card_1 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_6_card_2 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_7_card_1 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_7_card_2 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_8_card_1 = "Card" + str(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove_at(random_card)
	var pair_8_card_2 = "Card" + str(card_number)
	
	get_node(pair_1_card_1).card_face = image1
	get_node(pair_1_card_1).card_name = name_image1
	get_node(pair_1_card_2).card_face = image1
	get_node(pair_1_card_2).card_name = name_image1
	
	get_node(pair_2_card_1).card_face = image2
	get_node(pair_2_card_1).card_name = name_image2
	get_node(pair_2_card_2).card_face = image2
	get_node(pair_2_card_2).card_name = name_image2
	
	get_node(pair_3_card_1).card_face = image3
	get_node(pair_3_card_1).card_name = name_image3
	get_node(pair_3_card_2).card_face = image3
	get_node(pair_3_card_2).card_name = name_image3
	
	get_node(pair_4_card_1).card_face = image4
	get_node(pair_4_card_1).card_name = name_image4
	get_node(pair_4_card_2).card_face = image4
	get_node(pair_4_card_2).card_name = name_image4
	
	get_node(pair_5_card_1).card_face = image5
	get_node(pair_5_card_1).card_name = name_image5
	get_node(pair_5_card_2).card_face = image5
	get_node(pair_5_card_2).card_name = name_image5
	
	get_node(pair_6_card_1).card_face = image6
	get_node(pair_6_card_1).card_name = name_image6
	get_node(pair_6_card_2).card_face = image6
	get_node(pair_6_card_2).card_name = name_image6
	
	get_node(pair_7_card_1).card_face = image7
	get_node(pair_7_card_1).card_name = name_image7
	get_node(pair_7_card_2).card_face = image7
	get_node(pair_7_card_2).card_name = name_image7
	
	get_node(pair_8_card_1).card_face = image8
	get_node(pair_8_card_1).card_name = name_image8
	get_node(pair_8_card_2).card_face = image8
	get_node(pair_8_card_2).card_name = name_image8
	
	init = true

func _check_if_pair():
	if get_node("CardOneName").text == get_node("CardTwoName").text:
		get_node("CheckBox").text = "="
		last_try_was_pair = true
		number_of_matches += 1
		get_node("NumberOfMatches").text = "Number of Matches: " + str(number_of_matches)
	
	# se CardOneName e CardTwoName sao diferentes de "Card 1" e "Card 2"
	# significa que duas cartas foram viradas
	if get_node("CardOneName").text != "Card 1" && get_node("CardTwoName").text != "Card 2":
		# as cartas viradas nao formam um par
		if get_node("CardOneName").text != get_node("CardTwoName").text:
			_disable_all_cards_clicks()
			get_node("CheckBox").text = "!="
			var waiting_timer = Timer.new()
			waiting_timer.set_wait_time(3)
			waiting_timer.set_one_shot(true)
			self.add_child(waiting_timer)
			waiting_timer.start()
			await(waiting_timer.timeout)
			_reset_card_name_strings_and_check_box()
			_turn_around_cards()
			_enable_all_cards_clicks()

func _reset_card_name_strings_and_check_box():
	get_node("CardOneName").text = card_one_str
	get_node("CardTwoName").text = card_two_str
	get_node("CheckBox").text = "?"

func _turn_around_cards():
	get_node(str(card_one_checked_if_pairing)).get_node("Sprite").texture = default_image
	get_node(str(card_two_checked_if_pairing)).get_node("Sprite").texture = default_image

func _disable_all_cards_clicks():
	get_node("Card1").click_enabled = false
	get_node("Card2").click_enabled = false
	get_node("Card3").click_enabled = false
	get_node("Card4").click_enabled = false
	get_node("Card5").click_enabled = false
	get_node("Card6").click_enabled = false
	get_node("Card7").click_enabled = false
	get_node("Card8").click_enabled = false
	get_node("Card9").click_enabled = false
	get_node("Card10").click_enabled = false
	get_node("Card11").click_enabled = false
	get_node("Card12").click_enabled = false
	get_node("Card13").click_enabled = false
	get_node("Card14").click_enabled = false
	get_node("Card15").click_enabled = false
	get_node("Card16").click_enabled = false

func _enable_all_cards_clicks():
	if get_node("Card1").get_node("Sprite").texture == default_image:
		get_node("Card1").click_enabled = true
	if get_node("Card2").get_node("Sprite").texture == default_image:
		get_node("Card2").click_enabled = true
	if get_node("Card3").get_node("Sprite").texture == default_image:
		get_node("Card3").click_enabled = true
	if get_node("Card4").get_node("Sprite").texture == default_image:
		get_node("Card4").click_enabled = true
	if get_node("Card5").get_node("Sprite").texture == default_image:
		get_node("Card5").click_enabled = true
	if get_node("Card6").get_node("Sprite").texture == default_image:
		get_node("Card6").click_enabled = true
	if get_node("Card7").get_node("Sprite").texture == default_image:
		get_node("Card7").click_enabled = true
	if get_node("Card8").get_node("Sprite").texture == default_image:
		get_node("Card8").click_enabled = true
	if get_node("Card9").get_node("Sprite").texture == default_image:
		get_node("Card9").click_enabled = true
	if get_node("Card10").get_node("Sprite").texture == default_image:
		get_node("Card10").click_enabled = true
	if get_node("Card11").get_node("Sprite").texture == default_image:
		get_node("Card11").click_enabled = true
	if get_node("Card12").get_node("Sprite").texture == default_image:
		get_node("Card12").click_enabled = true
	if get_node("Card13").get_node("Sprite").texture == default_image:
		get_node("Card13").click_enabled = true
	if get_node("Card14").get_node("Sprite").texture == default_image:
		get_node("Card14").click_enabled = true
	if get_node("Card15").get_node("Sprite").texture == default_image:
		get_node("Card15").click_enabled = true
	if get_node("Card16").get_node("Sprite").texture == default_image:
		get_node("Card16").click_enabled = true

func _on_BackToMenuButton_button_down():
	get_tree().reload_current_scene()
