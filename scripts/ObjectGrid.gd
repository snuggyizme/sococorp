extends Node2D

enum grid{empty, occupied}

const objectGridWidth = 10
const objectGridHeight = 10

var objectGrid = []
var loadedMap = GlobalUtilities.loadJson("res://data/levels/prototyping/test01.json")

func _ready():
	for y in range(objectGridHeight):
		var row = []
		for x in range(objectGridWidth):
			# Each cell is a list: [<object>, <spritepositionx>, <spritepositiony>]
			#
			# <object>
			# null if blank; the id of a building if occupied;
			#
			# <spritepositionx> & <spritepositiony>
			# position in the sprite. for example, if the tile was the bottom left corner of a
			# 3 by 3 object, <spritepositionx> would be 0 & <spritepositiony> would be 2;
			var appendage = grid.empty
			# appendage = str(x) + str(y)
			# makes blank spaces show their coordinates;
			
			for i in loadedMap["preplacedBuildings"]:
				if i["x"] == x and i["y"] == y:
					appendage = i["object"]
			
			
			row.append(appendage)
		objectGrid.append(row)
	print(objectGrid)
