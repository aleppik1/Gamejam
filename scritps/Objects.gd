extends TileMap

@export var width = 120
@export var height = 80
@onready var player = $Player
var background = FastNoiseLite.new()
var trap1 = FastNoiseLite.new

func _ready():
	background.seed = randi()
	
func _process(delta):
	generateMap(player.position)
	
func generateMap(position):
	var TilePos = local_to_map(position)
	for x in range(width):
		for y in range(height):
			var moisture = background.get_noise_2d(TilePos.x - width/2 + x, TilePos.y-height/2 +y)*10;
			set_cell(0, Vector2i(TilePos.x - width/2 +x, TilePos.y - height/2 + y), 0, Vector2(5, round(moisture+10)/2))
#
#func generateEnemies(timeout):
	#
