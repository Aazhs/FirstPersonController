extends Label

# Update the path to point to your actual Player node
@onready var player: CharacterBody3D = $"../../Player"

func _process(_delta):
	# Get current Frames Per Second
	var fps = Engine.get_frames_per_second()
	
	# Access variables from your player script
	var pos = player.global_position
	var speed = player.velocity.length() # Assuming you use CharacterBody2D/3D
	
	# Update the label text
	# .f formatting limits decimals (e.g., .2f = 2 decimal places)
	text = "FPS: %d     " % fps
	text += "Pos: (%.2f, %.2f)     " % [pos.x, pos.y]
	text += "Speed: %.2f" % speed
