extends Area2D


func check_area():
	var areas = null
	areas = get_overlapping_areas()	
	for area in areas:		
		if "area".to_upper() in area.name.to_upper():
			print ("COLLIDED WITH: ", area.name)
		else:			
			print ("NOT COLLIDING ")


func _physics_process(delta):
	check_area()	
	self.position = get_global_mouse_position()
