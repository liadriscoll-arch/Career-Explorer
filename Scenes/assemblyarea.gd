extends Area2D

var player_inside := false
signal firstpizza
signal firstburg
signal firstnood
signal secondpizza
signal secondburg
signal secondnood
signal thirdpizza
signal thirdburg
signal thirdnood
signal fourthpizza
signal fourthburg
signal fourthnood
signal bad
signal triggercolor

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if player_inside and Input.is_action_just_pressed("first"):
		if Chefglobal.assemblytable1 == "pizza" or (Chefglobal.inventory == "Dough" and Chefglobal.assemblytable1 == ""):
			firstpizza.emit()
		elif Chefglobal.assemblytable1 == "burg" or ((Chefglobal.inventory == "Sesame Bun" or Chefglobal.inventory == "Plain Bun") and Chefglobal.assemblytable1 == ""):
			firstburg.emit()
		elif Chefglobal.assemblytable1 == "nood" or (Chefglobal.inventory == "Plate" and Chefglobal.assemblytable1 == ""):
			firstnood.emit()
		else:
			bad.emit()
	elif player_inside and Input.is_action_just_pressed("second"):
		if Chefglobal.assemblytable2 == "pizza" or (Chefglobal.inventory == "Dough" and Chefglobal.assemblytable2 == ""):
			secondpizza.emit()
		elif Chefglobal.assemblytable2 == "burg" or ((Chefglobal.inventory == "Sesame Bun" or Chefglobal.inventory == "Plain Bun") and Chefglobal.assemblytable2 == ""):
			secondburg.emit()
		elif Chefglobal.assemblytable2 == "nood" or (Chefglobal.inventory == "Plate" and Chefglobal.assemblytable2 == ""):
			secondnood.emit()
		else:
			bad.emit()
	elif player_inside and Input.is_action_just_pressed("third"):
		if Chefglobal.assemblytable3 == "pizza" or (Chefglobal.inventory == "Dough" and Chefglobal.assemblytable3 == ""):
			thirdpizza.emit()
		elif Chefglobal.assemblytable3 == "burg" or ((Chefglobal.inventory == "Sesame Bun" or Chefglobal.inventory == "Plain Bun") and Chefglobal.assemblytable3 == ""):
			thirdburg.emit()
		elif Chefglobal.assemblytable3 == "nood" or (Chefglobal.inventory == "Plate" and Chefglobal.assemblytable3 == ""):
			thirdnood.emit()
		else:
			bad.emit()
	elif player_inside and Input.is_action_just_pressed("fourth"):
		if Chefglobal.assemblytable4 == "pizza" or (Chefglobal.inventory == "Dough" and Chefglobal.assemblytable4 == ""):
			fourthpizza.emit()
		elif Chefglobal.assemblytable4 == "burg" or ((Chefglobal.inventory == "Sesame Bun" or Chefglobal.inventory == "Plain Bun") and Chefglobal.assemblytable4 == ""):
			fourthburg.emit()
		elif Chefglobal.assemblytable4 == "nood" or (Chefglobal.inventory == "Plate" and Chefglobal.assemblytable4 == ""):
			fourthnood.emit()
		else:
			bad.emit()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Cheffella":
		player_inside = true
		triggercolor.emit()

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Cheffella":
		player_inside = false
		triggercolor.emit()


func _on_piza_1_nope() -> void:
	bad.emit()

func _on_piza_2_nope() -> void:
	bad.emit()
	
func _on_piza_3_nope() -> void:
	bad.emit()
	
func _on_piza_4_nope() -> void:
	bad.emit()

func _on_burg_1_nope() -> void:
	bad.emit()
	
func _on_burg_2_nope() -> void:
	bad.emit()
	
func _on_burg_3_nope() -> void:
	bad.emit()
	
func _on_burg_4_nope() -> void:
	bad.emit()

func _on_nood_1_nope() -> void:
	bad.emit()

func _on_nood_2_nope() -> void:
	bad.emit()
	
func _on_nood_3_nope() -> void:
	bad.emit()
	
func _on_nood_4_nope() -> void:
	bad.emit()
