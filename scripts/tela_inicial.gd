extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button1_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/texto_cutscene_5.tscn")


func _on_button5_pressed() -> void:
	get_tree().change_scene_to_file("res://fases/fase_5.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
