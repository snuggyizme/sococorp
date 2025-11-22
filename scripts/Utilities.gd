extends Node

var objectRegistry = {}

func loadJson(path: String) -> Dictionary:
	var file = FileAccess.open(path, FileAccess.READ)
	assert(file != null, "File not found")
	var text = file.get_as_text()
	file.close()
	
	var parse = JSON.parse_string(text)
	
	return parse

func getObject(id: String) -> Dictionary:
	if objectRegistry.has(id):
		return objectRegistry[id]
	var export = loadJson("res://data/content/objects/%s.json" % id)
	objectRegistry[id] = export
	print(objectRegistry)
	return export
