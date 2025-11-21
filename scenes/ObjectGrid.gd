extends Node2D

const objectGridWidth = 10
const objectGridHeight = 10

var objectGrid = []

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
			# x position in the sprite. for example, if the tile was the bottom left corner of a
			# 3 by 3 object, <spritepositionx> would be 0 & <spritepositiony> would be 2;
			row.append(null)
		objectGrid.append(row)
