GDPC                                                                                      5   P   res://.godot/exported/133200997/export-07690686bd1a72f71ae2b53bb79af276-wall.scn�S     �      ������������    P   res://.godot/exported/133200997/export-4683638a6e9a031512c96cf808d5a613-tile.res 6      S      ��9*G�df*�.�/�^    P   res://.godot/exported/133200997/export-5d2a3c63dd2027cc5cceb245328e5953-tile.scn0N     �      �dG�A�8)<b��    T   res://.godot/exported/133200997/export-8cde0ec6209fc9d5e4f1e21b854f8b9c-bonus.scn   `:     P      ����;D��?O�    P   res://.godot/exported/133200997/export-c2a7af834e91ff64325daddf58e45dc0-game.scn D     
      &cw V���Ca;��]�    P   res://.godot/exported/133200997/export-d687370f64a28adc6cd2dc42f9ce6f46-ball.scn�3     �      ������ zە�|    T   res://.godot/exported/133200997/export-f1946e0ee9b7b5dca216e1f175b52e74-cannon.scn  �>     l      ,L��S�"������    ,   res://.godot/global_script_class_cache.cfg  �           �6��%@"��4pT��    D   res://.godot/imported/ball.png-fb9df5c9be0e37b524e54bd6b18af1ed.ctex`7      �      K���<�%�*s_�    H   res://.godot/imported/bonus.png-9cd5e9f7ac0b8040446b51f674236424.ctex   0�      �Q     H~�9�G�U�>�    H   res://.godot/imported/cannon.png-c8165b59b59e617504277f5358a76b07.ctex  �      �      �n.�l�l��-l~�U�p    D   res://.godot/imported/icon.png-45a871b53434e556222f5901d598ab34.ctex�      �       ��H�g~ @"�:SU�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexP�     �      �Yz=������������    D   res://.godot/imported/tile.png-6f57a1cf4157579a1242db52b7e29bac.ctex�)     �      +o����Hk`�3�{L    D   res://.godot/imported/wall.png-ec0cb1e2e3aa0d7772a64eb35046ded9.ctex02     �       �F<k8����:�W?�       res://.godot/uid_cache.bin  ��     �      7����s�tC�w'�D    <   res://addons/godot_rl_agents/controller/ai_controller_2d.gd         �      ���x�����%bf�U�    <   res://addons/godot_rl_agents/controller/ai_controller_3d.gd �      �      z �=V���Ec�`��    0   res://addons/godot_rl_agents/godot_rl_agents.gd �            }f�<i�S�.��t��4    ,   res://addons/godot_rl_agents/icon.png.import�      �       �ͭ��`���E �_%,    <   res://addons/godot_rl_agents/onnx/csharp/ONNXInference.cs   �             h�)ژ��@��ح\��@    @   res://addons/godot_rl_agents/onnx/csharp/SessionConfigurator.cs �             h�)ژ��@��ح\��@    <   res://addons/godot_rl_agents/onnx/wrapper/ONNX_wrapper.gd   �      �      ٲK.�yW�.�����    $   res://addons/godot_rl_agents/sync.gd�      o!      ����
?��������       res://icon.svg   �     �      C��=U���^Qu��U3       res://icon.svg.import   0�     �       t��:��f�H�^��
        res://physics/tile.tres.remap    �     a       �|�p���������a�       res://project.binary��     �      �z��8f!�*`E�R        res://res/sprite/ball.png.importp�      �       �e�nP�
$�,�m9    $   res://res/sprite/bonus.png.import          �       �+"N�����3�    $   res://res/sprite/cannon.png.import  �(     �       ^)��1�r�J�o�        res://res/sprite/tile.png.import`1     �       ڨEW�����ѥ�AHa        res://res/sprite/wall.png.import�2     �       ����OW,j�̇       res://scenes/ball.tscn.remapp�     a       v?������e��x_�        res://scenes/bonus.tscn.remap   ��     b       -�wIZ�H��x�� 1�-        res://scenes/cannon.tscn.remap  P�     c       R`co ���%D���       res://scenes/game.tscn.remap��     a       Og��a�c��X07�I       res://scenes/tile.tscn.remap0�     a       ��e�X@����]       res://scenes/wall.tscn.remap��     a       zQ�ϟN�n	]�L@�       res://script/AI.gd  Pd     �!      �wr��+n��9��/I        res://script/AIController2D.gd  P�     �	      G!�*�Pz[�N긢       res://script/GUI.gd ��     �      `��Pg
~���Kb*9       res://script/ball.gd��     V      ��I�<])C��{�,r�       res://script/bonus.gd   P�     �      ��\���d�~�[w�EM       res://script/cannon.gd   �     �      Z��S��ǖ`��J���       res://script/game.gdТ     �      &_s?�	����^d�    $   res://script/state/cannon_state.gd  pX     [      <m��j���-���    ,   res://script/state/cannon_state_factory.gd  �Z     �      ;�#��M���/�`�l�        res://script/state/idle_state.gd�\           IO��
����\��G'FV    $   res://script/state/shooting_state.gd�`     �      � OS�<V��Egq���       res://script/tile.gd@�     �      k2�tn�q*�v���:�       res://script/wall.gd@�           '��!�.<�B�Bg�D    <   res://script_templates/AIController/controller_template.gd  P�            w����[ԫ$q{�~�    /�fextends Node2D
class_name AIController2D

@export var reset_after := 1000

var heuristic := "human"
var done := false
var reward := 0.0
var n_steps := 0
var needs_reset := false

var _player: Node2D

func _ready():
	add_to_group("AGENT")
	
func init(player: Node2D):
	_player = player
	
#-- Methods that need implementing using the "extend script" option in Godot --#
func get_obs() -> Dictionary:
	assert(false, "the get_obs method is not implemented when extending from ai_controller") 
	return {"obs":[]}

func get_reward() -> float:	
	assert(false, "the get_reward method is not implemented when extending from ai_controller") 
	return 0.0
	
func get_action_space() -> Dictionary:
	assert(false, "the get get_action_space method is not implemented when extending from ai_controller") 
	return {
		"example_actions_continous" : {
			"size": 2,
			"action_type": "continuous"
		},
		"example_actions_discrete" : {
			"size": 2,
			"action_type": "discrete"
		},
		}
	
func set_action(action) -> void:	
	assert(false, "the get set_action method is not implemented when extending from ai_controller") 	
# -----------------------------------------------------------------------------#
	
func _physics_process(delta):
	n_steps += 1
	if n_steps > reset_after:
		needs_reset = true
		
func get_obs_space():
	# may need overriding if the obs space is complex
	var obs = get_obs()
	return {
		"obs": {
			"size": [len(obs["obs"])],
			"space": "box"
		},
	}

func reset():
	n_steps = 0
	needs_reset = false

func reset_if_done():
	if done:
		reset()
		
func set_heuristic(h):
	# sets the heuristic from "human" or "model" nothing to change here
	heuristic = h

func get_done():
	return done
	
func set_done_false():
	done = false

func zero_reward():
	reward = 0.0
	

�ҵ~K)��>��4�extends Node3D
class_name AIController3D

@export var reset_after := 1000

var heuristic := "human"
var done := false
var reward := 0.0
var n_steps := 0
var needs_reset := false

var _player: Node3D

func _ready():
	add_to_group("AGENT")
	
func init(player: Node3D):
	_player = player
	
#-- Methods that need implementing using the "extend script" option in Godot --#
func get_obs() -> Dictionary:
	assert(false, "the get_obs method is not implemented when extending from ai_controller") 
	return {"obs":[]}

func get_reward() -> float:	
	assert(false, "the get_reward method is not implemented when extending from ai_controller") 
	return 0.0
	
func get_action_space() -> Dictionary:
	assert(false, "the get get_action_space method is not implemented when extending from ai_controller") 
	return {
		"example_actions_continous" : {
			"size": 2,
			"action_type": "continuous"
		},
		"example_actions_discrete" : {
			"size": 2,
			"action_type": "discrete"
		},
		}
	
func set_action(action) -> void:	
	assert(false, "the get set_action method is not implemented when extending from ai_controller") 	
# -----------------------------------------------------------------------------#
	
func _physics_process(delta):
	n_steps += 1
	if n_steps > reset_after:
		needs_reset = true
		
func get_obs_space():
	# may need overriding if the obs space is complex
	var obs = get_obs()
	return {
		"obs": {
			"size": [len(obs["obs"])],
			"space": "box"
		},
	}

func reset():
	n_steps = 0
	needs_reset = false

func reset_if_done():
	if done:
		reset()
		
func set_heuristic(h):
	# sets the heuristic from "human" or "model" nothing to change here
	heuristic = h

func get_done():
	return done
	
func set_done_false():
	done = false

func zero_reward():
	reward = 0.0
�
��Ge����/��>;a
��������a�7q extends Node
class_name ONNXModel
var inferencer_script = load("res://addons/godot_rl_agents/onnx/csharp/ONNXInference.cs")

var inferencer = null

# Must provide the path to the model and the batch size
func _init(model_path, batch_size):
	inferencer = inferencer_script.new()
	inferencer.Initialize(model_path, batch_size)

# This function is the one that will be called from the game, 
# requires the observation as an array and the state_ins as an int
# returns an Array containing the action the model takes. 
func run_inference(obs : Array, state_ins : int) -> Dictionary:
	if inferencer == null:
		printerr("Inferencer not initialized")
		return {}
	return inferencer.RunInference(obs, state_ins)
@tool
extends EditorPlugin


func _enter_tree():
	# Initialization of the plugin goes here.
	# Add the new type with a name, a parent type, a script and an icon.
	add_custom_type("Sync", "Node", preload("sync.gd"), preload("icon.png"))
	#add_custom_type("RaycastSensor2D2", "Node", preload("raycast_sensor_2d.gd"), preload("icon.png"))


func _exit_tree():
	# Clean-up of the plugin goes here.
	# Always remember to remove it from the engine when deactivated.
	remove_custom_type("Sync")
	#remove_custom_type("RaycastSensor2D2")
˭��w������GST2            ����                        �   RIFF�   WEBPVP8L�   /��`�m�~��~�6�?�1g m�����cE���\�Q@ �+����SQ��88�a���;[�w�
#�m�tPV����"�?X	�;`&�� x�uHǅ��Fi�^��(�V��<ǲbkf���X�pM�4��w����J��^�����%�h���c�e[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dn7mfntm1bfv4"
path="res://.godot/imported/icon.png-45a871b53434e556222f5901d598ab34.ctex"
metadata={
"vram_texture": false
}
 #;�NO	�ݱ�w�extends Node
# --fixed-fps 2000 --disable-render-loop
@export_range(1, 10, 1, "or_greater") var action_repeat := 8
@export_range(1, 10, 1, "or_greater") var speed_up = 1
@export var onnx_model_path := ""

@onready var start_time = Time.get_ticks_msec()

const MAJOR_VERSION := "0"
const MINOR_VERSION := "3" 
const DEFAULT_PORT := "11008"
const DEFAULT_SEED := "1"
var stream : StreamPeerTCP = null
var connected = false
var message_center
var should_connect = true
var agents
var need_to_send_obs = false
var args = null
var initialized = false
var just_reset = false
var onnx_model = null
var n_action_steps = 0

var _action_space : Dictionary
var _obs_space : Dictionary

# Called when the node enters the scene tree for the first time.

func _ready():
	await get_tree().root.ready
	get_tree().set_pause(true) 
	_initialize()
	await get_tree().create_timer(1.0).timeout
	get_tree().set_pause(false) 
	
func _initialize():
	_get_agents()
	_obs_space = agents[0].get_obs_space()
	_action_space = agents[0].get_action_space()
	args = _get_args()
	Engine.physics_ticks_per_second = _get_speedup() * 60 # Replace with function body.
	Engine.time_scale = _get_speedup() * 1.0
	prints("physics ticks", Engine.physics_ticks_per_second, Engine.time_scale, _get_speedup(), speed_up)
	

	connected = connect_to_server()
	if connected:
		_set_heuristic("model")
		_handshake()
		_send_env_info()
	elif onnx_model_path != "":
		onnx_model = ONNXModel.new(onnx_model_path, 1)
		_set_heuristic("model")
	else:
		_set_heuristic("human")  
		
	_set_seed()
	_set_action_repeat()
	initialized = true  

func _physics_process(delta): 
	# two modes, human control, agent control
	# pause tree, send obs, get actions, set actions, unpause tree
	if n_action_steps % action_repeat != 0:
		n_action_steps += 1
		return

	n_action_steps += 1
	
	if connected:
		get_tree().set_pause(true) 
		
		if just_reset:
			just_reset = false
			var obs = _get_obs_from_agents()
		
			var reply = {
				"type": "reset",
				"obs": obs
			}
			_send_dict_as_json_message(reply)
			# this should go straight to getting the action and setting it checked the agent, no need to perform one phyics tick
			get_tree().set_pause(false) 
			return
		
		if need_to_send_obs:
			need_to_send_obs = false
			var reward = _get_reward_from_agents()
			var done = _get_done_from_agents()
			#_reset_agents_if_done() # this ensures the new observation is from the next env instance : NEEDS REFACTOR
			
			var obs = _get_obs_from_agents()
			
			var reply = {
				"type": "step",
				"obs": obs,
				"reward": reward,
				"done": done
			}
			_send_dict_as_json_message(reply)
		
		var handled = handle_message()
	
	elif onnx_model != null:
		var obs : Array = _get_obs_from_agents()
	
		var actions = []
		for o in obs:
			var action = onnx_model.run_inference(o["obs"], 1.0)
			action["output"] = clamp_array(action["output"], -1.0, 1.0)
			var action_dict = _extract_action_dict(action["output"])
			actions.append(action_dict)
		
		_set_agent_actions(actions) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		_reset_agents_if_done()	
		
	else:
		_reset_agents_if_done()	

func _extract_action_dict(action_array: Array):
	var index = 0
	var result = {}
	for key in _action_space.keys():
		var size = _action_space[key]["size"]
		if _action_space[key]["action_type"] == "discrete":
			result[key] = round(action_array[index])
		else:
			result[key] = action_array.slice(index,index+size)
		index += size
		
	return result

func _get_agents():
	agents = get_tree().get_nodes_in_group("AGENT")

func _set_heuristic(heuristic):
	for agent in agents:
		agent.set_heuristic(heuristic)

func _handshake():
	print("performing handshake")
	
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "handshake")
	var major_version = json_dict["major_version"]
	var minor_version = json_dict["minor_version"]
	if major_version != MAJOR_VERSION:
		print("WARNING: major verison mismatch ", major_version, " ", MAJOR_VERSION)  
	if minor_version != MINOR_VERSION:
		print("WARNING: minor verison mismatch ", minor_version, " ", MINOR_VERSION)
		
	print("handshake complete")

func _get_dict_json_message():
	# returns a dictionary from of the most recent message
	# this is not waiting
	while stream.get_available_bytes() == 0:
		stream.poll()
		if stream.get_status() != 2:
			print("server disconnected status, closing")
			get_tree().quit()
			return null

		OS.delay_usec(10)
		
	var message = stream.get_string()
	var json_data = JSON.parse_string(message)
	
	return json_data

func _send_dict_as_json_message(dict):
	stream.put_string(JSON.stringify(dict))

func _send_env_info():
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "env_info")

		
	var message = {
		"type" : "env_info",
		"observation_space": _obs_space,
		"action_space":_action_space,
		"n_agents": len(agents)
		}
	_send_dict_as_json_message(message)

func connect_to_server():
	print("Waiting for one second to allow server to start")
	OS.delay_msec(1000)
	print("trying to connect to server")
	stream = StreamPeerTCP.new()
	
	# "localhost" was not working on windows VM, had to use the IP
	var ip = "127.0.0.1"
	var port = _get_port()
	var connect = stream.connect_to_host(ip, port)
	stream.set_no_delay(true) # TODO check if this improves performance or not
	stream.poll()
	# Fetch the status until it is either connected (2) or failed to connect (3)
	while stream.get_status() < 2:
		stream.poll()
	return stream.get_status() == 2

func _get_args():
	print("getting command line arguments")
	var arguments = {}
	for argument in OS.get_cmdline_args():
		print(argument)
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
		else:
			# Options without an argument will be present in the dictionary,
			# with the value set to an empty string.
			arguments[argument.lstrip("--")] = ""

	return arguments   

func _get_speedup():
	print(args)
	return args.get("speedup", str(speed_up)).to_int()

func _get_port():    
	return args.get("port", DEFAULT_PORT).to_int()

func _set_seed():
	var _seed = args.get("env_seed", DEFAULT_SEED).to_int()
	seed(_seed)

func _set_action_repeat():
	action_repeat = args.get("action_repeat", str(action_repeat)).to_int()
	
func disconnect_from_server():
	stream.disconnect_from_host()



func handle_message() -> bool:
	# get json message: reset, step, close
	var message = _get_dict_json_message()
	if message["type"] == "close":
		print("received close message, closing game")
		get_tree().quit()
		get_tree().set_pause(false) 
		return true
		
	if message["type"] == "reset":
		print("resetting all agents")
		_reset_all_agents()
		just_reset = true
		get_tree().set_pause(false) 
		#print("resetting forcing draw")
#        RenderingServer.force_draw()
#        var obs = _get_obs_from_agents()
#        print("obs ", obs)
#        var reply = {
#            "type": "reset",
#            "obs": obs
#        }
#        _send_dict_as_json_message(reply)   
		return true
		
	if message["type"] == "call":
		var method = message["method"]
		var returns = _call_method_on_agents(method)
		var reply = {
			"type": "call",
			"returns": returns
		}
		print("calling method from Python")
		_send_dict_as_json_message(reply)   
		return handle_message()
	
	if message["type"] == "action":
		var action = message["action"]
		_set_agent_actions(action) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		return true
		
	print("message was not handled")
	return false

func _call_method_on_agents(method):
	var returns = []
	for agent in agents:
		returns.append(agent.call(method))
		
	return returns


func _reset_agents_if_done():
	for agent in agents:
		if agent.get_done(): 
			agent.set_done_false()

func _reset_all_agents():
	for agent in agents:
		agent.needs_reset = true
		#agent.reset()   

func _get_obs_from_agents():
	var obs = []
	for agent in agents:
		obs.append(agent.get_obs())

	return obs
	
func _get_reward_from_agents():
	var rewards = [] 
	for agent in agents:
		rewards.append(agent.get_reward())
		agent.zero_reward()
	return rewards    
	
func _get_done_from_agents():
	var dones = [] 
	for agent in agents:
		var done = agent.get_done()
		if done: agent.set_done_false()
		dones.append(done)
	return dones    
	
func _set_agent_actions(actions):
	for i in range(len(actions)):
		agents[i].set_action(actions[i])
	
func clamp_array(arr : Array, min:float, max:float):
	var output : Array = []
	for a in arr:
		output.append(clamp(a, min, max))
	return output
`RSRC                    PhysicsMaterial            ��������                                                  resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script           local://PhysicsMaterial_ay2os          PhysicsMaterial                               �?      RSRC���h9�D�:E���GST2   �  �     ����               ��       ԕ  RIFF̕  WEBPVP8L��  /���W��mim���3>
۶ms���Sa۶m.��t
R��oCU��?U�����  ���J��B�} B4m� 	�:[��$��Z�cq���r���,H���6I$	a�m �c�%Q* @��  X�Fr4��Ɵ��G�L�;`���l|p����H�d�+	;�dpwwH����a��=V�yJ�c^$�D�@f�r�?���Ѷ}����<����%A�����9{�k:tF���H���}=���Z��ƭ����(�%��-�?�F�I�|��;= �+"�$G�����l��l{�֎�m۲-�V���:��hP&�,y%2��I���E�#��IޔPcE�_m�a�|�9R����e$�߮�WͶ��)��	�M4!5�hB���QcP+���I��mC�o'���`�	bK;���fnw�@¿�	���έmxGekkG)RJE��������6��x����l==�u���D��$��$�L�b4�{t����Sw��m#M�E�� o���;��# E%B1%���(�&?�{����H�Цk��!y�n�/W�����"��a0�@@�!���͕����l��4��䶑 I��5r++��KV�MN���h� � �A\�$�!��������t���|���D��l�um۶U��*Hc�9��-
�ԝm��h������D"L�@����:�#���}j���?��ĸ�$IQY��{7z{*�����������������������������������������������������������������������������������������������������������������������������������������������������/������������������߿��/��������-W[u��o�WN�}1� �p{᎘����U�� &��S�en���W�z&w������p��\��{M��:{8Gq�]�� ���L�=��P��y0�Ot�/�͖tӭw	f��ㅫ�`��v΃{=L�E����߮���������:	��|��k_�-w��>�G,V�A�W������?�~��\�y�=��a�gw��1ma���=��`b�-���Pܲ��X���JF/����A�ˍIi��iC.����~�Xر���<����s�y���o�"����X�����A03�Q�]����WAJs���0���+�/E-ƫ���ʿ�{�w��i��V:�R֢0�.��|r��Q�K�H��9��iMwZm4��'�`-��F5�S��4�E#�bU��t���oƞ���BHY��躽[�o?]n���Y��3Al@��bzw��_Cǵ')�D���|���G�Ԅ����B�뒃D�Y�;Y���Yњ��M�w�Ζ��&���3M���U|ȕ�8ͅ�!VE�����,��8�>/�U<��<����D<�w?fy%��u�%�����R�
Ȼ�de-�����e��HC�Z�X?v������M�&�<��wض�д_��4�m�D���$+��<�P,�w����k6%��&��g�54�����S���!�=�J�� �n��>��t�[�������^��g�o��;$Xf�nE����[�UW�}��l����Ң�C�u�	����=�-f�0l�ۉ��%�s�ߏ�J�!$�Ҽ��+�ѹ�V�~r�C?����l���;]#^G�ӭJB�����*~�S���tk�R��M�0�ϭ��uk�XKn���Dk0�)���j����W@|�ռ��q-L���V��8%}||�3IdoVY������C����&$�*�X�����.�Ą��\��3���3�s`]��\Z��V�8o���ʌ~��bwD�1�W����	���-h�k�&����w��=���h�9<m��ah�'d^�Y�-�z}�"L��x����w3Y7�YyW{Bx�7_׫�S����������R����ڱ�k����z��lz���Y���O]���#O$vh=A�}�V�2�o�e6ջp�'�a
J҅T�?K��[��P�؎������F�:8�9�)��?]u"���t��Z��,53l���/ʞ�z�z�! ?�ֲ�����n|�Z���j���bv�JPVP���δMyÖ�=�q7�j��]µ�kW@!��.Gr��n��~{C���#Nۼ^�|�/e\���OR:�ͽnM_�3�U>9d8�`@6��lQ^(�������2��ܷ�Z�f�R{}p�q��,lV�x��4��5m�M���ҙ�;_��W�¨����>��b4��u}Y]����tF���R�*�y��q$V�S/�#%�Q^֪B�)D3l�W���*�x�Z���f9���\�Hj�oS��H]���3S �ۥ�e���a����0��)$o!�b�{l�[Y�OL[g�Be�+��-���uly��ʊ}b���S�,1�*�Q��'w7�
ּ7}�̘��GQd�F����Ek8=�?)d� E��Zǫ��VV�Yg�g�4��E�ZԞ��+��7���ɑ���?FQ䩦�R�N+�}b��l��Yizr_EtV�;��וּ��'f�B�,p���\�ll�n������j�,.dR:�}6E��
i/c�'a~=v�H�-~�\�*ӭ���V3w��3O�4{�y(K��N�Zk[�7?���pe�T1��ʤ��%��j+�KTK�T�5�����m�"zJ钊' ��֚��L1��m{�57Xq!ٞ�fܔ��q:k�"{rLe(��֚S�Ȟ���+�����`E�u\E���$<h��V��_/k�����wk��VV�䅼`�1ݨ`Ť�*ú�)��66Xe���Y���`�+�{O���y`�C2&�B��͓���#�*����s*S�:�D�t�[�c�U%���W�KÁ/Qkmܰ���&��a���@w�ZQ>9'Uݰ!�j�6����jc�Ud�/iJ��9��8ZK�3���0n�b��DH�3sX��ԗ~�&m��n�R;��n���۴<�n�C�>�C�[?o�,7�Dۮ�rNٱ$���d^[��J9�H��zf�9�2M��,t�@��2�v��j9�/7A��8물6���+uO/7���2���^�ݿ��D��'tP�(�a]�ݿ���cHҸ!����(�r���)�G$��k'��̍��]r��O�n�Xn���Zq\�K��'�u7�Zq\�H�@��N2͸<(���O��4nI-��nz����C�3��2+�%n���jmm��$��;��e���T�^��f�DLK��^�3N�����ki��� �AM~Y��#Hrp�vFӸ������G��r�f�WC2�/�j��<tHB֥��T,�)��ħ���Ks��"Z��A-8Q0/�5�k��d�v+��^:3V�d�+�$ث%��c7$k4vƺ@�P-s��_����H#��P֮`ؗ���D����jj�<��]Zh���T:���j�޼�$���y̥x@}�����ƞʦ��M� ����Q:Ṷ��N�UR�`�6.��Q6�V�$S6֠'r���ʼ����^��K��Dt�I��p2Q��J�&k���w78<I�+V��+x��*�^c(r��q§s�ష���R�T9_G�/f�S�o�
{�Z��؝K�8�O6n�c7$n�ؔ�"��BS*���L�2#n��bh2L�r��"aF�݌�q� ��V):;,�73����-�ۊU���m0�B��;����<T�bnT�>��s���s��p�3��2�=^������V�^lC���<T+YO¸!r7C���������"^N�J6���>�
wCVd�#]/9]�b_�d^S��Oj�!���$I�ֳk�Ju�����T2�a����P!���g��D��n��7�0�g�ϳ+x�h�,B4DM+:��(�<`�:q���
�oU*����<3���Vi	�Г���o�t$�����پ��"gfA���~~f�=&���k"�<�6HK�0`���U���*yI�+l�,�{�(p��q9�j�Vɫ-]��Em)ѱ��6�����l���h�8��J|>� ��=�@�t���p<��8�X���p��NO�qC�T�G�RIH�6�|�^τz��̢^�T�'���+_�KGu���D����R���J�r�e��]�]m�P�����#�x���	��8��� ��&�&m����PX��L8: "��&{yMIҼ&���R��_'ػr��L�\[��g�2J#��,�$��D��S�[�H����^*�A� �`�ޥ%s��\	?苜��9os�{s�V������c�P[�G����=�����B�ư�Q��!��lÜ���K��Hx�_�Y1�j:���O�,��F���H�w���)��n�2�b[�}��(ӣܠ� ��b�>��s���&3R�W���k��p�(��8	�{��`��T�6��HɤH�a�q$t�*�{�`��H1��'
?�R����&i{�ֳYrf`��E�HH\��o
��aƑSC���Z����/*�N6���)V$|^�6D%zx8��
��������OŨ�t����Ax�����kR�>�Id����j��dȆ(��Ix����WF�����(�Y��Ǉ#s��Ix��S1f�S�a1l1bÑY����
9s�wAzJ��a��f�d���B���W�ά+V�C�#�GrPKv�[)���!�G�����`�ł#x��ǳ��[ɗ�����+ ���9�m��n��U�	���kf�x_8W\��O�s�:�U!g�h#��,��VH�}��?2�enwR��[�T!g&��3rI\���f�W�h]�O�CX�$�E~X���5_u��I,�R~��+/\a���I:�&��y"�|#�G���K�CX�<��,Xm'.o5_�G�/�+��s:}Ǐ,/�5
�NJ��!�L[��F!��o-'r�E�[���,4b5���\�>�� ���1�"quLi]j�0��6��I|~k�XK����U,�x�x�B�wrk<�gșC�yk��-���G��dJKD��5�[�Ԝ��U�e�Nٵ�>(p=Y�$P��u�׈,,�?��NI�n���|���,%�z`�0:|:�8*Ɵ���oڑ%߯��Z4�G)$<2�
kPvoʋ6�s�X�v��p��Z�U�M�n�������ܔw�a�3�9��=�d_�b5�2�+8���cX^v�r�\�R.,뵀 �ٽi����̓Ջx|C��k,��BӺ	Z!�������9��ϑ�h��w~��[Vm��Zb�I���|��8�hE�k�ܓ��[���l�X�M�%�Us�yZ򚽜(RB�Dh����X[�q�j�)��"�J��*e&4
��5�Z���4��	ыx|�`[�����ެ����|��XN#����
�'z��Y���f�����Q�Vs�y�cް��p�F�2o-
	_|b��a]��#���{�[�����1>�Q0��;��)��.p�b�����ݒ�ֽ�1j����'Tڤ�w��GY�Q��AZ�&C��#ک��y�����r>��l�ڊj���n�<����U��/�γ+(e�2->�l���D�ąe�:�f�-ʹ�Phj{�Yx
�C�%V2�γ�ؖr�S�j�G�SLH�X$Z�:�γr�8h�VCo�I�S���q��n|�2�B�o9h)��<Pm���#^�K��_`)�!���
 _�k�u*���Ќ�7B��+��`�\�V�bmӑ��2���9�)<R����i������k�r�S��N0HZ�a������Uv��B7X?�4���hK�ӔO��r$�9y:�k.�����x�r��B^St�]C�S�{��=	�j�*/�
56X��)�0w?��G���|񅯼k�%6n;�5�Tk�����/-�)����Ş �l*�0Hu�h]C�Sq�H��v���=��;�-$���:�NŅ�,�x�^& �vy-9�C�\�)���=��9�����v&a�A�N� trG�R!���g�M�'L�l����@Th�2�b�j�t�%�&����D#޿>��!�)VK��⦈_Խ�CKk�'[��]C�SN:�{>��T�@J�5Z����1։B7w?��5��_�H�1���<��w����bnr�Q�S��-yh�TH�s�|Ga��ʇ�+�����D��\�P�K�$̶6�g��5t��!ѩ�}DD��⃨��&N�;�d�8Tmf4�}kʲȳ�1��)Z����K>�������O��G޶ާ�p�#e
��9��\���0�~Y
T=]�;O�u�#����Y8>S����ٳ��ki�S�zW�Ǟ2����)v5��	aSc�9��)�Q��e��rq���������k:�b�,��_CC��#�:��[�xuQ������{�3�Ä0uW�:�>ܹh���\W�l*C���^/�	��%�)�y��@������wx0!Lŕ%�)E�g��Ͷx�)󽢰�}��j3��"��ph��ҝ��۴��|/�������]�;�� �C����FR�V����!z-u
_#��d��V�����<w�)c�|��h�W�*~_!:��y�.�6!������Fԍ7�j�r/C�B�6wk��bl�_���P1c��UK�I�ل6=�(��;���6+F_�P���Pm�BR*c��}
�������F���P��e�|n�Bq�P:}�c�����X����0��:\��%j'��j�d����0���"ˊ.ӯZ��!u������=0�4����zTK��0h-��DN�G�|]~�a�ΆH�*<�%V�@�;a|HN��9�t����Ҋ��j�=j��8V�Nh�۵��؃�_�_�&�v�T<���0�-^z:��Z��Z�A��v�k	��z�j�%3H8�^�H�a
�i�h�A�����%��h�>%��q��}Z/l���p�-����w-��a,�LϞ�;:�ڟ�hЂ��,���U�_K��4|�N�Kp�vVԡ�޵�"@�D�{p�0]���5e~F�; ��P�4�|��^+:/���xR4�r����q�r�hEo!�\jN7��c(�H3[�6���@P�)K��D�4ư �6�����������цv�k��4X0P1*2��g�����y���T^�mZ�}"�A��=���� �t�����ٰvjׇB�A�����|^|a� 5��H��r ��� ��AmqY�)���� C.k`�P�(rQ���Ғl�.C�k����ڍ�w�ؑ��l�&?9���Erq���\{.��a��|��5��^˯bV4'!%4�c
�_L@�l��i)����/���$�r�h"w9M�W��.���� '9���\N�����&gѥ d��C�%�9̇��6����$!hQ�#Q���A>��V����AJѢbM��\;�._��Ϥ�ӌ�S+:�P�O�uRRkg��v��*#���+B����D�������rheWc�Y,���+n$jJ�S��iU�]���/�B�kv$j
K���Cx�ъPt�w��sf`
��ip���F@33�=U)��P�?W�����烖��վ�$(�I
������ffj���t����o���y��l&�,h�fK��ZcŚD��M��~���_�\��ZRUU�KR�m!>�)���d�H���*#�J����u�X+�9�w�,�6��Qٕ�j4�=���/8�t`}%o��M.�5��3'>qě������9�ŕ�2� ��a�x(��
�j1P���J��Z�:��C�qy(�k��Zhu��Z�����$���8Иh1�i�s-dV�2R�����^�X����O��|���:�>�WsˬjU�d���t/Ž����]���M��[݄tv+�?�_�7ޤ�K�	{��ԍ������Rg��X�l���M7�0� E�f���k>��%���D-TI�.W<L�d�%|��B'!�'�
��KlU�'�O].q$����L:�O;[J�TV�>c�>=P�j�}�6�8�ċƊ���]�)O���ł⪒��6Q/O�FTc){�=�.�p�K��>�mkF����.no7_�(�^*$�H���K��@\Y��
��~z�1�Wy���EW׷��bz�sBn��y����z6�>ǝҖ\��<Lĕ��*�	Q�?=U�\� *�l"�,�UE��R�����J��+KU��4TΤÿ�N�d�[?�x��+� U�����?��T��$?���Y̩�	rKa,tH�~�W�8�i[j�G��4��l�J��z7�\nt-5=���(���50��	�b6�.6��ڒn0�T\YF�R���勒L�^c�Wa�6s�J��
��Ż<Q���b4R;�@?�?�&������ҏ71R�&��9�ަ��o��2��������H�����������BnO���Dm��DU�+��U����4��l����XB��`������`�"!����Z�|#��B��p�h���Q`6������*ę�[6Ѧ���tn�h;�����o2lp��8�n�\�f��n�R���֨���g�\���n{�j)�GS ]�Ȉ��8�va���/�b�{~����3wob�,p�q�X��'��o��/�M�I��T��ai�W��W��M����訿�x`�+HD���ߌt�?�x�X' +HR�q��Vm��NY�E�o#��p,�7���WwӾ��+/������m0����� ��e�m=�燋���rd/o�e�Ѧ��&k�������cɈ��3��X�P��_�_c̣� �B*���O���A۽���6X�P��SR9�2m�d�'���=���b
3Ň'j�M��
�#�`#Q\!fU�ti��r���Ī�F�iYg3h����֋�_�Niq�v���e�-�Ô�|fr�i�&�.��.���qz��;.��*��~��+�HWw?U	����I�i�3��u�_�=Q��Yy��*A�����1��TIdf�U-��5��Ďq-b�-��1;���]�%vӃ���ӢF�=�s��p�,���=��0�j9��c�m�;��ds�plm����W=���Ԣ�,�~\讑�j6�е(M:�0��C��zn4����w�
�OD�>_�����F�;0�7��O�쵥Cϰ(�$�[�O��{`Ʌ7�t��D��e��ŷy������8��i�F�ҍ�B(d�ph�Qr�2s��Y�C̑���J:��B��*r^Q�9����D1�\H4��_Q���fZ�����?3w� y��97.�����?�Ւ���hDi��#��H�AuS.���J����CB,e��DĒ�6��zܢP{���`�E�u��7�>3�o��[*�+l��.Qk�Sv�c�(OL���!���W��c���%O�<����Q�WwY���^a�����)QpװV<�,ix[-��v�o����(2'1V�"�)2l���͊t"Ӑ3��*�����e>S������BdD����,!��3q�SԄ�=��ՠ7�r('��4��p2�.j�P0������Xj@I�*��z"R|B�4���$�5x7�j��I�ʖ8��b!W�(L�� h6�-�;��{Ys�)���:�S�A����viD��Dq11�<�F���<�@z<�,!Φ�*���yA��D�)M�C��*�"Vw(�K��͈���N�| ��E�^��� Gދi��:�A��S�E��1����Sߩ���ɥ6d�
\���in�+Kj�@�SS�L��LDG!:��&n�Ĕ�ǌ�7�	5�_t����q�L	dC=#��YA7�G���6tq�p7Wh�h�|�!l���BB���-��ť�`>�!���n?*���[�\cP|�y����02f�?<1�@o���_�h�c,�ӎ���_�̂/S4�1
�=�R2�^��e�����<�N�9��YE~@�
�6܊�N*��B	��h6$+@���0V���<�pL' (�pYE|D�F_j�-�2C��9EtD�
�vu&Lx�,F�)|��tGu@."�w@�z��d��eH�Նѕ�eL�d������|u%,L��NG�L6 ��P"�N�9ڭ��1Oȡ\C�o��a�|"�<���6�����Od�5����OI��'bƬ����P�ڙT����xWBͲQ�U��G��� D,a��WQ���uMPF�&<К�Ђ�� �g�lB@pozfm��^a���p �9B�RkjV9b�0b�P��3�#�ڬr�4̀c:�b�I��h�=L<�X�V��1�0�F	f93�&c�23��1	H�OM��ތ�\�Mt��i�Zp��X�`�)9A5�P2F��m�	0>V��E��Ea�#�;��X)"��0��9t+fk0Ĩ�g��$�8ܢ��l�)�:j갉}�"a�#ǚ��B���"t�V�R�r��4+g�3+�(6;1灘`��A�:D��0 b���`��A�:����A����}x"Z��i n�l�M$�P�� "-"Df;l8����?�Z����6����?8�O�e�\��ؓ��cg�^��SP�T�aS�� 3zv�5���b��z2�=f��k/�(&ʱ�Q)f�ώ�.;"����0Ŭ���.�)���F�@��h9�v��<���;�u�i@S̎h��t{�a`����V���v6R!�����Ę�SAH+q��lDB�� gq��%�Ҙ������l�B��X�iƎ���|�6�(���<�SXͥ�1#?�P��%�z.j�9�m&�F.m�YV���q��S��9,+�9�f��R�jx����5v ��V�￵�?g�S�	i6Z��Gj�t�!R���`�ǉ��v�� �E�Fw�~��R��Zv՜�)&e�Fw��6�L�y����BQ;�����_Y�/��521G�'b
l�����-=���o��!��"�Cj�c�E9V�����՝�ޞ;�����+k�ܝ�Q[q�F��5[f&g8@w��L�Q�<�oݠ�Y&���?sT�I{}��?�+�p�P�>LR�Rvo�fN��I<Ի�9�;�8��ٜd�)ŋc�7A, y1^�Ml�Z�bd���d��X����k�#q�
�,S�O���)b�*e�z�Z��`��j�T�jK������Ʉ�L��)�Q6�
��TVG�gW�������{
���JBA��b����������0��C�N�ִLj}�0�[˱��4��r+*/�Gp)�EQ�l����&�*K�*G�dp)�E���sw,�6"�!L�,���1Qy���z;�Kik��;�ǌj,9.�1y�=[#5ULA-���;e�!�i���K�hbnb.�W{���5���J�fm;р����j�j�s�GG��-j扼���u��~�TF���Y�
���@KS������>����qK-D^z����{���ҫ��h�0_�P���3S�ޟ�X<��`���YK���4��1[�Y+c	��-h|����UP���E��U4�8kedlZ��_1:���J.{HZ;fs0ki� �r��ٝgs����Ǝ��Z!�����<��l������4:p�׬�������LV���jÆ�k�Y��dl������u�o&���5���Vb�$�]H�������Y��y���W	^O�H�
�:jB���b�0�3��<S�Ս!+�ɐ1�}f�y�-ٲ�̽�uC����&��k��I������<Koڰ�0��0yd��F$�R��&�ױ��A;&5n�yV`OH��3�#`�1�S裰�=�}.�D|Ӻ�2P��@�����n+[���!�
X�]Gd��O�ć���`5��s�H[Hb�M��خ�Py�h䮓)�'ì��!�ϯme�\ ����c�T?���۠a$>��*���$���5���"����������MڱҐ���g����z�V�&�ݙ��x1���x���̀1�"6|�_��a�H=S.���fn��(���]����\mխ��7kC>�"�X��87��:[[U~j�G���xG�d�x������">)�3���d��5����AI �p�f���2��i*	���L��-�ZBϐ�.��	�{3^O/y��e��q��Ѳff��/*�y��e3y�<��3����r����p��h�{{��|�]s��u���e�Z�D���T){͡�7=X��.�@�
��=��K.�:�=����Y���<d�ł�q!�/ԣz*�f���y��V�ԘP���r����Ss7r��:�M)k&	DgrlN`/�D����R��H7N�� ��XL��sJ%*u�-�̀I�>�b+�Y�����0�7��y�f��P�a� �b�F�4>�,RW1��SWJW��eZ���X����4H���`�(��5-je�#���m��[���V�9�J�2 �Z�p䋗�F�}�FkI� �e�����'C� �y�f�����>�Ș�I�"*ȝ�<�)���Y%A-�[I���HӏR�D��k���;���L��g�ݝ�s��>��40#)]T�Fr�bCQ��bX�g�����;�z�g��T@��p��P@�Vu�)`�V�;����3'�
r��k8�ӛ	���N'f�A�I�5���M�^Лr�F�N��>sb��@D���j��K��J�6ӍA}�	�r3���QgM�:d�
��%�g��p�3���DO��ә�����b*�MT!z�&�,;p��Y)���j��#���l3���>d�
�tc�WT��,!<�������r6p1c�[��A��ukġ7�V2I|3HT��M�mbz�-��̦0�!��VH�)�M4AJ�o�i%��7V"�
_�o��޶8�������Y�;���0�~�u3�enD��K��ڗ��&:
c�3������J����a)�M�W�r���I	��Q�(��0��s
��g@u�=i@�$D'auHJ!5Bf��50{� }� auHJ#��k��|rF	��SjI��~zC�U����|��0KO%�	4�����>S�'&F<�~B��R	Ip���î� �
���b5���-�)�<�2!���
Z���2_ �e�=cO�l�W������y<����'Z	��L)���q��Q��O�:	�p#38��\kkW�a������3��	7��5�Ż�S���Um��ߐ6�`��y9����0��vF	e�PJ��^57�B$�'Z��n~����RQh��^����%4��.�뫛�|jP�|�+��gWO+2����	I�ML?���V:�)��Foc�HoU�[��40I�����Jߊ&�/b���^��*F��L8s}����K�w��aJ�����.�[���̓�	r79m��{�Ta(��ϭ���G\��dm�o�09u7Ms�#��A)i�F�v��~�'�.�x�G�i:#��S��Ux��/7�4�v�3����hGuJN�(�L����~�Np�a0�J灒�~�!��Uy�nZ��R�3��-\-69Ȩ��M��˻�:�{0��DZ%�5n���;��;�=[-6Ȩ��~^��6��� 9�o�NT��l��+8������t8��D��jݻ�@�r�������r���6��bC=xԇ��|��+|׋l�Do�A�T:`�f�[���J6K�yꪻּ��?U�Q(h,��*��i�%�J6k��C�����׭��5o�=��Oo_P���d�3�@��xa,z���pt|:��qr�ϳ���&��Ylj������V�YO+\ec����G��_>u��@ IЅdTz@�i.iԼ?l��������dlM5]���.��Q��ܽ��A�1C��Q;nр����ø�d��V�E~�P{�z,�����cy�����y:}�a�g��j����\�F�g�4��v)e����=~�=?>@�'W��5��jg�)a�|S�^�.�b�S� 64WBR����z|x0׾�8����c`�P#�����
��`��ʵ(�7�k/k�~O��Yxq�Y�<�Zζ,�yJ]y�{d��G3۾���f�V����6���-8#?��O�n��j_�t��0�'������Y�;�����r�sL}C�a3,Wc_���N|1�o/�@�|�R�r=r��IA�̢F~�h|���!e�ީ/~�x~}V�ձ�D�K���#`�s��Y����yԹ�>u",L�ʫ~?Χ�c�;�}����2�ÝEШ�d�������f��g�vxg̶0������o�ތ�Ku��t�B��P1�L����o���now}�����������|�>}�J#�hv�#��8�3���-9.sΥ9��9#b����!$�����QS�X�_�d2[,���f������eM����h��z�f��:�}�f]zR-d?���8��h!ܙ)�F��~;CR4���53c���B�:���:w�֙�}L3^l�1f2d	�SH3�w��ҙ}Gk�'̜}n�3�C.%y2Ȼ��<��!�4全1sZ:���i�uI�N��Q���o�a��<Pl���m�5��O���3��1�L��%��bE��-�eM�>*o��i��j�4�ax�oٴ�\���T�3����#,���ݟ`[�(� �=���	LԎ1C[0f�#�ܤ*��q���<�n�M{8�G�,C��s�X��R�_��8�9� ���� }R����ܤ3j�H1d�HZa�� ���(N�A�\I�򯵾��$�B�"]��-D�2+@ZL��^�� ZK�;l�D��s���ϧ�P�(5�=���e�i1��6��¨u�$�ۼ�^��]{;N�����4q�Ji,�C�hqj��`Z����gut�h�I��#�&JY�*Ap�v�yj��i1��Z��py��;b�Ք,a9g4�����Yg�Y��';���9�RSd�9��JZ�-N,�Xt~���0��H��S[_��e$̊�z�sQf1I�\��N��pzӐܙm���N��p��,��SB��b�t���̒�;/��V7ױ-Ni��Hu�F�DLH��
�L��Ī���$r��24g�	���Ԙ�V��&[Mo��s@��A�d��/S��Q���\0J���6BX%-�6�z���m��y����`|��om���z���5� o1�E�(�BO�!��S#8m�zJ�]����a���P���F�6c����X���G��T,�19a͉̞���=�Ł�Ԉ��y�u�}�@?��NU���?��r~X�������S�]�}h��6.Λ�K�	�c���<����b�콉�V�=���Ӯ�y#��)o�yX����`������+$|N��Ʒ��t��x��֒�O��{�(8�T<XvpO�$�o����v����.'�m~�_s߁w`l�E��HS`����~w2��@
�7���� _��h
�4�q�Q��DG�%�X�����2݁�.4�|L"�0�L�	��u�΃�!�J�S��3k�Xb���}� ѐ7FAC�#���]0}�
7����
7~�q��I��sJ#�c�R���1�ܕ`��=�����헸��X�=Cj�����g������L�JQR�A:���!01�{#�uB��Nv-����R4�k��X.Q�VzkUd|u���A��N�a�J��.l
����i���A�E�@1��F�_���Z�tV�#d�R3uE)~ ����j��T�ah�b'P��*`#�Y�"�A?�V؝�R�vd(�4��)����L�B�y^
.1돬U�u��Z����dםl�"�ӳ���?�Y��1��0:+Ҏ�I�\��^E��I���,W�uo(��
b�[���WEyaڟ�uG��q֫�:G7vg�����'���H�,t�(;!	׏�2l=�PS�6��RW{��4�sQ�����qb+[W�z���n,����U['�%�+�$�Ɵ\N	���:	�X�5#6f9�4��6��8�����Gq�
��TT���
�C������"�ߔx_s�~�O����(*��xr���jll����Et�m��!y����{�ю�nb���G��k��w7Y9���{7k<F/�w*~�52��8���6�?���4f��;�1s���;e�
x,m�A��6�o��w.H7��=�<߉�)�~���0��qZ[�䲸�:�.P���D�ޅ�.�f�Y�b������;qP�;s��(4Wj]v�guI��cw�454���(҅����yzx���������\84h�?�3w+��ґ̈=�40'�o���¯�>Ƹ�{~gH��콪��d��=�ގ�k���DN)�,��q���ǒ�W9�{�EX��{9r��)��)j��W9�{�QPN|�����BJ�P�FG�]����-k5m���.;}6!��wA���ˁ[����{���0�,tM]�;/n"����8��Zww��s�
��(C56�*��^.�8�I�� �va�,1�t���Ԉ�B��S���j��აa�SVc�$�",��+��Q{�=H52�]�&�_v4����<xh���#��F�x��h\I�ƸajgH�#^f��ʍ@.Γ�I��jl��
��8܁2g���C��hL�H��$�T[<��1���ˉ��� �ng��:d��Ȇ����J�	���;���� �.�a������w�0�M�E���2�(>L�q=j��g�e�xB�#�0�-��]��KL�ꂪ�Y�*!��8=��k��Ȇ���Ä-�>�ϸ=���<
�h�_�$f�\�I��X0 c��*�#��HQ@N^]�B?�t*�w#����%
L|�:?h�p0�#��ymjPz�����Ι��|tco|,�`JĮ�
eO
?�t�(�ĒS�i2)�*v.��Ѝ�/<�u��+%b�o���ż������W��ĕ��g��q�*��S3�[�F��C}$�a�J<�����!T����~��c�yo"�I �}��8�Z��gM��6�e�,��\��
�p��Zo�(���ՅD���])�+rL�D=����w�ym��f��\J�
�9�0te��}\~�����1��_q�����H��aeC�����k��!S���Yt��HZ+,�B�h2�a��B��iOm��pKd��8d���!s�@�Ԃ���/��Q,bD!��u+U%��\J_`��c��(9! �10�gp��=�G���D� W��I8F�+8N�WI��4븼�>�1��OHŐB!8N�R�2C	��)ᬉ<-z�(2��Sbш{|k%�,��� SE���F�Jaﳲ�T!1�:�0��,���k��1'ˈ�q��]�J��8��ko�;�lmN3�_����r�Gd&�F��-ƞ�5�"�b�u�[I*/Z��j�3L�XƵ�;C�*�]�ȀP�-fvY�)�XƬ���	�H��A+M_Jy$��!�Dj2�`�q�?�T�@r��2��0�jݪr7&m�2{����-���غB0b!��jd�R���D5����Q8š/�Ƽ��M^*�lk�½�لS�~H�|:֞L�"2�� ��D�l�,�"��Pf�H��!��S��G)��͞��ńj�Mh�R!�(�C�mpd��#2�ٸ�%�x��.��1�5���!�BCp�y��K#vj�A�|��Haᣱ����,�1�p.r�y�C'���hxK~`Ǭt���a�d�n�G	v�J�ˆ)|N���S��p=��D��W�N��^�ؒ%w�]F�`1̀�O&mN�Ԓ��ޥw�S�Nn�h]=A.D��3ꤤ�
�M�u�y�"{���d&��5yz�����fɯ���.c`�ඉ�ӗ��R�ڳ`�NN,[�L�z�~�j�B��{�lZ�r�v�s��LP�'�
m��tl��6mz� )E�V�Ӌ3Q��-|M��.�TюXl�uf�w!�J�׋a'+�/\nR����N���Yj�Eu�;%!e;.�,��^f�euҋ,�lx�pw��l7�RzQ�c⒲fV�Yf��uf��V���"�܋k����I���9b���^\u[�>�YWC|���ߋ�Nb���t�l2���/f"3c�+)����-_�t"[�����aC����-_�v2�3��Ǜ�
Ɔ<W��/�B3�=����0��#'��G��V,Ӊ��;��i�����o��Rl���q��4Ks�:�c%�]_�_�bx�H7�i��[����}q��M���~�I���b�?����#�t���B�:H�<d��/�;�-��j�K��$�Y8ƍ_�E�`f�b7_(p��q�G��L|4��Q����?���K�P���?~�`��d�#k��o���
Oz�Ì��'��I�W��u����e�w�ѣL��/��N��aP�F�%1z��TuN�(�'yl@�.D�5��oj:[�F����Z~&�nf�X��X���v ���#'�晑�W���!{�s���-[�t��zXdԤ�A�H-��X~ �%�&��Zњo��aC졯2�k���3P�u����L�"��WN��-ϲ�a��7�jB=��W��g�^��l:l�=d,y$ɨ{�(�˵X����C�"����\x�":�\:l8X��R%%��'��XQ��X*fA�,����&�K�{�t؀`\�o�5�í����#a��n��\��3�;y�3������lqd����_xt�o`X���g5���C��j�%^eR1����+Ά�m�|&�78ӹj���7�a�u�;L�QZ�T��VP1�8oI��Mz�E�U��z��3kH��b�%�Y�c�x8Dߺޤ'���5��#�by�BP�8�LgŸ����o#L.*���;�^f��nA��G|*�	0�V��%�'�^�,"o�����'�������9���LW�/{T�h;A%,�(^����Whs5����?��K$���'�r��Z�B#,"�ÀV"Lf!u�Y�C����_�c�s��sAɁg3�ө�509"G.�����~�+���r���Q��3K_3�h����ʴ�b��B�B�Z��㓟�9�%���s�M�6���Q �I���:í������I>�%u��Ny� RW6��$ ��E�z�F%�m����M���W����������C� vs4���˓[uoS9�9`��P�*���.���N{�7�H��uJ���l��?$���e���ܻ�Tw�3�s1�_^j�K�~�՜=��a�$@Qj����>P�!��a��aS*�ʗSu_$� _!��D��W.5�$��1{H�'��T|�	*f�?�����,H�V���ix_͸C�fM"��A/��"
��u��|0�p�G����Y]2Ӝ���I�^ĂVu����< ї�P�+��a<8��V�X1�1{9!Z13�>D����qc����r����f�'�=�P0��3�L���Ɔw!�>b����7t��c�&w��ݘ9��]�d}�T\ q�I���7��c���%r0�J]�$F3j�����u��3�\�]6$G?�X^�D%�sٓ�z7}� Gu��1�w��$$H+jD�`�R;�����Vc��$E��f��2���ʪ!	�-��ᖣ����X:ʸc��ޙJ�[���:'I҉{C�0�
��l2RDS����<>�]V�A�c�_��LAd��lj>�(�5�tt��}�R�V:�4>��~�4�m����7�M����>ලS*ȆTQj�N��+���|$�6U����у�O����Sضw���JH��8�3��Q�5EL=���&�62�%{���	���ʣ����C>�M�h0�	Ny�-^y��qK���t��]x���ʣ�>����F���m�����]n�n���?�>��d#�?T'+u�^2P�P�)j����6������\x�1��=�x��N�.0Ͼ\�t,W�������:!������p�=n8D @c���Ρ��>L��{|�=n�& �:*��6��DM�w���|�>6F|�hph�7j���x��U�lO2��S5�Z���^Ad���ǯL7��) I���;�5]�I����8B�Y��w9�|Ҕ�a,�R(T>`]׉㝽ϼ!��hP��1���pY>��z�%jKə���1D�Jٮ�F�sf��j��I��N�u]'�'�P;������P3�s�B|	�W��X9��Ra���K���n�X6#�%Xū�`��P�֙�#F�
���Md�R7���������ʪN�5y*�K�h"�����H��H�fTOg�Q,B���A��n�9c����f���y�L�Z��6p���R�!톞%J�ٱl�"[C�	��ʩ����_��;�ANKj�E����ͭc�x�F)�n%j��ױl8�"�@g�,�@�YK�S_3�o�X6Q��HW�Й�Z��n��6;	7�o�,�hc���P:�~=�T��}F>�*���p���d$F\
����U�$�g%/GT��/ԡf���:�l���W�ؙ���t�֋��nf��PETa�� ��ؙ�Q'���_M4TG����V��t��
kLRD(�_��<�֍6&��,������3�d!���|�!�z�P:��v��Q'���#S�P0�P�xY�2v��@��ڙ�.0�9��9�R�g�jC�|�P.q�5�AG;v��n,	��E���[�:F��Ip�FB��3�羅W��;Ur� Z��ю�w�����N.ݸ���U�b�͢t��J$�r�t��V@�I�Eh����z��L���T�8�����ϥ'~/А��[�)�CdJJ�f.�	Xu��S�ɥG^�'�Lu�zf��&1�\��:�qNF'];�G�ɦ���)Ed���g�Ĵ�E��gA����M��Rr�Ư���
^�*���Ea6)2�����@1@ϼ��I O.,���������V0O)[2�.�\|f_u���@\������,�B2oSI� ��0]��V��Rf�	$�5$�
�XU���/��g�ʭ+?o_����s�0���!�]�a��Y"V�?��j�D�ҍ!�Aa_կ`�׺��w��Ş$��4ɉ|�@cr���f߳�:�m#9��V~ۨ$��<u�q���(�H������`_u�{N����f+�=Sl����4�Ե���k�	�N��i�n&��f�V8�C�w�e�
�@~���ᐛW�_��Nw��)iv腔d%i�9�8t��
��Oѽ%"M�Q����)i��WQ\��
a�WM[
4�{%`|FP�X�Ӛ�f��ȋ �UI�W �b���'F�	�-s��㐔��Zo�OI��y=�1�न���%گ�>ii��������PW[�<= �;&~D��**�:��;���(��ɠ�n%޷DR6��fx묙I�Å��^�He�N���[�����um���2;n$��Ă.!Y�b�]�$)�rTo	�0p&��
\����\o����F��x��͉@y|8e��+��'4�$�A�B;_vM����4.e�v+wF�n�6MJ��Q�w>��{�'@�P����s�X6U�����p]`<>�2��	0�a����8?@M�_��ͺ.ZnNT�VMjA?*,�Ǆ�2;�{Ԥұj����1��x�;7����'"lh�-�3)ժ���yĬ��IJ+����B����hlzjܤ�S�t�5�lw�A�|�e�����I����Z�Jǩd��ePǃ����e&�����7�!`�Cf��gUv�$���(�%%��%b�8&i��2�A�	�XCf��+a�w����f�&5��;���z�u}+�`(H�^�h���⯴�Ψ�Ņ%cW+�7��M��?	��Z���1���d��Dn�3������.�kWg��P�.5��bj�4�1 ��67pQ�T�s����t�6#��Ϫ�,�R��r��or�'�1d����C%ѧ��#����$>]�R3�9�JZ#����7g�G�:P�1KE/r����֠N ��S��Q�d�$�dSS���ob�f�2��G/Kr��7�!���Bf߀)6�dr/�vӆ�J���{�Bkh"S�5/��?w���4}��d�Q�o]�%0�f�ْl��;�<��;�	��wV�Ga�<�gaH��TtG a��:�^�v�0j���:��g��I���|���n]/�i�)U��o��:�J8�����CҦ�Σy���������nL��� ��b�{��c�]���l&~hˋ��� 7�˖�\�S4��N�Pe]��lz�G�'�ұ�h]�@+Sl��d3�ÉZ"��v��R�$���u��jӹg��nS����������ԣ���HR�bC�$�-�j*G��F�)���h���<RV�zJ��ahH�����Gkh+Rl���Y
�w��Ⱦ[C���l�w1�g�i�8��z���3�Ujiz��ۨByt��i����.uZ��YD�l9����hf�C�*���C����h�{_k�W����Ġ0+��1�MR
f��e�`4;�ԇ�Yػ'%3�i�Y���a�.�D��C��A�R�T��2�0���ʡ~�k�go]�l��-<0.�+}ӕw�'b��(o.������y"�ꈀY��*��Ǯ�եɦ�-��2�8e�yD�8e��C֛�r�v-	�̠��w�,����míV03�Aqz[%�aU�e#bd.]�IQ@�����X��e58M~]1�Ȉ�h��Ӵĥ^�h�s$�<��k �ң�%�r��9�G<�(��zـ�n�k۠��E��ޱj_�+������Ol�vȠ]�	Ǌ���kj�� 5����G����T�]�Y5��<^s���p]���zz��"ǡ�hv[,=Zg�+G�r/�m��)��|i�.��`̌_��Pk�*��q����ø=�]h�f��M�ƙ�\VJ,˓�g�2{=0��T[�\��BA��]�hQ;�����Xh�*r�UuJ��2\� ���ʳu��vJ\u�9h~��H�Z�=�M��}��B9���i���f	�W]�؅�'ںc���oBk�)�$���C�Xt�<��Ǫ�-U��Iva�_aCe�m1O�j�����&�� s��У�r�'��s�Rx�ͅ%o�7a�y�X?��3���ě����$R�Y�����G���)�<���b�(S�+`٫�kRL.-<��n��9��:�N��,A(ݫ:4�a��O���r�m�ꐧ�NO,���P
�!*�dHt]=A(�/�b}6"�`pVz@�.���BbQr�{bJ�(@Iu��w�A&:�U`:	�B��\�م�	��n��!���U6 r�.��Qz�%uP�u}�����]�XI�Jؤ�毶O+�w�<$��{�YQ��pwt��*	��.�Zz��}k��\��zu��u��tԊ6�@r�\��ß���<�eLj@2;��ء��Ӆ5c����:|�҉�ěE���^rH�L�N�H)�!���=��-�.�xQp�� �k_��u��܀J���#�:UL����ѺB�h=!��r���i�`~��/��jur�29Bjlt�Ѝ�H�k	Əq��\rd7�r�<a�q�������<jm�ѩ���\�ݢ'�����W'[��P��=��JUjd=��Z��}�8I�V��j���T�uR�{ɧY݀xMJ��"G,4�Ԫ�,���У�e�Zֻ�	1��*�(�e2�0H�<!�ڂzf��j5�lh���%Z��ڻ�ٵ�kD�L���%���C����I�b��ZU";ZK��ڐY�E�ν�]��lV	�5�7����|X�~C�2��֧��G'8S�L�v�'[@V<d�`]I4��Ζ {�p�$���!��k`�e��q�6�Q&�Z	�Cu�,բf��&��P�y�H�KJ���{�r;�$g�]��N���:d�jQ�K�f���m����~�s���?����Y��ݖ%^;�6��:�yqa�klE�9��%U_r@���=���MnS������o�U��Yfc��0�D�ܭ�@���7��o��.c��,
C�!��!n�	��crh���*�����gjO�������Ha���[T�	�ϭ�HY�FH�K�S��5�C+��Aw'�zd�:ݪ|[t�.��5cn��"ʫlF�Fr��)Q���L�)�,�g���nѭw�{��"c���V�Qf��s:&#�ڜ��e��Q�k������ˎ�2�B�D�-��C*�H#�k�֎?Q���{"�qSp��mh(��<�0fǚ1���V��ٜo�%8ڗ�F���5����~��=T�J3w�}/�I1ť�HXi-8=��#^�QG%N�T�4.An��h(��7�-�d�3Gܩ������iA�9�wr�0ؓ۬���w�O��".�g^���
"ĝj�xx��������uD�&#�e,�]�1�<H�C4D��lm2��Q�79�=u2���	�k��)��To�C�v|9�Q"/{a�ξ�b�� KhcA��:d���K!`�~!w��,Ln�tL�&Ԭ��r�\�
z�ŋ;���� �:������8Ą̈�7��P:*F�ٸӧ����-:q!iRU{�6 ����|�:�M�^	�//����HM��qO��A����$U-�ŽC������ن� ��
���gԕp�xwaƽ�a�`?�υ�8�y�k�{��(&�)�$�����=`��I����|�>�'�����h���lr��kL���w��	��{E9̉�v.�? � H�����jQI�n�6�樂�2��C6ѧs������н!�����y&�&3��l�u-`��	�<��@���#,�֠}H�;%��"����2���w�Հ�Dc����r�u�\�G������0X�~���SkcYS8!G����1'�Ĳ`@ުu�.��jx�oN.U���H�3��U�]�_��rx"R�0P�2��BP��'�\@,��C��Lf�,G�I��a��?rD8��L�;F��w�́��g+o.!�Z�5��4t����]�.���:�)s%�L>Q�dF�����&�/6���z�8�Φ /Δ�uM����k�sޗ�O����pu��
>���"�zW&�/��@�~�2�L٦��dHY���&�)~L����3�>��K�k("��̆�f⌎j�s��������K�3sX�6�q�рq'����ڠ��}*%�?�})�?�~�q���9Dse)FC����\��h�ro�j��6����W8ǏI8)�����L���?U��HE�A�6�|��K���ápF�ߠ.�I�8k jt���soYE��x󘚟��$�y�P�Z�i4��@W[U������&n�Xc��/�w��1	�3�3ԠS߈/]����K9�E_J�}����=i�-S�W՘�C�3Ҡ7��8�*W�7:��?O;�F�"���_�־�t���m�؋̓iL�f�k�3Ҡ��A�
�^s�[���t'le���X?���̼íiL�f�3�3(9����-Ӭ��O��/P�j�{�"m�x9{���x����<���_��ғ\�f�R	"�Z��ҧ1y�}�X���Ξv��w;�P��Õ�3:.�zO(S�ȕ�_���7i�A���VF�7#|���_L�;���PO�)��m���Y۾�G�5�:�w���ؠ+���"gQ;�z�=f9�]ԙ�G�j��
�>?h4Q�|��Sv~��"�����T
���ꉆ��߃�}��Oω���E�9s'�|�imw�K��&�;޻(���OI���6������v�'zwa�)~
N_�������"���w���h��o�;����]��O�ǦB+�)�Sa���K����(�8?��W�Ϫ6=ڟ�[�V��ˆ^����E�X6�pK���ɽ�FHvq�P�{�����&�T�n,�%)���/��2��ζa���J�w��0����$���5�N���>��	�x�j"�f���P�a�K�J:X���'�(�������g�\���?��LR�7��ڡb^ �
�Xx�ς�m�E_�[C#���B5@�ȳ�ř����{��C�:��K����	�x�Θ�zus����!�w�� 6���u��m��;�G�ɻ�:įj:��K�=���Gt/�R�����P:��f�rY�k4�J�:�E1[�G��=d��3fw)(�o���a:�ƣ֓`��?�T�j��v�
�P7N��uI9|Z=�)��$͚�{�>�	=����u5S��܀���u�_鿵��F��ݿ6��7��Нs��B��J� �b��+��ij�Q$Y�7��<�}��5�X�7��P����bđi�3[�V>׋�35I�~�s�Ub5��G3�&c����R�KR@��ғ�����
*��ԯfz�Ek�WZ΋G�!�����'Bn}�Z�Cā�� B�]/*�;�զ��t���C"Ŧ�>|]uvL��φM�\̚�~̕�Y��@��l{H�P�؏����/�[�M�ݚtNw�G�!�|wLD���K�ӳ~�"S��R>�s�If-uz����t���vdE��kͦw"}9�L��F8�D�����0�4y��!��ؒg�p�ۛ�����Rozg��w�ժ��Jp֣-h랪s��Qn*��z��o���:��uͰ�G+t�C*�91��qٜ���\{�q|�}.'�vǰ��SY�d��γ��y�P��`�����]ιV�P �lFc-�pjkq���B�� �T?q����{��qY�g�����`�Nܩ��t��V��<���,H�/�_Jg�2�'��ƽ���sd��W���`l������nTݸX��䂣X���c/q������\JO�z������%��f_��kfn�FZ�c\��L�N��WdfF����q���WK��l:��<](p�8���,�a��a^mZOo�B����e����B��np�|�E��Yd��D�5Y�}�t�k�$r)J<:��cEh�9�����oO��S�'A�H�q��ټ0�x���,������Ɲ(�CbĚ�i��o�������i�fd9F�'�7�D6f�g+���y�y^P{+�~0�J�k�'�~���^k�!�(�g3ҫ�n��:�����jY���-��-�"��'�^��t�W�f�Y6���I*S�ifwrcH��ׯo���L���zx����i�*Qf�G��������jg�r�Ȏ�L�+��u���ڼ�$�MW#El����|h�ǵM3���<�����5�Ѕ,�M���:�y����?H��'���t��ܝ��.����O̞�'c֏GHEmf�R\��}G{��#fýa6=��VԤ���7@�1P�\�����-�����$����lfN��U�����볺���ɜ�4��oM�R�tu����xt��x�AX/y����@��F��ڻT� )*)�c�Vrvk��i�A��io������C$�u����U�Sr��J�����S�|�]k�^��FLF�O�>��8��N����#���A+|�sa��K�,��lZ��ut�B!����S��残q,��*|�j���i���i{u�%XOAO�$o�#V�SSV�ʗ���m��5�������f��*��@"�"�cNY�+�ӽ���>0����;矔�H�#������*|e�S����Z�?]���y8ũ���WTgF�r�� U�KQ�"�I?����
w4���:L�!9�QI���s�j)�POԅg�Q'�̦(���w���� �;i�J�c�:)W�ix�BE�?��:���I:��cz��b}O&΄ߘ��[�:ud<UZ��+-h25@PYƌ��"/l�8�X��նze�.�R����aM�<��5�0eD�>K�WL鍥����ɺ�H?�Or�UMgn:�hD��3lT�+SMT��Vf���Q�ɾ&cMM�w`eA��WW e���D5�W&jw�	�����&��qhJ3�8*b��,�!'����y�����ׅ�,����M�M���R��4r+L��nL���as&,�,��z����M�/-�*���il�fn��ܘ��*>�f��z_�ƨ��&�2�C��ǯ�)��mlM>�Fʽ0&�YU�;���x]+f*8�Ф�:?��A�_�;���q�i�
f*�ut5A�Q݉.��������C�?�_�0M� ��_F�iX���d�N�a���M��wrV���T�?c�)0's�-[V����z���Y6<���UM�	D�9�k� R*A6���-6�ͲYY���;�ܔ
pN�c+�@s���#fO��D���;�ܔ
xN��^q�۽��e��ٽ*Æ�G_��Нpn���ml;ñ�S�Y�z*l��&�e�N87����6���Y��\��	>H�ao��xT�;��
b��q�9�N�ؘk�*�̹�Ջ�Ia;a�4���2��wBU���u�JP�	��%kP;a�4y����x�6+O��֘�Q�y�J�2�i{�NNo2�Z9E���N���5�zG=���@���1;!�T;����<˼W�v�r��P�;�p�x-�j��Ph�&�S�S|t߆��r���:
c�?WM%�;�;Mc�:!B?�q��h��܊�gI�xP�l�Ω�u���PU����M����Gu�w]Ԙ�ŧ�H����h��m
�nN?�ŉ�rLc�m���j���wٛM�	�&�.uɉ7S�	�Ҙ��h��o=���M����%��S�:L�ʇ"[�W��z��YS"uB�)s�6����/>�)55���&a6Q�y�u¶)������5�zbHM�9�ʣe�J�R�tB�i
)�V�_�|�Ϙ~�y�J��t��
d�2O �����\ˬ�!Vņ�s�G����4���S���	#����u�"�&E=�s�>�_��`"ҹ�Z���uM��k}
�$��wo��>k���^z{��O�ڼ�E��_O¦��-�)��zTW��(���~���5��«���$|�Ĩ��|�Ut��+ъ[&�t/��A�Hæ)��*7*t.�oj� �C��|/���D�6U�O�p��+����x�U&���DB�� �Y`h��+����FW_��I8d�\�v1��1��te���,��{߷�0���DH���7�WؐLSs�ًԕ��t&��I��2m��!�&w�0{���l�!����|[��qi��T=��-E��]Y_��vp�ʎnu��bMV��ь�f������n�/���D�����u��Si��f���絮�:���rCn&'�Rw�"�%:mWP��+׌ޓ�r���!�������'�������Z'�*���rCn$'��ı ]��"s����Ý�r�41�!nݔ�,�U�@]r�+���թ*��7i>��Ӱ�n�<ۥ��$ǉ@�e��>^%�G�gw�,�!8���u�k<�K��C57˦����?륈п����.��&��5O�c��f��>I��Rڝ8�x��i���^���pȩK_9 :.&�%�mj��/+N�����,ۥ�Q�F�Ϣ�{�����oC%'����k^�����0ʩ�T*�S�E�#�tI�����l,S��h�ʲi�0��L��<<d)�]����HO�EUЉt���/��2a'-�[�	��|<S<�y^���??���F�Jru�b������^Uy}<�����[U�4M7��5�e�+h���qxK�4�3�<�U��d��5B��y�V�%��/�6k���ɂ�'e�)Þ�3\�=�O������w2d̾�$6��l��d6��=� ���X	�ɹ��Kxv�J��C��ƞ���ؗ�?,$8�/���=�W��c�y�Ҥ�e��	��Bbu�r��l�9�k�k C��]�̦�n�e��q�T��Sl'�x�D�	��ɗ�κ�%ӣ�_$׺[-�����*a��ǫ�����¿8Ha}e�9�x���������줓_�9�\��9g�Vmk���f�����A'��pW/C���F2g$�!�).����uՍ}&��8��4?ĩpܣ�e眼��AS ��4�R��5?�n����P�������8����~3}��-�q,,��3��p�D=a�)�����'��{]�͏��S�@�� >���*�4�Zy��Z�Px��c�3���N��a0��b���c也.�B������:����~j"��熪��jc���f_'jT7��D������EB���G��`r6+6CRg��S[ȟx��Lf���?��TA�!��D�-�d#�Y����`���߲��Ӡ^&���?V�39�H��v=������8�ΩҷX�������=-��.5�iY1�a�L~��d�bem���xtl9T�	��&H�����̏�:��Ɨ������D�|C��.m=�?G�z�k^���e'|T6B�n~��-�;�mk�E�>����BN�{1G�5Z����
o��ee�[V�i�/�|���O�����{�%���:!��˩�e�'�xϖ���X�4'�4�o}��M;(�������[|�-o4�R���:�����7�?#�=l�e���}���]�7:ɹ8�<����g��[�a�-�iI�i�w���YW�ql���	[Ӂ�G���ʥ��#��[�a�-���+I'����U��
�=�oتW�kZ�HR������U:uU�>��4lM�R劥-��1+��P$���տe)~�N�ʂI��y�!I壬��@� Z�O�:�|��&�A�~������i�^�	D�܂YRq�i��/��FC��lWq����9��4�x��pY�?��Ɠ��i�#��h7kv��b0��'��E��W"˒w�(~�r����������Bmp1A�̲�%��Cߏҩ��i��	)�M������0sb�XAT0�?"MҢ��q����B�Y��3E��Ĕ������+Ї�Qg
������15ʥ�qV |nn'гכ�9
&.ƹy5v���\rM��:�=��Q����V� 5���\�~�>�7�}r���2ՠi���V��|�~�Ή���Vg	Q�n6%���K����	-M���:�]x�t��4��=���ߝ;=��8��l\��tQ�k�����
�\P�`�-0����ع���/$'�Թ-��s���LW�kݿ}��މ��kbi��sc���O�����8��^���6�����Ug8�u�/6V1E�`(v��O;!�>��`��2��X_��wzN(�b��6~1!)��u����)\B��]L�1P�|��:�U�%�Ɣ�2����V�ؘ��^�G;�_XZ��ؤ|P��Ki���$[cc�-%�.�u�tV�1M�ݥt�lョ����/ͽ���,�Mg�4aÐm�q�,6�@��jOwo)-Ӓ�8�c5�k)^�����R*�E�@!�(nAC�R�YJnTĊ1�VcQ]X��J�L�T�!�i*��P_Gnp���X���\=�1R����p���{AR��΂c��H��2��ٽ��it��S	���iO� �yv/(�!(6֐�k�6���ő�rv'(3b��P�阥=�+��|v(�!E�Cd���REH��|v�<8
������x(U�ķ��:��PZp(�e.&J�$��̠SPt$X:�j�#��Dn��|j�2�ҩ��}g>�[cg-�b3o*���?����%�sD1�TA��i�8���W�oQ�ֳC1�\Q��i|݉�����|ЩL��"���|�o64x��w���DC���
'����x�����g2��ey�G�c��:�C�v6>��,#��Ya���<8'
e�!�Tg�+��D+�� 4���+:�6N��3���?Z��`
���o��h�[�%j|�'KcjV�މ���u�şW��@�á��8�������Gt:DX��y��|������`_�Ϯ�]<W5��^?@s�P�S2���b>��e��L`ё�Pl��� �5��2����V��(�]��0~������9�����:h;c\{:�����v`���0&�^]1:��tniQ.3�F�-�^�k �NY@>,#p.2����
�B�+�Gj �2��P��l�~r?��6��Bv���%~f����8�?!�6, Gd�p���=�Ix.�.�ә0��]&W��O� ���a�~B^���K��!F`��t��s�pǇ�����w�a5zW1@�;�9t�2��l��}È9sE�6+ˡ�6xw����4�WWL���p㘓��L�(d4ۡ��[\���˲`���3,���=�k8�3���y�c@r�ЂM�/:���� ����L���[ �sb��s������b<xf�gB��w�����b0�BF_q��F�y�����J�!A�'����'��|�G?�GE�ڄW��d��c�;��������2�Z���&�6!;�w?�`	�Z�Ő�nP��]Q>&�d��bI]���~R>,��k�1b����n�jr%�w}���;�߽�a�����b0>���-�#�J�P�X�~����bXv{|#|̡2����=�Ѱ�k׀�h@��Q��]�
it�Z���#!������-����JmD��[�Nj�kx�92 ~e:ϱ�Q9�{h��Ǡś��m���nQKG'K飔KMO����%9&�&���s8�H-Y<ˢM���ΠW����s~�r�1:4q>�+�GIM����f��s�ѡ��y�a�"|��j�0/zP:����!3V���'��4��ei��:)4	�nY*+��� �[��I�M�L���%�_|J�2�(��	�/��9�����_yJ�L�;���S����bp&�A����Srb�)gl��ί9���I(��t�R�s@љI,�l��R���&��ݵ�/7%b&NgT:��z��FU��O���:�i}SYq������}�����Y�D�#K_���8	��W�\���_!@����W��$'xZC��u���(��@�b��o[DB����Թ�ͯݐ�m�����ayKSY�C0q?S<=_�A�"��׻���36.������J�����Y:�Z\�W�{𛣔j :���*���'�$9h����F��V�F&9@������[VTH]��k*�GmD���9���k)Si�RC)Y@�7^�9&ݩryI03��.�ܿ����+T���O�ѱq�u�SY�|8(�2�)%8)]{���x�H��R]M(�9,.r,R�
�� =g��#��������d�Ը����]Q�������E^��[����i_y��Rⁱq��7�|�nR���x� �TF�6�L��#�M��VnY�p㈧�gz?���s氒�����%k����|���J��ûM���� ��}�!��F6�Չq�쟊�_�ӻ+�HM�_R�����䍗��-��Y���y|�o������ ��`@ã^~={���5�;{�R��t���;��NN��/�q�M�J4�>��b����8N��I��+�<��B�G����ڼ"Ov�42� K�ڄw�H�_~sY~��p1����O8A�_<����׹@n���gx}��kw ɋ��	?���'iq�g鹧���It4xr�3~��r�����?��Ǔ8���2��`��Bië)�E�`���)�w���Zٞ�y:/�i�;�� >�yýu���B����mJ���ύC�\nҏ���Ͽ�ڡ�[Yp����%��Nm�Ӽ|O�����Q'ƥ�˙�m�×^�1�R<dh �ҩ�o�o��򦟭ʓ�55��@O�C85���Ҧ�-O'�:��/+���ܸ4b|�i��`�+�Iп��Gx����v�>.Q��c�誋� �ÍK�����b��hD�"	��/,{���K��GX7�Y�F���]E�U���;��_v���+��u�]��+�D|*	,���@cL�`���r���֊��a����V�9%b��e�j�����T2=ŤtH�Q"ٓ�������"h{�r1qR�M��k$H�^��86�,�1dH�^9"VL�1�G<=���1�J���c3����� ��$Ĉ�Wa��3@9�<i#���!��dydAL/W�����W��5�l�cr�0s��]�:�4�û��) �L��?uG�j�Y����R�]FR�G�9kEs�X3EԶ�I4�s��x���vb3%��qb�Kg��>G+X����JΠ��%+\vZ���}t�<N�x�SWD��UN��i�����de�������My��unR6t-�)�� /��?�uAz��5y�ܤ��@[T���;�X�N���-jn���N�t�v��� �]#\���]����-�gns[�x�2��VSk/����_�漖�?hy���p����]�[���*�P�(��@���K��;��u�BW�2�[Rհ^d�c���IF�XEvE����57���������H��l�)Y�!���K�lbh2I*���=�Cc��(���G�M3��ռ9�A���٤�#����+���f��L_�HWI&t��3�0j�yc\V�rī�����d6Ƹ���12���O7�o['�гzީ[YE&��U��Y%AVn";kSI(4�6�%�6]�.��Y$Qn=aPS2
5+#�t�x���(�]_S(�k���������-�^e�1e�c`�X�|�?�b��&.���P�B̘�f^�K[ҹq�Ho��U�c�VFS�Yh�u7���#7��XE�1Z�H	ks�}-��T+���֘qߘ]�H��a�����]Q+�[[�S�:C:Uq�o�x�E���%��2�ѩ�_m��?�hѳ�zz��J~a�5�S��l���ip^~_.�����饻5%°<ѩ�4�|������u�5��dCHk��UQ���qT+"&4�x%�0���6eߥك�ϏcY���TB�װ�� ��ڀ�O;ʮ��H��o�L��V2G�N��������Y�;���I���1s�Jٛ?��&b�s�2V�(��d9�t�=� �D�v��&^WI6{�{4�޿R���L��Y+�;8�+ᆮ�&?s`
�->__�C���=��&�u˩����!mD�ۏ�W�(,������u���,/䅖m��=�:E�@?
E��Kݻ�gW�!����m���ۏ��ӕ�j�F�U�Im���1A7b��/��s���;'��Wa�%�@��L��ǔ���2�nv���M���o9	�>�f���O����q��wn����'��]߈���cG�ǹe���ט�kr7ih��Y�c�|������_�(����m�~M�>�Ƕ?���0�e�[/��Z��������bW���y�)p�}��o��?ܷ�"��I�J����e�k����ǀ*���sVTD�>ɵ]��])}����쟆RA�5��_�������ɸ����P/³��4�I�w
YI.Ji����qpQ�ѥ��6n)y�ZO�*e �x�����У��Y-)��(��� U).If'z���??�hQs�8 _s�"^^�CP@��]l%��� �Z��D#ZcD%����a��}ijÆ�h�)�Oo߅��q�\ߜ��G����3��e�<&�i=9�y��l�Wo����0 �
�o��]C�B'D���l*ޅ�a������7-6�1򀔖��Y���1��F��8�V�q�S)?4����T	r�9�r����Ԑ9�)SO�� C	?m$�����!$�{\
�I04m���2x�,�����#���k�V�.\S|z~�����d���IO!j�U)Lep��a��o������F�<D���Vb`���'�������fE��w�&d� +M���ϛ�v���C��
��>�&h?٘j�|:�./o����>�H����⺘@�����ף���7$��15����1w�K���\A~�b�>�&u?ݘ���������b�M�h�5V�*����˗��@�j��ORb���4��O'ti�����Rݬ���`8�wC��,^x��x��-{k�׽��.����X '�d!��kB���ƺ :Or��۷���:�$��5xs��2��y-m�����o<�/�����'�d:�H���EG!i)-�Ǜ��.�_�*ᜬɦ�z�T"���s���=��w�Ĺ?^a��E���`�~:>b�F�`s�דT���Օ�E��i�욽����G�������.�i��܁^���W��77p����,�>m��&dZįM��F{��ܙ��1]q��Jb"���,�x����w�� �R�k�y>��pIKs|9�o���YA����q�0F��i�L.����||t�xϧ��4�ٕ$���q��2j��F�TJg��|:��};�N�i�Ii�,�x\�-�C�8���x��ˣ��~�N�� c%Z9��i���vh��u/8hU��t::f]��:}x�[��nGL�֣��2�0�eq���<o��O{}���������B�̉%�1�~S	i4�x�$UR�lq��z:�M�T<���s���]����?Y�Oa��w�t*���Y���t����G�IÕ/������2����/�$И���N��흑ж�o�6���){��-�n]�lL�{͊����,��%��A��h b��5Żŝ��v_�N�E��o�o������5+j�G�ڷ��?[Pg��q,6D+���yP൑�'^���9��he�U�M�v�.56V����<�[�9@8Mt˸�z'�3������>����<�rG43�ʁ�"9{���^�c���a�\�����6�~�?���:��G�����(�+��*���{%�1iە�7m�����wky�0�؇��<�x��:�Å�$��6���,���?����͵����M���5�g��T���[}��W�"�����s����0�4ԣ�՞����5׾+t��1����� (/<pw�]S��.6�IVT~���>�һ<�o�G�W{Jz1��P���t�a���xS����~��=0����	�E��v�i:	4�ߡ�Ϙ�B���Mf#�A�GL`��ٵ��(�4�!��=X\������k#�k_2v�����l�fx�s�K�ڪ�F� �z�?��DLb��pB����,�?��<� �6\�K�n��E��O�ym���ǘg�F��y~�=0շ���Ҟ�ɈR�!���3�s9�:x�a�}�:���ьs!������D���T�E���@, ��S�B� �(���!&vp�k�Ճf����\ȯ,� �[���BF/$�q<�6���p�'֓*3&�7���a
�S��׾8����v/�>h��w����̓�ǥz����_�Ӭ��3L��z�.F�n���0�5�>�a�۲8�L{Fn�X��oWW_��fA�Bd���Й��/\�ݹ|q��	~�C�$����ֱ�E0���A��s춛��(x 0Í#\��6A�۽('A��� [�������;W΂ /�^�7,����� f���r\9o��� �o��o����vw�_��_��_��_�������������������������������������������������������������������������������������������������������������������������������������������������������������������oy nfޖ[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://rifidgqwq40m"
path="res://.godot/imported/ball.png-fb9df5c9be0e37b524e54bd6b18af1ed.ctex"
metadata={
"vram_texture": false
}
 GST2   �  �     ����               ��       �Q RIFF�Q WEBPVP8L�Q /����$ř�/OD����۝��}w�ݽ��>�B�=&��i���;�B��p�~�gEu��57*7�Ј�:�BK��>b���MӉi���/z[b#�a�t����b���'T�5� I6m��>۶m۶m۶m���m�~��\k
� �t�nf��2��ߒ$Y�$��_������{V���Ҭ�S������������nD���nE@P�n7]�N�s=��]t�u����8�m%�X�4S�?������?����?����?���V�� �o�2C��Σ�Q0$		�I^6@�#�%����|�8�7;F����x�V��);��FWHIIY��7� 6\�q���^�M1�h�7�D㬷�b��5�B��3�H�xe$7�9s�Ζ;1�\?R2����S<kս�W^J��d�d��s`o���[l��"*T��^�J���v�r%K�(D�-6�h���d�Q���H�L2�"k��'P�h���HW�D���;�J�i�m1�L�y�����H��<^b�;��^ݻd䬍fo��F[�_��UۭF�d��X`���r�̑���Y�������{�A�^Zf�HDPApxFj}:�{��|�Ra�e˅;v�8�4�hsm�U�r;�C�4[�o����࡟Ad��-[���x��N�2��ܹ�f>oe���V��6�Cyr�Ƒ�!�]��
����� D"�<��BKE�E���x�[߻��O����tꤧe���APb�EQ���{W�eǑ3w�e:A(r@�+�����l'�V��G���� .��0����Q"�����Q�?t1���s@�DF����-���L���J�Sy�c������"�`��]W6�xc�8y+�h�i�p�`���cS��=�!���o/3���^�"y�ċ'��OG,��L��m_8$ڿ��(|��������>j\��G�q�f�q�H��r1B�4�����-������>�f� &�#W�]�-0�'7�셸EC�E���M��K���w�����[�Ё�lDjw�����0l�(�~��L5�@2�w�>'*�<K�{�M���|y����o���ݱϏt��>����!z�;�B�
��s�x�\xY-�Q9"M6�39٥ |K]�d�)[!��j�l
3�vNPD?Ǣ����������潽����� (��A��5]�rU2l0�XC��0o���𖖏��$�����^�V����Foq�"�;
)���1��/E�^����pK$ٯH�9�� '�/n=�C!m"=��f�u�,3�;'^��gw��:o�� L�:)�襢�ca��	m��Ăl<�D<��H��J�^��̸ӭQz�B#S���s�e�
�K6�pv�><{���	y!#�b�J�jg�
�!(�t���,�1K!2R�c я�! 8&
�X�a6��F�����(JТ�'íP&�#x������/���� �&S���\��� JW�bF��u�Q+#��8ʇ3�V:��I}���CDP���s5��RU���j���w})9{����yq0?��s�,��a]�._Y���!����8F,33-��	ό#0��\��#6���¬�by8{�ς��v�9�T�Zif�����nu�|��[�G�j�&rg�#�(��~�U �|E��+��vPǀ��c�#9l�%�!p8q����Y�h�������nб�~KD?��	�w�O��-�?w��`���B~2�reXɅ#G��"���g�����.�A��L�L�L�LD���"�^�/��tƧ~p�n��/<��V}������pD<B X��z�ui��z��~�/}�3{�r�3
Z�!01��`����1��k49�/J��:�)p�-�Rm�a\s���<���fȖe9�B)�y!j�"�oq]ST%�`�iY2�Q"����'~��K=����P����9�@��^����xf}��#��M��Eg��c����.�lyY�\�1�����Z!���#9{�l�K�)�9h@P��9���6ߙi�wx 3����%2?�§�\��[*Bv ��lb���q�̔�^���&�{��jj��,x,�v��N�ǩ(ջ�{��8Lv*�4L8f���pD��`��KFA����dIv4��Q	���o���rr4�s�N���xpq �q.{�Oϲ�¿�
�D�Č��P�E�3�xKw� ���R��QPS13�"qX��b>�!X<����Z�'�t�����U:�n�D�祖�fFܑl^�	�N�?=��Ezet��a6��c����]���NΉ�;�ĩg2W6ZQ��W���^����G�A���9�oh�c-�3y�����cf��Y��{�[�s��;�
��)�[�B%�eʴM���D�S.�n�Q�3��쬟�q�{�z����2���^'�w^hՂ% /�4���$WN+�fF�5ˢ����D5#(he��8i��̞�*��I��p0_�Rk��"E]��⃞��������#j�+�����-������8 W�tk���w��R�]�4z�i��"�U�-?���P�S�֫]�V�=�Jm�@�Î:�V�������p���h��k߈� @�b�1)�С������Ȃ�x9��B�U\~�ֻ�}�9�P$�Hn�� ��n��{x�V@��ƣ�2��.���a��ҥ�{�|�攳v��,\�t�~��s��L�X���F�z�7]��!D�>}޺�W5�D�#_�j:����Xz�<f �����*}ŀ��ef"����j��	(�2��q"���2�o*�[7�������7	(���۳��a���4i#x�⺗��25��ѭ�K������-H�k���v�r����՟��XJmn�*]��.Q2ZѪ�3��W����wR�Ƨ���Pm0��ר\�GQ�o��L� ؗ�`{��͑l_�l�G�{�E��/�%��#
�F�}�E��=��k�=&�b=z}�����z�X��������ʻZBt��/�*��
���yMU=�/�p��-��V�������׍�[�3���fv��R.�x�n׌�^r�.�A~���E�\����^x��=�I�_�>U.}��/5C&2B�s�������X�y���_�@`Ҥ��������������ǀ%2b��,�4X=K�LGGO�H���Z�6���a�No�⑫�ʓ�SmH�=�����0���4yUG�����nh�d@PM�x�b�c$�O3�z+�1L���yq����oN/Z�>���Ze����Hk�gA���c;�)a𕽿���N�>�z���	�T���'j��-L�x�����+�*k,3�2SL3�|+�����VZb�y�[n� $U�xyR�ʕ�[�_5G�@A�E��,�E+S5��y�2v�����=2�d&�n�ՆB�|6�Rp��r�s�/�qd��^gܛ �˹58;�� �8x�"x_3�Y/%�����R�=Mu+��X�t@�K�D*�Sݔ㷕�'?�^:FZ�B�v�vF�4᢬��4#8�5%=�@ p&<%-�V����/��pޗN;�]��3/�z��N����I�&��m��6�)K�Sn��-���V�`k���U9&ݮI�&˧��1�x��FzOu� (3vm.��q�{�q�`Q��w��
7�@R̚qC�߯��3�B�m1���(B�#����"`,��8 i��2;��%
���"���k����,=�����6:::�f��ß�y�Is��h�%��:u��$ڭF��N���n��+���v�Q"N�b[���I�@���.M�p�B���B�,g%��{T(U���7^R`��;�Se��Y)E�b?k�G`���t�)�����A�36I��eڼ,f:��g��|)�P�&����װ(�!�B��U?�7e��iͷN��9�E��̩���3GE�S��CFG���L��.*��G􄗒CMPz}T�J��'_��������[���B���9'�^��+��f�VY#^�T;�
�W�TIQ�#av����-�,���Zk�U��,D�}�;(�	�]��^�l�I�0��m�*F�S���#�1ٲ�q�]�t3��l���8�=�x�&�j�����<vP��E�Z�2���%�#@�s`�+{%����;E�e�]�*��&c��v,_�C-�G47��"(��ۂ��}cf�f��������� T�]r��O��x���tL+^�N;)E_Ӭ���DF8�t���U!�?o��$�&9vJvN�P�f�΃��5y)!1�,���?9{��b/�ly�bˑ�~�&%'�z�)2VddL�m��
|*D�T~B,���P9��;��1uvz��	���{+̷V�"�����KE��7���2z._�ݚѰA�^׭�)�(��	n\�}�P���nq�)V�ά^X��ë��%F���]FP�o���g�ό�<d  �E?kGǆ�{����n�͎xSw��^��4��G�ӏ�l5��_�`���sV�4��(�G ?l��dXg�	��IY��Ud0[�8�d�Q
�$_�r9��-G���P#�^ْ��C�U�ŋSj�L5�IqL�d;E˕n�<A�eYh���k,{C$;"eE��h�V�T�B��l�#F�,g�)r�n/�2#�:]��~"}����Ng��I`�.�g�S�:.&?�ڦ>C��.��²�?&�w>�.����*�XCH��n�S�07+��b(�膮w�q>\60ft)����A���1sD�0��%�l��A�\�wzY��=�/�Rc�D�P�wY��+Tk�����+�qqJD�Γ59	����f��&�/�:�
$:*S�h���D��~u�{]Zuh��a�q��D�e!�(�H`�3R��Щ�C�<��GD񳚷d��'O��b-2�.�rџ)�aŞ��
���56�T.�1�J�Q���]3�+�Zzf�z��b3���v�G��e���P�ި֍�~��;�H��(���y����=X|֛�!F˖c<'w �w�m�VK� �a?R��#��B�����z�/]S4e�z����4�$�S�������
�$N�h��)�O�J���B���Fp��&�N	Q#�z�2�&'����!�qz}Ц��K���������@`�3�Pi���48a���W���l�U�e���2a���b��IR�\l�L���e��_�B��u�E]x&�JM,�)TX&J��g��1RJ�r�s�@��]�� �L[����?�DP78�L�i�ȸ��	=�ɹ	��&F�P��,�L`��o�g�{<%t7�u3��z�X�O������A/3�v?I�k� ��
���d�J񒭵Q����1�UL^����F�d�%N>o�%�G�'�	L�4^z�M/������o��x*M޹GK�H@P�^���O�4�eY��^��#%���r�R�PՒ�
��3	v�q�O�Ŗ	��:*Ft�����(e!�2��7B��-�22o~B�k:�Q#��䐍��R�̋�N�_㞔���d�����1E֙J��&0Iw�b���� ,΋T���h�\OL�����m;���;}&/}�X��D��o�p��HV��8��rqv����9�}���H���=�_�i�ŝH����L8R@�����4�&�u�����ɑe�,��œ�~yT�R��[-P�r����G�@�	B���
�OOX�|���48"�f <���m��wE8 01/�����n���ar�Ύ�������*u�s����]re�d" �R��c���� �:�I�.Ӊ͙6f����5�;����i�J�"m��n>�D\���<>��D�@s{H������Y�g�ԭI�[~��3�����P�V�����m�$��ɔ(�*�Xk;o1
���%�Yyj�P휓���_���#�10≇��_ڽ��G$2j�����yL���!em�R��%Ye�KR��m:�vi֋�;#}��\o6j��S�
�n�����Q q͠{% ��.�Q�-<�p�f�Ȋ����M�!!7�
Yb�E5{�zni�<0*�B���������\%Z��9he�G��n�8���L�q�a9����/�)��ĊÖO��T)��|�uz�Q!�L"3�^=�{�/\P+�>��
�`!7�ٱgÚk0d�d�W��Y����aH��NWRCƊ�@�X�0�;c�sh��b��q���c�Q���;��֢��������J��\�`H�Z'C�Z��$HsL��hJ͑��x���bW�Q�*�� ���.�hWKDf��g�o�P�t!�6�F�Rg*��[ϋ{M@�K�R�9�DD��]��Psm9�`���X�J �[����V� D'-��9|M��NHuH>��1�)���9[j�0�Zi��Y�^ߘ�xjm��Y�t�6�3��ͬx�d͆���V$d$��#k_����ϗ������!/6��P2�&b�I��*W�}~u[-}CHҬ����_ޖ�wH����A�!ee�8Gm.�^�*��@�6��L�^7q����6��_P�.=��VB1�������s�@�T�0�.�6���!b8B��O�M�a�^��e��9z�� �qF���E&3�3��S�����K�ş�,bG�џ��V*�K�&�D���;J�5_�ṫ��+Q2w�9h )9))9IR���[�gX9�Q����Y(O�Cny������zDǄ�q�$����G�цBBn�0qv�"X�^R⽷�zq>�G��z\,�{�$;L@��N(���,�X���͞"�^6<�Xf؋�;L�1�h�y�G����.�X�j����j�==
�k�ME A�{��������:'�r��E�aM��`��
�+��!�D"��/��fO��O2�n	;��cHII1���R>�!�`��H�c�Y����:�zj����^z^�}���x�Mͻ0M�X�V�S*�9�)�TN�/�u
B�Ly�A�z*R�(����2����ۀ%��$0!���H0N��ܼ���J�fk�*���C�:Կ��6WKf�<�u���hPe��1mJ�F�鱚����*��K�p�Bj8)���	�mS���D*�5�6s��]qQ�����CJ�����ʿn���V��H+d�L��r}���e{4�K�TX�n)6�c�q����2�
�
��M�O$��I�c��P�����af�Ȓ�% ����xo%��t!����'��=����f�-���zH���n�8y��n���.D���:�����{b?O��d��>\�b1��t�0�]�y>���]�"me�-�HNBn�q���P;B������kW.�;ng��������`vCJBƚ)k�Y`��~����(=�S�U�b���aH�c�|�%ٯ�Z�̑�>fm��Q�@;5�();�IX�3��U7��#�Q�������H0˻���~<E�0��>��"�z��a�CQE�:���K���0�K%A�r�F���T*�%[�T��B29[��V,�T�1���N,�V�|.�_���������Y_�?U�!�����!�4�eO3_�o��~5M��B��Cn�ŶIQ-�Y�b�WJZ�\���|�Қ���ἒ�����	u����D���1�$� '��[F?��H0��"`�m#;�:f�v��&�����R�{e�}1������G�O;婳���8�b��H��¼$��7Œ�Ǽu^��9�aOJJ�y��a�o�!��'%%3��i����m��(�`	��[��X̉��3R��T�c_01��*�~`��0oX�yۣ ;g��z����"������(���%��:a^�LJ?vf)�C0������V8��R�Gs�=���g����y5����P!^��K�[�e.9	kcLW.�2'���¢��%Zœ=)���×��I�`���U��e� �)�gB��V�m��b ���vX+\��$i#h�g��,���Bpfxi�:� Xꓑ�� A)/8��콼p[��)H�q�w�{]�$J��\\AQ��k�o�yd2|p�:]��`�h� (��K��e�OS+�fb�p`Eb�Y6�/�"]���v��K�$4�@V�e���{�Iu1&��Kj��;0��-zJM��b�}���C�V��xKpN�ߨ��2C��X�-��3���|�^A��V=�\2�C�ł�?q�F��l�"�t���1�zۍd�E�37��v���doв;�C��!+���QS��N��}Cԡ�~�y��P��0r�/A��.☴m"1A�{v��i$;2R�o��n�%��a�B�2Rí�;z��������r���b	ksm-T�C���"x`�|�X�=�K��T��..� t����{r�T3GS��A�?
�?Z?26�l�a=�ul,�U6�7:F��+��R8 �E��e�!��&�gp�:/�f)Ι�?��GJm�H=��t�f�~�����j��|�)��@�!%5��
\�̼:u"-�U�TC���2H�2�|e��S��,������&N���_�\F�9��1���1���*C�c�Co��jn��F�q���!X����kqrf`�KW-~1�@�P�Nt͡�.�ZǱTR�i�,��#�p6T�=���ܲ���K閰3
CFJ�O�÷��;9)��|�Wb�f�p����a�(U�` ��J1
�ۥ@6�˖K��|p�Q
9
�ep�E2X`a]"���>ǆ�Hކ�n��ժ��j���1��������3�K���$�� �s���S����HuJ4o)*�%�p5�^Y֨��3$�dS�]�_���f��~�o��[��&���=�cPO��j��|��BBf�L16��-���'����H��ת|�_�8�Nmz����(��0we�>�׺�i����@�~����Tϖ	ի��&���X;)!��kFt�U�#Ӥ�	��N�,�e���$�1�Å�|y�y@��r��B��23����_ć��[6 ��l���Szt~*�L����a��<IX�%����2:o�,�8�k�П�'Y�@�G
�g?��2ŌI�?t�B����F�i�f	�S���J�M���2���z4��~��/%�.J�a)���B��.�h�;,��X{- �p�![����L�����)�&�I����A6��uX�4))֖����ҝ�g�"h�B�N\H��g�}���2��*�����07���y"(��_���P㫿^R�M��j.wK5�)k6�#���m<�w�m��7�����;;����r̔X_������!�D;d!)�/i�,r��H���=r�z�8���z_~�q�����'�.�hg�t�D�,P$�gr������Y����%�8�ثH# ��*��7����	�aD�9��V ���MrU�L���k��g/�r��F"j�F4�]p��2��:��)5E���V`�L�-J�;,��A����2�P1����h��j��>í���ҧ���r�!#V�M��v�E�����i�$�TG�R�cx jƥ�T �i~]܋��2��`�C�s�l��O�.w+�5�3�u���K�1�E$ꭞ�!�$�1\ӡ�=�olp��q���g!))�D��؟8�3G����p&%ż���x:��o�b�Xa�ÞMC�V�?-V)�+�p�E
U��+��||E�@�|Gj�{(�����b��#�9&���"�-6d��7�i��P���Aʢ���r5P 1`�]Ƹ>z����V^��L���s��m/���
d[��^����'���&m��
��(���lQ�~>���%jEpg�a%N�uRu���x	�i)�s1>��B��+�$&��X����(ã�9Z��L���3/n����jYfpтⅿ��#23�F�29Po���˒�@M㴵>'h��-��2����r�����=��,2���?�xuAFʊ�d��a��Ĉ���.���5b�HP��/V9�L����yX<E#¹�	G�WD�PM\,��6�%������*v:Y/�.�tOE��� iE=�*$�\��9@�d�F��z��h�!�$쬕(�8z��w��|i���- �W��G���8�ԟ���D_[�@����n�
�*�(L�Ar���@	�	��^�tCv�y1:$�P�8Z/߆K�23��O�6qtū�q;w�EE�ɞ��z���~vL�J�D��F)_qv�"am�M*M��y4s����yS��g`��Vn�mp�$�5K�	����$O~�A�.fj�N��D�����Ai{ÁR�� �p��^+w#�d7��U�M1��{q5�&�h�()P�<W�C wl��阝�l��2R��f;�����c�������9�5��d}�AJ�1F�:M���5#��A��F��Ka�H�I���E���z�qA����G[cAa����Q"A4\��1���1Z�1�?e8GP���QL��dJ������רo��>lp��g{�	U$��O9R�c��2r��N�w�����&
wP=q i���$�;��㜯7,qOG��˽�S�\C3%��cLL?�����Sg�7C Y"��J��D�R��W�9���a��@Pb��c�f�i��d����h=+G��,�?�r����$�p����?����.F)�� #�t�P�q8�{`�>�0d���%�)-�GC�;�Z�M6م V;!T��1�o�x�jAh9Zn��m�F�"�%CwQ��K�b"�
�iBt��N�Y�P�e�N��L�)�/M�C��-�7���g�U�B�^NM*X�q�ҫ�%4���.�$H��J��Ag�l�,�N�A�ݴ@�ALi�(�4����U,�17��Y�yw�S�y+�%ů1w��CP�z3�='�^ٮ�:�m���
Y6�m=�K�B3�u�J��6�#{e���wU��9��{��b(�L���t�-�ۼf8`�)��C�N �c��P�}�� i�����ɩuc�uou](v�`!�$��ڰ�G���
�Ip��O��ȵ��T�Y��e� �Ӎ��-��x��������kE�I7L'��	7��h�Z/[�[8Wy�����ܐ��:�	*1(;.�{"[�������K`0�\�YǑ���P|����@�x�:�FN��) 0��k�WX�>����I䫌��ǣǚ���̋}�8jTAFBj�՚�f�+�6s����0�2��!��S�Η�с�!���:������z�Do���d�j#�Hf��>��P	������k�6��> �5�q�(�O�1��u�2�F�S�lSćc�u
͢g@:������C��<obEʆ�}����D�[�@r�"m�O!%�Ɋi�ha�?�c�F4��K����u�Wq"��,�FH/��B@�װ�P�;&�J]�`T��\��3�)�Y�|�&�*@�%x��ޯj�]2�m�	�� �i�ϼ�o�h%�V.�	k���K��k+Dx��@�5N�f�2t� �h��=
b�H�ՠ�z����F�'"���|e£ǃt-���N���M~.��<����5O��%�D{��� �a�oc�H*2����a%8�_�����n��H��`�2���X_��֝t��? �.���)ak���跄��S� I.�3���8NF�[��$�_�P�0V�Kg��]���!7p��$�9�H��X�7	>t�t��do�p*V1�'���G��D��g�A�%��J�+|�e���ڃFM�_ =��=�N�J�	���ju7��W.�D,���]���tQT�g�� o�����֏��=Q�%�'Y�0CHy����ڏүǳ�j�2�l/��⷗AFf�Z��{��a������X�v���>ow����!{p�%3h|��}0��u��$>��9,�̹h��˱�=���>5M��Eb��xَ1vg���{[\fq�vA��"�&C�IL��{)sKG���(W�/�[,�-��P0-S(k�Jlt�A��mSO� H���VA�l�_ባ����)B�b�LCɖ��΍`����Qz=�4۲#���}蘴���i����`�t��4�ӥtϏ|,܁�G��&5@�/[A����/�xRr�֊V�;��y��8.�;B�r>��x�m��D�੘�!�%�\'��*�g� ����� � ?Ǆ�B��}
��K���(��c>`�=�I�;m�?�Woc3�W9)����"���i�˺��(-�J�Ƴ"�U�;�F씠��~\��a'��1g(����B9��7S���O��Y�8�ޣ����clNRz��^��R�݈�J��K���fR�i�Dz���{�s�9�Q��4��`��jnf�)��0��"�l��g�Bt���Z�<� �$��J`h!o(�{[G�j�*��[�_����X�d����\]���1�cA�H��C ˨^�X�Gv�䭐5��L!����K	������k� %%5Z���3t��/�	ki��J�;^�$�YN�=���Xi\$"#�#��� [c�6��}c��i#�Qb�r�Fգ{#�wă@�,>��W��ɪ�N�(E8�)Z.9�R���|���b� ۭ����)���$���/��$�)1B}�k"?q���"<��Z<�ӆՈ�0fg<���l�d^Y���+3T�\_I�z�\ѐ(P���\e�"�:��&�C�2�I1F�(ŧ�ۧ�aA��fO��j_��k5�Ӆ�Io}w�".ɰ�8֎� ]�gx�5�_�2PU�	�i!Lȯ@Ղnc���4�T[��" �Qs�x(��#�0��R?��yö����L�0�h��8)A���#a#�6��LO���W(�/VA`���Q�!��S~�8bX��,�N��V�d�w�n�z�ѣ�nR�a;=~�q�����Jy�.���b��@w#^�?,�gH�+��5I/Q��8�� Y�A���t������E���ͪE;C_��;�#R�1c����qk�R&mG���L}��)c�E�]eMo�L��������"o�-�<vљ9�b���Y�U�:����h���}+��rB�5�B�U�TՈ?��t>GN���σg3�r��/-��K�p$l��P�Z3��~ea:�E��|�n�a30��_�:�B	��Td���_�����W��3DۮB�9z��Q[�Q�J��UQo��� �aTr�k���:[�k8���_��YU����=}���K���)������h�.g����iC;�Ak���@��&�B�'�R�b�xH����G#MO�2�], �GD��8:�~�a�(�t���F�N���#��g��ۀ����߮y�\�Z���Z��F�����3ʉ|$0����?1j��(��GT̨�~� ��˗�2�����X��m�a΢Z[�;֕l4�wa�L�Są�k�W��&3��L�`Ad-pF�q�kF�\H_�~���������p�"ْ'W����:��!y^�`�J�W@�]�a�]Ё����&�/U�#��$�\XP{w�~�zp�O D���e5�-���h��8[� '5�.q:����`�����U�F�_ۃQ7�\��џT�(�k�c�[�ن_�"�>" ��ǭ��f@�Y8��v1��垚���ƛX]�U�*�L�Ev���{Ѵ}Ed�Z���R��V:O�Ѷ�Ɍԕ�e�����'��8v��=�2M$��[��)d�8Lǌ��ZQ>��[�7�z��T3z�E�2�>�6�?_1m��]'�Ϊ�롆E�~Bp4(Q�'�G�Ԓ�|&��&�$I��XhJ��'?�^C�~�s� 5^�g�C8���c�dVE�V��'�!�B����;貕
�.n�2��)7��GQ2����t`u@]��%�̵�^,ǻa�X�E�q4�.���hd,��{sL��5�F+�D=�[�4�-k�bJ��\G4�/��@�/ ���؆�����r]J��"�����J����PZP z`{a92�,n�թE�lA��IM��lo�C�qd/^�[䆪�p���d��&bH
��.J+��a�D���;����e"�P���k����jAfw�9�Q;��`[�X�@u�x�#��*b�!
T:��I�}��1�6���C�KΆ���E +��p³h"�x�>��ve,~�Is�J�c��pD�<%��l��6�F���≙�h�&�n�8��fU�D��3��@��B�����D���A#I8���u��~�?����/�Ij��E~��̮�*���6���|���;S��@� >� ��(��5�8#՘N:3�RW#b��������DD{�A\@ �T(��M���>�6���i�"ű�d�2��T����[E�m�מ�#��J�ر(_���m�J�q�NՃ  ΢,�T�ݥ�����-��Z���}������q4�w5�XP���V�W$���1�6
��$_�dd�H����Ql�˫%��R���5�b�Ś��R2g-S� �e�ڻM�����y���s(��.eg�J#H�Vap����5�9��"�M���QA��5٦z��j�"]�jSI�:h�nz�$O��d���~a�a-���Y��f8�l%B|�k<dDZT��|�!$�X�'=&۷��&�fR�Q�_���Xo�-D�kk�VO� �=F<��%�t4Qː��o���Y�1�A_�K5D��8����j[��W��h�E�!��qL*Q��޳�d�a����1_/r�_f
!8� K���g���*�@i�jQ� L`= �Xdh����~���KYbm7��xٖ�uWo<�ĵ�zoMY�w%�%G�D��6
c���<���Xl>o0�N��z`$�l���o�|ӖE�T��q�qo�����7�>�C訛N�_h��O5+vVH����3UXPW/�A��@��#��aQ/�:���˗��s���̘aFP��"=�A$�]��!�*հ%�����R
gfD�j�)f�~ӑ�ET\��H��X_��s��pǘ*�d���5}e�?6�@�@�M��q����`�L�H89�O��������(�9%DT= P�r�v3�Vc�=DF��-�o������A��lQB$t��11�3�j�c�]��!�P�)F����ȴY+5��x!�)�˫U���:���o�!
�6J0��q"]��@mt=
Y��A�#������`��8���"�,�ۿM$��P�(��:;ի!{��*Z�I�b[�v9e�R2���M,c�C����%�������c(�-b�c0����y���h΂S�;��LM(}�ɶvP;��݈%�i�0�.:QW_�,�� T@/CwF
4^Y�G�=bT�G�M�54�;��V��(����C&��2��Z#�+F�`!j��g���2�D�C,{x�@���h��E��ݸ�G�ﲆ�_'�e�5��(���!bK�8�6�ɰ�.V��RQD�pȐ�����4�VI+H�D�jM3�T�m�����x2����(`)���l����X�lHf�ER���Q�}q$�r�j��^p�!5�D)Gŗ�:im�퍳�E��1U�Ռ���B4��ɉ�22ٵ�5�٧��6�0��%E��m�Kg�	O2Շ���ХT����26�?I1����:��j�/���� ���=~��w�/`��)Dqv�&���xa^`�5���7�7d\e�P����b�H��&���l�']6(`-s�� P��,���=�Q��۸?�xlIX�,�+���I�)[��z��TA�ڽ������9�2Q�L"�����Sf��O�V����P�D���1I�'��]<��-d��@���{��%��v���ɯ�\�q�Q�ռ���}��J�� �����e��(���bF_;e���Xl��;2����6�����<���zilX���Q_3Y�-%�t¨���z�^�6{�I@�	��yV���&)7\1z��5D�&��e p� N�t��C,�l!HV#�J�eZ���@�/�'#��z��Yn'U�W���sǈ�'Y	V���S\�q�� �#J[���5`���FK6c���c�*��#>[�vG�� [F� PM(�T�gD�� o4���IMS�7f4��pVG׳�?g %1����L�<�c�AR�8�v�5�Bv�r��
�-�i���-/��/�ȿB.�ub9� >Y��hǈ���� ~}:R:ZߛBT�����[ǗFWv��x����f������V��	�$�x_3�H���3��h|?ෛ ���,��g���&�أXZ�ku�����j�ЎG\둣�R��i�H�b<�<���k�x+����~��������j�Q����M:��K��t ���ao�Ȏ�K�E97��,��l����D_�O`F�	 n�D%Zΐ)�ѿ2�]����$T�N����4R̚�chb�R�
��4�T���|�l��[��Su��䘓>�l����Y) 3���:��xJ7C<��2(Ψ�:m�P����+̢|A�AB1FJ5����AϤ�@��Q/���:2��M�g���+�U.�x�3DEhm(�z�(�nn���X�r�7���D�����2$�KD�A��	���!C��
Z�8,P
)�uB�=�5Q8m�e����dq�f9�͢B�X�����*�{J�:�3I_�uq �R��'�}�?C�;��_}12��Q��B�Ԩs(�g�ם�-X|iQ�8i6`8)��A�(vL�f��J��kπ�����Z/F�}D�|̈ֈ��n xP�k�K���e�9�����&)�C�VáP���Y�.���~�ak�G��[j������8���q�@~�t��r��a�4�D7���TA�]�0{)�.K_A�,�U6X<��������M���v��uUZ2�%rD��a�
 B	��U_���L�?Gl�Ê���0kM�(���"�W�䤦���il���J�����T��v�B���N7oCߖ����m�2L�ㅍ`�쀮�5����A* Z,8���P{a6Q�cҬƘ+���~�5�?ޭ��={+=�ЇX���V)R����a��C�� @Pq�*s�0���jȬ�7~��Ls�@�l��-�W � AUxs����Vb�Ku�;�u�dLט����t��[_���b�}�Rm+^RD9I'�1�v�ӨE���B�Ұ���<)<���c��1��1���A@U�G=�V�%�
*��V%6�Ț-_��^�'z���1\����?oYl���b���31�.E#�
4� ^�j�j�R�ԡ�5B����_���+�U��b��g� xzp��`�:�Z��#�I!3R�i��s�aC��E�{g��Y��	x�@eƓ���I��ի�@�3N�r�p n���ZF�RTOu��vב�b.�o��uu�*�n�LD��#�l��2�LW=S��t/�ǾXJ�b����%�����+&��&U+��R8
 ��@W,�����<S�F�_t$��6�N����'�(B �D�r�4�!ʳ�Q�Hg�g�W���h������w� 5�V35S�j+���O��r���Ʈt"�1 ��Sd�:	gQ�L���9�Y#����C�рO��Z�1@�(D�'�-q�5'!�f��̊��������K�B7RIV���N[46���^��\�ӗ9�	t�N����K�Xk1۵ɣ�͞��xA�$�GjXP{h^�:��`L�$�)]�S`&�?�,������"d�� ��x�4Җ؀��O����2"Ujm����@�U������pF=��^�U?�	 �g�;��(arF^�r�Fb����rx�X��/c/Bs1τY�1I�D%X˜�'���{G��%�h�k��p�P�-����
���a�XK�n��w�peb���R^����	��B�2y�Q�~d����bbuX�^���L|H*����{$���[�G���Bʸ��>*�1l�*���̒���[7�P
�2�ā/�3����2��j*�.B��6���ׯ����"'͐f�0�]�	���tԀ����`�Zn��%���l��=����\�A}�Ē�@
�#���:�O�5��ȷ�J��j|C��QH2����u�6*(2P靗c�*�jU��@YZ�q�(J�?4�Q�N�*����:�yao����NmMF@Π Qf!�5�za.�NaJٰ(�NG�絍��Z�n��Y�����=��H�^�;	6�����ǌz�:,h�%؏��yHR�:�H8�n�����[��� ���@�����|eBT���lQGz�ˌ���!���{F���s$S&�.F�~�:�9�#QZA
�:�H|��u�p��$������üC��/�ߝȬ�H�V������L��ⴙ��V�"u.��C_����Y�S��SHG<�C���|0�#�XJ5���C�r�����1Z�a�Q��۠v�h��ʺ��әp�D7��d�\W���R�@��2����
h/�9��6��&[�u�K	,�������OO��2���N�������5�����?j ���nz����,�0�(�pT����u7D)�y�!�[�0KH,�ำ��u���P�h h��T`�Cޯ5OG���4��a0$;c�ŀz�o\�-�S� �D5���V}V�d)�g!�2����yp���]憸�5��$;KL�#1I��2qVQ���D] �*��e���S�����M�o�	�s�6ȶ�Q�ʑ�Ќbm��G���Q�ʤs j�?�������9���T�P>2֊&�(\��9�)N�٢�6 ��������Pi��2�+��b��"��s��� =(���$�oy�$�s�� �桱�R���Ǫ��gQ��3RQs��O*�V5����E��C�j@�CA��́O��)2|d�.��%s!`�֔��(�6Ш�Բ�u�rm�+Ί�&�_F�82�vu_�� (HW�L�r&�l�S����x��5�@e �"a	��J6.~���F���z��� �#gkǂ����,U�1R��b��[�B��0�N"<;a���HDX����k�;�6h@�����3�Y��$���q�أ�����;@=�ѧ'��3���#`�㮶��]���.	�����C��`l�����m=��}Q&�97k����V��$����h�D�=:%�UQF�I�ᰯN�>��2�Z�M#�A��,�o�_����b�Q���2���$�K/�Vw�8��(h����1~�	�ѣ�s$�7X�᪸���P�1� ����h0�C����E�gq ���vu�\����=Q=���&>��'�a�:)+�f/�E|r� u�������4�� ����9q�滲�_ :p�?'Y��4���2X���pyJٜ_�q�d�� �����'U,��y�vp�a�E ��/�u��p�/�r~qC��F�/_���� ��p���V<4� M��89��bk+׭������7G��Tr k�G<q� ng�e�p��9��.���ȲĖ�� 0����OO�,*�:Ί���Чoޛg �ru��	��EI�JE�J�5�1[����gN��*ak�X�p'�ͅ�"1ZO&�~�ɧ&z/XpЋ���L�ujX�?��7� %��	�d渑�K�OE&bۨ��$�i*x� 0� �D�P�C�����"�5��z���*�Et�'
nǈ� ��5�g���U�Z-��ɞR�#�2aur�[.F %�3�wv�I���Bs�I�S����gD�K2���}���NS{�S�a�Po�<��l�50�@��b8�����>k���-Uc6tx�M>Ȩ_@��ƙ�
B0!zU��Qc�z~���M��f�!�J^*f��]s��0��[K��2��'��h�Ӻ�J�|y��$]�� �h��d���*��7L/)��Qb�4Z;��:�$�fـe ��H �v

��0\!�~eO�S�K=��^!��;n��� �}N���r#d�� �e�}�������Z �R���6���c��Ǜ&[4����,���}�zo����p��[����cD����z&j�MD�c�'��ڥ�l=��4}���I����s��b��fP*0c�`;�p].#�f�G�� t��"W0դ��H�lF�u}an��wDh�`��[��-�"QJa��t�z!�f�1&H��:�a�~'�������J��Z�$�Hp��Hŕ�V��@����V�&����5��S|�*�߯@��G TD*K�	X����B��`�Ϩ t�����i��uD�� �L�$9�q��Z�۶�/�f)�ύU�
�qIXI1�eԞ�z�]J9j��4��<ܻ4��)}���%�l�E��
�^�rn�X�ҒM(��$��v�WZE��/��5�G@��=V-����V�ɤ�e7���vZS���â�i���3j��L*�j"u�*��*g�]tAFn���T�V�&5E�r��u�< �a��-�sN!r��j<�{��-�qj~��X��� fPHU~���Q(���-F�2�J�v}r2�ԗ��bɌ�E����ؚJ�����1��O˭����:��#�`���n-�����r��G��g��Y�,��_$J�e��o�K2S� �\���.�Q:�أy���r���e|ʎbN�΂L"��;��pD}(�|�R�r�[ �dRTC�b$�R���Jl$�o����^�;�%�D��"Z.��eHSE'�	�&(:�E(��v/P�L�/'��9<��2-�H)��**�]�zFv)VIn�����a���F��E#�Z(�+���Ĉ QH�Z���ri4&e���<��W���^�|�'���TT��"�"���g���`lE�������Z���2��!ҥ��B�	QI+�%j�&"�B"w�\�,��D�*x� ř�]ny�vP:p���O����m��$�<B؍l��*�-�a>����oe0�V������Z'ƾTT�)a;��/' �//��tX؜����G @���@�x��dQEsٞ��B���V�&Q�y�T��da�3MLKN�&��jgu����X�����-s��o�������>#��{,^�I�[i^jC�d��;*LM?t���a
������s�P@�_�,tc�HC��HI?�Q�Xb+O�g�l}UT�>�wG�~�T1?Kɭ�2�Ǩ#�n�
zk�3���+���j#����|8"�(�Cs������_L�㤲G=��u���q��!�Ӿ��a���h>2��Lެ'��P�e��P o��$f	u�[gb,~�{�Ct���g1���(;q��Z��uE�1�vN���o�z��8����s�;��d-����A��v[Uf��e��V �e��Ҧ�g���x��Ox�'E�c:�R"/�\�){�펞Q'���?V�rM�F�Z���ڃ�Kdu��*3�u �!�چ`�Jq~�W3�7�O ����̔��eF�9�}�|���M<�q�J�
Wη�B���q�>����S#�*~�}���O�[�qq+�-b�	�If���b&�z
^ ��&���ց���nN$���B���	v��#]�� ��4��uѴ���*�	� �-�7,��F���G�mF�u���T%J�N�2k�"zy(b;¯#�o��^!��>PI]�nr �#
,fC徍�������_���n���s �+�4�hk�ҙ��Y�$��p�@�k��y�6⎉|�Ʌ��b��`6a`/ �b�oR6]^ɬ�f�$�Hf� �	y���usX�L�<�F�cl�A-�Y�S�� �� v��G"��r+�s��"��)��+μD�$�;�Ь�4��VIǘ.�I3 x�{i�^�{ ^R)�Jb�u1Y�UO�j� 5
��(>��9u\B�
2�W��a8(f��?��<���;ʾ�Da%"]�=#%1���x�]�>�z
�\I��q�`���ԩ��\!Fw��ɓ-�I:7�v���>�W�ѷ�#�au���"����q��q�C�9��7�=֨<MYި��� �^_:|v�;z (u�w'�f��(߈��{�]w����0���@3��w��be�(��9�4y�h9�x�5*=�yt�1�T�(���3�D@�5���aY�}����,�:��P�m����q^��0� � z�
(�(����#��OӪ6s ��xsa�E����X��d
乤Y.C@�W����
�Cv� 
�G��6��A$5CT��Q�'#�@G�Y��t��[�
d��e �*@?V3�r�� %�.�Z87�)u�gKf��#����|��F�E�.�(��e'�nq�-�W_��Q[�"-?��-C�����^�ӏ|ƛ.���v�h���bg�x����uA���X,��;�#��"cH�̏��A7�yi0�;� �2x>�����c�ٱ��8g�*��u��Ig�xcL�0����S&��2߫>��9���*9]�����<^��GqafT>
(#���k
+��,��1� :ʅ��x�=`�2 Jh*�UV��b�m5A� %(�l/L�k�4��~�l��yԟ�9b�@���S���(���#8l���$�`P�MX��z���#( V�$"y;�XG[�MN �#B�L���Z3!�?<O6Q
;Թ�1J�����^MJ�@�Y��:�U�{；&� �R�1�T��ʰ��
(x�,�T�tIO��(q���tmvs/j���o b���>!JX�@��� 8/O��Fwb�W��2u%P��B�/�A=����D
j��a�^�Љ�S͝p��9�g t"�  &E��V�2����-�'�_��� ���g(k{U8�L�
�i ~ ����r�c���q�cFhA��G)�Q�ڢ�Dz'���bA\8�P�'����'��-2"u��B(;vʜw�%��,�/_� ���~��X�c��c�`�u�P��Ƅ��c��9�x�U���,��6ci�~D���n�kᴙ-��em�P'���e���6,���@��0*�������W�ӑ���@8�u:�K�)tN[ik[���o�.C��M�9J�N��"�H��R9�	���>�z'A'�n�"^��S�D9�2��G�̒����� <E=�y���F��։�X`�  >3�j�� y&� �|�`d�O4��%e|�!�5�G@�J�])�Q�L�e�:�|��"g� ����v�Pfg�ǘ/����n��݂a����� �|�R�v�y���� 읆ly;+����E��=q~ܯ�!��lf�R�%GQ@�A�ѐ�'C��B�de�]L:s`�Ļ0��15�2�E�D���d0f���,D@E���y�OwM:�����`WT�x�U��	��4��Ǽ+��a�i� �1|�2�q����d��  o5+���.���)J��:&+&*椧�Z j��|ڬ�2$�Ur=`�YC�B�h{�N��m6�~&���x!ya-��xVNjR���S��s��(��kʤ��'�@z,W���r��~�%�`f�k��h@�:^�(<��K�Xn.�J&}��2dv���h����;I���2NkB�����{�X��'͏*hY��)D{(Z��P;�J!�E#V`ER�`����Q �2�3ޒ�����:��@"��J&Q8@E-%��T����8%�o�Ƕ��$���G}Y��#����L �P,W���ak#��1��r>��+`k�'�hR;$��R�Z1�DW�ر�o�4�S��,�F-w��?Q1�g_yP�!��bYsU�qX��^��ސ�R�x��P�J��T��:j�ؗ���ΚY�Ax�`��SFr��hDʦ96N�� m�Sw�Z*��1� �h�D5|G�ޔ7��$�E�H����9Z�f��ߗ�)>r4S�UkLOڮ�?c�x	lP�y�>��7 Q� 
BH��JE,�F�o���]yS�> �Zf>�u�:��a&"��:��n W��ڔB�͂��Ϝ�z;^9c�k���D�( 
Xq����I�1�D �x�[�3/U� �1���h'�xlU����*�\��,������'����bn�����(�>;�����_b�`m�J} �=�/y�����׫�pR�2\tߑc��\!Q`�dD��L�Kf�3�d�|�v�4�9�d�������S�(C8��W��6�e�eF��
�����{��]-�!wtx_Ys=Մ:��ڟ��z��8Pg��֕������MG(-`R,�*�6Z��F��B�g��]���X�"�fKt�_,T^� �ڔ3({e��2?][v�<m����<& �(Q��=V(�Xn.��'�tw޴�*�ަ���)� F�B�D zL����P)�]G������g�to��@	r�6�PKi�MN�'�@����{34�RG ��s#U,�j��4��� �"�DU#>���?�.��`�
3�?^5K>����vR~�����a�Ic��0u˻EOl�F��RœT�l�|��L$��ԏ���"�5D�I]�'�㠒���x91���4�D���6 ���7j�;�2ƍ8��Sg��l�2S 
*�x<�B$N�c�y��Y?W�_w,�j�@���A4!�I8"�z�HT������;��4��l��/�	E����n�����U�A~���EV�����Q��h��JG���H&��V"�-��Bw�M{��bF�4���dҡ�p��ijZ��.Xf*y�������o��X��� -ꭟ���L���d�d11�����@G &{8��&_��Z�Fx��7(����^�reg;���
��-�:|�P���0!Q�5ն��J��4 �_���nՓ�� �W��m�9�$�&�@Q�(3
D��,��]�~n��d�M��TG�l��M ����d&��E`�Whc^����2&y �V���-R:�4��P�@�N�p{����aN���05Q�4���8�y:��m��E�R3 z夤[�M��^m-E���r\�����L)�����̵Ց�Y��]cG|;u2��3����, !.�X"���W&Z�)\��+W��@]0�<�t��n��l@�i�؉P�`-K$9L,��j�D��h��'����،j"SX
-PF�Qm�l�:j�p��V���v��߮Y�VǓF��|Ix[.�(�yF��=ݰp���(̨�]7�H8�����{`I�<�-�����;��A�c̶s�)/j�_ˈ�g��%��A��yE��h �R?�'(g����^Ld�O����T��z�7G�f�F�bX!��� �-��x�������Z��ޛ��L,��A�؍�L�m�ƈY�Rg�4���&/oY7,"</���	k�5���K� �3��g�kO��Gt�,��9����� 
��1Gк��|��oL��7�HQ��x�g*ߛ�lU`��Ȧt����̍&�{#f�q��^ ��f�㫊VsM-�@��)�>��Pn�x2��!o��`34�񐓲9B��E��a:B�K�ܔi/+Ce� �6�B7m�*hx<HJ�o\9���v\A� (C�m�&Uo� �m�n#7V[TD)9�AFf&@Y~�ʢ����䨗� ��}������8s����"]t(� aA��!����`�إG�]����x!z�K����y�y�,�vXk)��y���
3��=��/ 0X)c����2��ं��v���wg�����0�C��̷�?0�K�'�	�ܿ��coU�p����*p�݄�Y� %�d�ANx�x9�x�� ��L�K�m�-$+��S�U֙=Q�!��A((��48���HQ8 A��%�x��T� ���aK&U�^�)�P@QQ�|�×�옅v��U���O���pU$�!)��U ��n}᧌����Z`�H�4�S�n���x� ����[�� ��x� ���A+�}t�n2Y� ����s�H��+Q�oQ�"�|_���8i�����#Q�x'�݀��C�RSm�8(�A�\֛I�.�P���6	i-7�e����Mԙ�:���AtЁT�d!��dF� $L�{���� 	"Lb���( *66{
�&V��Ġ�P6����O��`#��̋��'�}p^s:�"���E�/�5= �Z�g�}C'�
���J�7��Z��B��t<����ۚz�d��:��u0^���	�4�+pf���?���a��.F ��μ�8��(˩U6�(�_�CS&�&/�#+��kXڧ�]�F<Գ�.B��4#�� ,�0Kǚ�:f z)ǰq+��۷�e� ��.N�ũ���A E�B�u��>�U�A����L�,s��֋�R��@�Ѝ:��:��F�@kId+J��o�8�-��� =J�`��s�Z&]��f�Q� �*�%�'�ZӨ�o<�pp���(C8���[<�xI����*���x������Mb��"Dx+[cٴ����dA��=(;�o|o$�XZB^c܃J�����@Qk�ʥr1�.m L��^=sW(�	@����I&�E X��f�i�ҍ��`��=�ﳑ�آ���G�'��gSȰ��+�Ǭ��l�{9�2�Y Po�L�]b�h��8�F`v� ��Fx��F��nb���!�b(Q�4ه��3�%HM�>�yl�PR���Ek0d���/-Ԙ)g��ԨUo��B�ٌ`Q`��]��z�<%��#�4� B6��ɒ�p�7 o�Nf p����6��4͚ ��Y��'~`�ЦU*{�l��؄���h��w��haD�4�O�tʹ���3X�@�z�fi	��� EkM��W�:��d�/ ��DKId	��ٞz�_�� u�>���.�;|�M�g��������;ϥ)1a5��h�+��Q�C�i���na?a��J"�2��i1Y[9��E t@��z��zn���e��#	'u�P��WƮ�
Ђ:I	�*�#��c;=��(��o��e!���bv��1b۱�G=�8h���I)嬊S��~�,�8C��<{��� e!���g��g/F�5�kV��j�5؟�t�Z@"^�Þ��VW��Xh�L�����d�2L��߳q�F=�+��A���D*��T�I�˶�Q������fK��aN9;2�
�YJ�P���lپR�/8�V��}����,�P�|�݂J]��~C���:���z T)f�:t��:@�U��g����_���i!���64�V��L���c�m�����b��:Q@t
�P�R�Ŷ$ϟ\�x[_r� Z�qF��41���� �x����D���hL������Q�o��2�Է׫Lp���ܝa�P�4�7u�
��`��qc+�~��z�_�:\ƭ-��l���Bs4�ǋ�1�#�V@���g~�#�����I��;���֯( �8!$"E:��5�`m������0�Z�-|��M��ul��K� ��m^-�V�\r���C�1f��o�`��h��F*�az��(
@�x��l���)e/��oTހz�����׆�m<# X��>���n%F��  �< ��;�ÜD��(e%^�=�(��Q<
4��~UY3���0�j�[|�!2E��X/ЕG�q D"�):�Bj�U1f�������a�X�  ��TV�К�|Z(�X� ���G�1T��}�۔�dsB��n��(�z"�����B2N�u,W�^ +�{ܽjɵ��A�$�̷L
����{� QO�v�+�p����l�[�a��WywwI
(�v���c�y$9��F'6� �YV`�����4Ң �Ġ�=-�j�y���Rќ��o�4CQ��&5 �^A���l��S@�I{�����Z��V�sD�ػ�s	���`Q�)��t��W��<�J/�ed2 �_�)�o]q�6�0�ES ��X���}�u�+ c��v��g- (X�2�@�Ro-�
ݓ�;L�K��M8�<��P��Jfy��9��I�CKo�8�U� �"RK�D*V)���x�jA�h�FqwQ2��F�E�CM��0� O��V�I�XLn����UIvݟ��L�����\4��m/��wLX"02���h�Q������cEV���n�s=�Z�xb�(�L����Aq�VXK�+����<ce�_ ��rsYɖ��x�W9?� ��x�eU���O.2_�Kh�9RS ���i�����l;��� ����=����C�@-��)�K"�+x��!x �d�N�#afv%�]-�)�~X�s��}�^�}�3�*Im4G/ 8�}��y��v� T�ZN�<?8� �"ӂ?/��7;�v����"c�A�9�J
"С��:� 
��#D?2�4�b���M��� ̊��O�K�����'�P��5�PT�~�g$��vjm��\P?�7U��A�N?x��Z�J�� �1�>�~�a@���0B���Ηz35�=���in;��j�~u���&���xO�ՠ�N,�#���%��Ef�UQ�c���m���8͕L��҂'P& j���2�l��g~��o�8������p@ؖNP:K��:�Ѩ�Y�F��� �� ���+V�Xg�vg�fz�] �9��vr�j�AE���3�:���L�=
t���Po	�B9�M� >bG�"n�7�� �Z`9����6�9�[�Qj@��8.sca&z��$Һ�mE6vrFՌs�4���E�:M[c����0 h7iob�?b �^a���g7�}�2=� ��Fs)�9�PN���G�-ˤIVzYX�0��t�DA�#]93�G��IRS,�{�)Ǒw��"N���B�02T값�n�,'��)�xg����̬3W�\P�MļF�*g���RH���v��(�����	��U˖o�:�Ȕ� ���v��rVipU�]��0C�QV.�2���M�3�YEj��� �Y��M�~oD
@m5rTS���I��@�?X�kU���V5oNc��a���q��� Р6���R9b��\�Q��6m�7��Jo 4�s0�i���kQ: �@g˒��Q˫Nsj�"3uֹ�; o��Xk�6��aL6-N�
Xu����}�0�m"�bE>�N̪>g�[ ?� 6�d̺L7�M�3����*��`E4��	��y42�7���8 �XTw}��p���1���r�3-��L ��r��{q(GU��4�q3��G����Q�^��.Pa��i�S1�-&S ����hqR�3� �M�#A�.�i� �=��IB�똹8/���|���|.���׽Ѓ:y���"�M� ����A��}b��[ "�x&Z%�A��LL�=��q��n�F�	2�h:��pQ>9r�}Iyc* �xZ=�&c�qQHb�����( �qVa���+#h�D 
� ��tݞ�2��b(Iݞɠ�@O�ߗ��m��(�D^�ǭ5��*&����w~'/ &��t'�.SS��hpl��(�G����)֠��fO������r��|���8* D�0G��T2% ��֑H�ɚ�D f�3 I����:�F�i2-�f�1�t&h����N�C$g�������7��� (Q#lV�,�6��G9i�yKІ��͜I8��z���7(h�������.<Z%����9\' xc�D��r=�� 0)I%���%I��W̹NS�Ʉ�r�a�� �D��Zx��eo���G/�l�C@����)�Pv6KB$1ez�!0 xxr�ɫk��^�g�sT��h�L���Q�tJ�{0R��@=�`��P�� �J,%Q$��5���(x�4 @����a���N$ǘc�>����9e�O�џ��9�Ǭ�.�șM?w  Q�U?�EO8� ��y٦/��lsFu�<��u�PqEgw���Ӻ���i�k�a�� ^���W�d��B� ���qL��|h ��(`�U��$����<r�m�ݠ�D�% � 2}���� .F:��_8����n���Iʛ�!|U��JM,hpE��;1:����6�:��"��;���Z
.�-�<@Q�E:$�c�L� ,Bv����8 r��(���t����! �!�gM� 7O�u[�I�����.gQ �d�(�>�uJ����r�#O| B�L�O$��M�$��� *6�m%��5�3�]p�a�9$�,���� �(�Q�;�����a$6���(������& h�M F�&�ˌ�5=��at�E��c�{`�2�Ȅ��sF,�FP�G��?�ʬ�^�[���!��W��@�j�Xb�dO�� �+���εNO������|s��@<N ��E�y����Q�tVFZ<���Q?y�`���Ǚm��X,���38{l��ֵq�;8sPng�Y� ��f ���n=k{�P�7z������jk��;�'�! ,�� n^f��ǣD�K�A���C1�2��RQz��J�hD ��&5ժ���'!�`��xr�2���-a�V��^C�j�ؗ?cV��O}H#t�: "�.y.	�� =F�6�Ǡb[uh���2]�O �P��dl��5��J���; ,�@�3˟ z@@yΈcq�fֆI����^Ƈ ��  H2��tGb2U��> ?5�:��[muїG�J8�ꮧ� �i�@��� Ah��A��$b�
�Z��yB�6���EcD�r�dD@��P: 0ǃf������9���<%Z�ǝ�|@�*��R�pa'��@�OU�D�f���h�MJh�d�ڜ�}���Y�%�ɭN_xoS��ilg�l����G��1���\��I����5 ���9�]'�, ��؊q�N=f�\���D�t{��k�m"��r�rB�X!H� ��(�t�˸)fB�k���C0�? (��܌�L�#��*�o �^{�Y��({{���N�׋��(���x}�LQ�p��r��u[:���.�@o����TPXYjt�Q�Q��v��n{j��<Y>X;<Pz� h���P ��jR-�Cb� ��"�!�4"LM�
 ��+[mvL�ߴ�E��M�Z�h_ w	�>e2L!d;`Q��#��:+�����
j T��y��h) ����''�%V]@����Q����W6<Za�:o�w1�Dz���S��o�$�@��� �����Dd�� �G"k�B��[F��Q��	�s�X<��|z�~������E�JF֑�$����Rɍ3?�Q5a���p!�V2R��!�3e��nل�aW��j����J;�	p��)*�@3 8���QJs��PF�G:t�6a��d�,�����0���J�0�5��5[��m3��_WK)���I{�e4DC����S9a�Q��E �EC&=I�� ��F��A�� P��P�L)��'���V�}U��v6Hd��#���# ��v�d:Ib� - ��ϙG�TY��4���D�J�ʌ'�����,�e��s��(��1�y�� �aF����N�m%+,(�?�X��O�mC]ɖ�>��v�7� }�B��	��
S��j��k_���#����W�;�mht����%5Y = *m�����`���b�%Q��8� v�_&L�(G5}�S^	7���`��*| `�v+/��,�D8��v �֍Z���N;�nwE�H�⡉,�#��
�����mR��`䗤�#����&��kG��?/��9Ͳxj���"��o)�\�&D�!&�vL�ϴD`x�v* ���
��V�/YZ����	�S :�%�`���QQ�|���ѼW��'�@��Xɖ�b3]&�X�����|)�B� ��8����(&��c�gF遀8��Ȥ�9��$"����9#>A7z��G�R{�� �D@�,^�(���N_/��R���Xx2�:��c�`͕ ��f���]��LW<����&H�	S���ƣ0�� � /,��c~F���OX� �2��ҦhW,�D����f@{�=VVk�į
0��i6�:K��p(hؽb�
��D�W�V�D�Z����	
�#�~�)�:���(�N?��� @����dx��( V	�D/m���&���ɿ\Z�٠Z�t�G�h(Qyzۥ�2�j FQ����_& *��#���,|Kx�� ����'���ZVU��K�c֒3Bx��: �F�|/�k��� n����A�4�C �������x�E ���zx�����B�W{ZOԝ���Nv���ы"�'��dkP{�OGř��G�O� �4�yx@���η
~5�w{١:�3x(�?�+����L����2�������i��w֐8m�V��ͮ31��	0,�!��3����b|�	u���0�@�3� :��ህ�����N�6��:p�% ���b��*��B
��P��13�'8�][�Z7��(��߁��^�^V��
�al� kیOG�N3��RR���l+��r�� ��˒_�j����_*m���������bu{������BVG� �`ĤG�h�{ Dq�bd�,��� x���g��ٝ�Rv������)n�C8,Ѐ��r׫�Q�0V\�`@�Wݧ�J��8
��j+	�c�Rf{`P��iMzο��RZ8�oEGA�A*��v��[Ǥ�Q�>�@������U:��p����3f
���h��|�*���Jd?;�v�x�P�n��i�8k/T�d����� ��b�U��uY�J7o�~���({��T�_'m�-�b�?�f��NZ�LE�Xq��	�`#���a� ��h��d��+�Ȳ�h ϼ&�����Js?�ˡ��.��:&�RH��M;�V3�;>'�I� Pz,�T�*>��IJ���z�3�)�d�/�����eX�> ���5 ���>�8)b �<-��K��s�B�L�t �u�YnM2��ղ��9���O=K�cB�L�*�IKcP&�˙ ����'-$0[ÕT�����DI����8!:��F}�s��� ��}���P��JF�e�H��W �9�?/d�7 Z�*�@4o���$)�Z�gg���Ҷ}�3�� ��!h� �j��Lm�";&}�Yc�b�R��b��$�qm"��iV�In[s���+�e��9TÒ�O&=t�R<
@!��NᬹZ��U8ҏ	�|n5��2��2|���7�q�I�1ƞ6�v��W�5^�x��6@�v'-��V�)QH"� ��8��Jf�� ���#K�n3��&��xy��]�Yd�����JG���Z !z� a��{�6X�Mj���a�ʔ&w.��\����f<@�w"h�Z�Q��9��K�-�;0x�u̺���$f5�Ys���E�H?-E+� L�r!��c�$}Q����H������İ�� ����ڵ�J$:@�ʩnXF-O	��5x͞��!���b�Qڬ.�A8J	��\k���J���J~�3��*����J��(P&o�.�˸I���N�^��$XΉ,�28��[�o5`	 Z=%A���m���\�/���C���V4�`��U'��a�1 0)Y�O�%� r%U�Q<E��
@ :cVc��+��}�#n��!D'�P{���ڕ� Q� /زjz^�y��%�"5X^B��ޓ\�^�K���}grA]�ėi��Dįz PJ�{��S��h�
��d��g����\�U��9��_D�<����5�Q9YN�>�I�%gsP�����d��Q�&�+��|�� �r���b�g���;�J'I�% �A; �4��-�e
9�����VPS5G�
����K�0C�x�$t1x�f����Ş ЫW�Q,�S��#t��\OOwZZKM��7J)��ۄ���P�n�P:o<V��lv�#w<��$�� ���|T��f"�7�(xv���vT
<$V���l�c��J�T5
�O6A�r�L� `8��LR ��Ɠ�QGC�N�L��2nt��:19}n2Q��#)@�=� �W�jGm���]��"��- �w*1Nʢ���b%� ��!�O����i+E�(
�E`$����,����$ �N?0TZ=�v�#��ٖ9�Nw�� 2 ��ҹO���D��T����)�Zg�6@g���\�.A(��V����S��@i/R�N0�B=
���J��r�G��g>��Td���Z�����IpN8�j�Z 4[�yn(s�� �]��_1Q|`�"�
�̌��cʛ��k%?3k)-}���l� ]0�+��H�&��@�g����2�Mn�h��V*8a@	 $�M��V�^���|G���5��`�����wU��p����Iڍ��p1���������p���Cy%��+'���,l>;(=Р��K�i��M6��R�H?7'^� Tf��Z�\�� (��W+:#������i�E��@l)�%
Z@Tu�FjI�&Q� ��%{z�Dw��_&F�\}Vg��J�z9*�͹?�S7>-a��w?t���� ѹ���e�����Q֢�SC�)w<,D�A���A��l"0 8-���!�4�yk��3���#���o� ����QkXn3 ��ŝgƷ�J �`�X���: ��'A�Z��P.����y	Cb�ra��4I�@(&� �b�$)� �����)h�& ��H"���Lr�@�Yil|fJf�����f��j���� ������y�HF<%��+��+����أH�Y����X�E4_�>8w�r�Y������@ ���� ¤���0�� ux����X�����VI��wX"�'T,(��_9y���j~҃AJأ��U����J�']9��fx@m���t�:N��T��mS�"[o�tGQ�C�7�T��������`�v7+U�?ԟZ��X�����O��J?=D� Z�y��B-�u{���{���2�bɍO���a���"8 ��� �x?FA���l2DU��>n�''��� @t���6�'�.r�'���D���dk1��2!�'ضL� A|�#>r���G<�y�����B �ƒ�ʗ�P ��B��׃MN��,-|Lf��rD�mwx�J���	��k�l�"rM �ԙI�}D1���� ��v6��4������Ӑ�w�X���l�H6fx'\*F
����'��9 Bg?�t�n�][~����D��c�b���exkx?=�:��� ���U|M3T9 ;k}|
ۓJE�4��jW�� �b� ��j�����]>�i}N���@���0)/ !�B��u�^�Xr��@o�cD��5�R��ؗJi}ID@��],��C��TuQ"���	3J��>,M,�)��~���N??��a�P�KF�"�0�l�С��U���ϸ�'��.6h�[�H�@+�qҳH�h�H�z@	�yx~*u  X��o�`�-�grM�꤁�0�b�'�Q^b�)Y%`z �m ����t�S �NB	 ����� +�����֬��P= 	qi�&&�[�x�$�9�6	�U����� ��k D�?�����V0 Иx�Sn�I��֙�Z����F 4j��3\��S,��yEԖ�PUň�H �p�T�b�7�䶧�];��:l+�v$D�Π�%0,3��CR!t�z��P��lY�p�AJZ�G�,��Z >aEV��	I��3 A�8'U�[�-*\�qC��P�j��t��1RwX�TTP���qF��"�ZCl�ZB�H??����Q T���s��B��j �r��qن�؞��1�"Fʦ�P�0Ҹ�0��3�ٚ*��E�cD9Y�@��x6�*��C:��4� ���mH�:�-1�
������wQ
�� �ǁ�ꔃsZ+�L���@�M�PA+�xm�)�* �Ӆй��A��B�4�C i(��9�z�M	�  7�3̂��$��-�ߌ����� L�����Fes��@��t��ׁrRC��Fa'і�\����\�lK7h�w]�D6v�� �_ا�
 Ū1H�t�Md������ ��U�8%��g�)�5�8�W ��:m/��� Vz�n�  `��3�:���-p���DDw}M�:�3�nD)_�P�C�-��}� ��(�|��暭@�-���(i� }fZƊ�L�t�V�Q�,��@�k���g���B���:��P�<JAL�Tal� ��> Ofm�Mp�k�&������D��WwQv���%�WM?��I�ڍ4��m 5� X�S� RE�(�V�u��)kIw*��
�`Y��ă6@�Pg��m7�� Cb�`���{i@�J >
s���6[�S ��8�YЅ  Dy��f�,U4�(N"� ��5���]kf+����Rkl�F��6 ���z��S'��<~ �F���QA�h �[d�0Ѻ�/\�K,
���B����l<.Q�󸡾%��X���P��凱�/�<�F��$�
@�3Val�H�A��Aq�6��QC��IAr�>[�#�^��t���NI�*d@ �ȩ�OR0�y ���<�z-�ͺhPD,�B�A8J���Z��`DC��
"C�V8/�7�	 ��fi��ɮ�sq���W��2߅� ��5B'ϡ<���X^��ۚ�/^� D���=p�/;�3`�XJ>GH<+�ҍ�$H�G^� ����co&��"���J`HL����G'9?ʢ>�
'Y��"5�L ��j�')�2]�6�� �k�:m(�f�� �M���Ǫb\��p4�)�ཹXW�Y�k �.��P���PG"�4 ���'�{����:5$���c���9�T�Ir��f(ؾ��Pf`�ٛ�`�WF$5���x(F��8��9F�<
��UN9�#ʰp �(O��E
8�b�E�W]0��2�'lM�r�I��K �
6Hvâ�lw�eZH#�Ŏ��?�eA�!�Ud(i]�9 (�W�<~�*�	 /��"K� X�<ͳ�	�4�� \����@ܲ�ߠ���4�!�%ӧ��\���u��� ��}]Z˚��4 ��+>H!$���b�KT��<��`W8��f�O%q!�Ld���M�����/� �[&�t��|{��1���b�g��z����E���s��$o9J��	}�'-3��`\ ��p������8&#�Z �9����� ��F�cDє�[sŃV`���k�a�W��RR6T�V�H � !��u���$UgX嘧�"�>�YM�X��[���.���!nK�Y AvpBb�����9��6.j D��P2f/���"�`]D~��i�j��Բ���a���!�0� �u ���Vs�h- ���ǩ _& �n�=n��w� t ���r1M	��qc�5�F���0h �e &�^�4��Vh�i���F�<�,!n��@a�i�m��ۏA�z���٪S7�<ml�O�;��8�Y��J��^ ��� �H�˶�D����Č>?NI����)A$2�$�׍й���X�}�;�����Iv'�rD��w
���	�9؆�WF�������T����a\�D/$Z?��� t�!nG��)����6J���ڈ&h[����	Qd�ai2I��Cn(B�N�[���� �ㆸ�� � n?a0��5�ē��	�Yжj� �P�D���$`��+�C `��RA�)�u���>�d�#�ܠ>ş4H�JBs-��G�01�'%���a�M�K@ŝ��"1� t��g-P�W�c �0��VtP#�͹�9$���}�}1"�����;�]8��a���@��u�i�B�z��r��T�lׁ�q���A��(�&�-�4d�)��O�|�m�mb�G-F��X �����
�]���V�A$P�X'Ph>���4y�d����cw��M( e� 3{�uz��&�e��m�DQ�~�@Ya��QoKVx�XP楠c��2�?œ�Em[�� ^]O�`�E�4D

��꒏TҎLkǸZ/�cz'<��z!{Pn"�>��z��7 ��fH�$Xo�q��X,}�(H<�x f+���G��ZQ �z܌�-ҋp�N���/���c�aQ��q�(��ญ�s����P֏����@����/\�W^�  >!�P������9�bE�g�� �����= "���
Ē�a�v ��5��q
��<�4�j�5v1�����˗�񆮎�*v�Ϡj���a����q 祷 �V�,jd��갷 �7�\�����K1v9BP?Xm^���;4f�g�x��g8�-P{Ԋ�P�������a�	�
���#��t��J�� V����Ha�HY�1"���wQ��V��~2�,�׫ٞ����W��P��%��t(�
�su��r)<�^�T�t|h�C��pi҈3ߒ����z-7�x�/ObQ��H�j�C�~�q �}��LU%!��N����a-s�x��(n�.��Z��'�K����ճ��c�/A����`�D � L�CuC� �@��|{���, h�CXY�?��pF�^t	(1�{Yf�04=vJ��T�$� M"K|���RF �hc��Q����7#.�{χ�>
A����|��������{�M�  =�� (���:˛5�ԥ�ƾ�P%9��j1/R!J<� 8�P Hd^���Z֡�7۫6���� %8���1 ���TrD��c�v ����JX�@��f��-O��5� 31��Q��xo��H>Á�8?ú�O��� �h@���ڮ�T�c^ ����:tR7 48j+�,�r�� :< ��z<bi�O~�vU��#��e���'�GP zDcl���lI����.0��&�CY��f��!��l�ǲO���a���7�1�"L@	,�@�����<�ʰ�φ�>��� �h/F�|j��P��:Wýwx3-%�ٖ�@��������*�S�P�AJ� ����ա�h o���dk��)���8����Pb���g=�o��;���t��T�	0�`��Djx�cUP, /� ��9ͽP9����00,�8�Ud-�,����eZ��O�h@���j�	ƈ���^r����
: �H��Z���Q��w�2~&)Q��1O���tE�P"h�~�N���!7O�N j���;ߖ|� �-0�T�J^� ���G����O4D���N��?��]Q>��E�w �>簪a̕��S���Y��.��b�O>���Q �X '� ڡ��2�}xCb�$�V�̄�6�D�苔"��J-�X�� �±�2ܓ�@����u�M�иFD��8�����E�@��p�i��Tف\~�P�bS,{����b֊ 8kp�|��~ �H�F�t�[S������Y������	���zt���b�/�Y��6:%j0�E5���,�*@����)��J �h`A0\��I��~��E�h]¸� �*,�R�,������z��"y( �� �5YU�}�@LV���TSb��`탙F#�޼�QF�dA�B/���^��nz�n؆ �(Z��f�Ax
��-�p�	F�������.-�L �z������,0H� �K>XZ��"���V�$�%$���_�a��՘�&��=
��� �2���"C%��L�`�Xl1�(��;�/[��-�t�I C�d�����BTZP�b ��['����z
 Js������O@��(#�S�[=H�V ���
�.��c��Q�չ�b�� �{�LI��@��$Ou�6B ��X[!�-�ph�T �c�YP�Yf�?nOR�i��3I� � ��H�
�����Y=]E����4��msI�[�D g� ҏ�UU��Q�����a��g���������] ������cm�ynxe6����� �g
�L�z��p� +*�K�G�jY�>�� ;�����X�z�h��I���6ڥ�M6�W�p�4�͏�`�,J�� ���8�U?��T�ή���;��:P����܏�@�|�Y�Ѯ��-���1��@�PU�#J��kv���β��>�P�)U}(��,_79Ɛǀ}�!�X�b1�x�����gv' �=��PV,U$z��I�a���\"g��&�y�b���+  v��?�F+ɧ$ʩ�K��t�~.  �j0���
� z�P"h�B7X��q����a6�,��am�	( �mLvK�ȢCl���E9��)&qN2%f �`/���<6�����p2�Mh�0���+�4���Z U��hU%={��m��b& Q@��h�(`6ϘS��O���aB�+��F�0�	�8؋ 6?`T^j��	R�����b�`F�?p�h��]c.��>�	�ނ�t��4
1� �X ���G�AK ,����GF���$�D���B���	�9��/�P����VD�Bޖs����$������x�v	��e`^H&�����nkWԣ��-H� ^ hD�'���m�j��� �l����r�1�
���QFX�/)2���պ9���"��:|�D{$EZ�H�# ԅ��x�I�%�M�J _��E:�Xȑ5oYnk*����ς�#D�Q�#r9!��f��@�� ��W}vI%5�j- ��"}��J� zͷ��f�����@vT���cF��%�`2�~�H��X�02y ��p��q�|�z�	W��+a� /��G&C1�/�" n2��â7("QZ4�ה�%"���: ,�� �^'p�H"�I�z ���<_�R��+X)S̢B
�%�ڬ�y �|U�������՗b?�I ���^�x���X�{] ~e�%���ҏ20b�'�Սx�=
.�p�V��0̇Vn���\�� xou�zPD"�?� �q~�(�G_0�ÛD�C�TY�=' �6�r��m�A��g(�0Z Pԗ 8ϵ �tD����2����s�s �X�v��\dz�Pp=��4f�N'��pTiڤ A�(���]���%:G"&�~�H�|�w �YF������~  �*J���q�F1�>pP$(%�i�����NF'�l�l�p ���<_��_ �.�$�)Ƌ�Ə�oD�]�A�~����R�E��!JpJwv&"p��cl�
��aH� �k���+�"<�Y"
��)P��>�S�H��O��P�����fV�,�|]D GY'>\��؉��,A" P9KD�̀s�9$�[)�H�iy�\H�<�y0tbp�J�H�IPQ:ׁ� �n$�� �.(X#x��4}.��xHu� m�����MN&�N�C$R�! .�=]� t�  zEc�(b@)^B � `���J�rJF�qk�< ���:��PF�va�1� ʊ��r eP�Qm?�Hf �J\h�	�H4�>4�C��ý@@
��S #��_%���b �N&�����e@��� &1�|/�������՗�\q,� ,�]��G��!��J, j�v� ,v`D)��C��r����{[=�=a�V��#��i��P�X����g�Pt��0O9��ԑ����F ��� ��[M������Q�A;0�J"��X�M�0r����:��܊DXd����r��
�(�w}6��d��4��%0��8��-�^�2��C PُXB:
�8e�0�z�e@�;�+QR[o�I|(i�֦0�&P������d�"" *�#Q�+7@� O����������h�����ƚǢiP�x�	��o1����,.���	K�I��J���C������>���|`���s��lY<]�e}�8���#IB8������eˬ���m2�� ���!��4�̷�d,��WS�:A|uA�����Q �����D `o��|bK�����a1��'�I�sS��x���H��w���� ��+� 8�������?�0#�e'�;&�>0G<E]�x"h1E��N�EFH�0Y��t ҹX��IәB���(q�ΰp3��E�^�O��>k��T�� �~�H V�Y��<��d p����*W�>8�L��1���5H(��
Gl����X &1���,���g�.E���%�(��T�y�&���ӅX�D�bK���E[-�"X���"_��[O���R���O�A�Y��Y@�	c�}�w["�B����V�8J$ �m�<a�Y�@o�AfZ먕Z2핀g@`Թ�}�\��`��aF��!��"��͂�J���?bv{c� ��y���5���4�zQsa�������v!&�	t�,4d����r>� ��	#�L 8[�o���'���@i��� �����F���r!�����Gh�{B,�_,�h�#F	 XQ�-��3���x̀����]Sy~p�˙�in��!��Qd��� >a	�����c/T�zE%9x�@Dq\=�E��Ѓ����Z�t(@���¶�a�=b��� D���왕, ����
��`�	|0�:�/�a����k��"E��N&�Kɬ���:D3���^ 5�Mm��L�٬/x�]I�����-G�~"Ɛ>a�A���g�4m�`C~�x��"t�l6ニ�O��2�A0�
� @c�<�X)���G,�`�G�L�.�i ��� ��ZO�C�a\/���D ��G���z�"��(H�=a�� ,vqq�e��l�	�C	��$���V^�0A�� ����`��b��QF�%}�� ��|(tcNk/� {��`
8/D��	���bY� �����K/GF4% �r �B����D��eq%��9`������	�5�:��(�u��J'ŗ$�P '�"* P:����]�����y�K%?�J4�ܥ���ĘL���8N�"�q���؞�=���9 �[
�/lg�ct�����ND����,�|�$��B(�	�DgiP Ja,r�blU�P�����1� M"1R�ǋ�����C��&�29���(F�(��D��F�(o��$�t" �f���(��;@�"��a;qhr�	�P��	U����
D��Q�BtI_H�iY%:� �{�l|
�� �\�xqz @���(��ۄR��m3qP���?�dK�ۣ�D�6��>_D� �k	i."���<$ �E"�����?�`�(��A ����mH�Q{HD��p���Õ��* ��"H���)^��8|��tb5D-{��7V�5 ��P�;Z㘣�`�-�n��������lo�� �ݷ�X9Q�^@��8 s�3�����EbIPlX��O�p �YsH��0����]�a���/���r�`�.@�6�ϑ����A�A����f��l�ߘ����(=(�	�j�d6���?
����u@��V�*V��T x���>"z=6��#���GT�A����R &f *�3�-����:�1�|e�t@�E)c��=f ) ;���]d| �����=rXD0]@h��"EknVh���|�Q�9_K�mu��4�+: yPx����]����5�0�h�S����R ��WN���D��t�F�|;� ֘@&���� !z \�d���gQd}��AW�W�.�@7H�&P��
-��K  ��X���yÕ�nj�v_QP4^Ƃ�:;!l�P�L6rGE,D˄�F�.0	R`�%me `2�+b
3 �X�M��9��^BC��GQ��0���b���@ � 8�`����ঐ@PH�|l$ esa��Ɣc�P���BN�<�`>:a��Dw��UDY@��(LwW���I& �Ȟ/|� A<k��xa>K6	�@/`Q��B�7�$&Xʢ�ނ0��e��c��*I-k�x T"��%	� ��Ȑ��2\��
Q����;M�3�ob����7Sl�8���*<�jWT�T|iTH�8��!�g��� ����%^��T (�� ��p=��>=?�H>��C��ي�D4�7��.�� ��IR���`��E�� j��� N|�gP"x{�e��:/�s?�&^�|����'� G� �l�v�H�6�rǁ��"+'���8&�E% �u�����">�eɆ��'8*>6: P�U �Ǻ P���v
�r��Ώׁ�� (�l=F�b��8�������kBE����3H-[�);�� ,�> �Z�1�������+�'�r�@����/+q>�ۯ�A3�S�}f!��JO�I٣WP}�r :f� ��`pA8��j��,ҧ+��3 M�XJ�P�>_�$���  �8�g�����ٳ��Q)G��hB6�!�@��R/�ּ����+��E�h��T��mP���7qi��'�]夊�ts�@��3�yP�@� @	=Pn+�1���0�ՓE�Ig���Zs�mV�f
��෸���N3�Y�c�����B �� ��W'l�l�͌ ��1OWs�m�i�ҝSl���3,��U���r����f�m�Ӡ�D��1�T-�Xn"� �LyB��K<�x����~��-��
(=�B��W-��)��'��B�8"�l="E :�bG�q x+ɞ.����l����a��;�ʇ��k/��1!�2Bt�����\" D����*x[ D�x`Nm���,��@Ը��`>�E�)1����ob��*P�� ��K�a�� PA�dQ�Q ��V��, ��}��`���L#����	W�i):���x� � #�@j�jH$���G���@Y��%S�5�$��@Y@7��}�|�;�'�j�-��x}��:͌Ј�;��D�U6�<Xw� ��M�|�Āa��G����@/�t^7����G@	��o���I	��N�� c��i �1�lx����20� J�
x����\�>�|.�#��W�V��QNW��>`�� ��S�呚c�W ^�y�Fz��8[H���n�k�8 �RL{3��v�	�7i`=K��0��0���j�ͷ�@�Y���Iv: (�2�L��z���u=��(��Ϣ�A!��h-��h�q�b�w@ ��A�V��z +��F# �mt���e�Z �rV��b��5�?�po'ԉ� =
�AXiL�h�����V����2�[M@�s�'�	�g� ��f��A9�$}����P�7�-��A!_<��k��  �#�@��X�*�;��#<(�r\�����ď?��`
��I| :�B
�l3�H'H�S  *��\��@)�cd8@gs�wx�(#P�&�t�'S����G��6�m�$� ,x�CP�	>RB"�k,�K�1�?VO�:��N&�O�����OP4��M�:m49����1��U�_�~~� �!+�6V�:��}�0Oց�; >�g1� ���(�n��(��" �S��$���ac�����8�H�o ��O�*䒚f� ޲%y�&y��	V��S��OZ �20�%��ք����g8`���=ځiE �3 �'jl 7�: �&�z�(w�����hR�ez�.p	���>�g����c><F&���K���5��/���]��F��o�+��& :�l��I'�2󅀷 �o^�:Q.J�>�b��d/�˄��6�3��h[9ʌ����FU�_�m&Uq�E�K��R�Pfƅ�\�����7&�C}���
���1��d~8M@,z���2Q �*��E���)
xe�Q��|��?u}�?Đm&�{�dlz���0�B)����Y=X��K D]�12�d�5�S�2���ĵ}oҀ3ט3�?'HG�~�V�u���d��ԐH�J �Yn<TOb|
��t�%aE� �2���ḩ7�^�MƑ����R}��.Ca�?��Z7 薋wL8�X_���T�su��!�w�,"��`;
��K
�CQ �&�g2���s$Q�����~ F�
��Kf�͞x���J`����R�E���N�oL� ��� �U|���J%[4&���(���W١��A�ͬ�7�
�ָ��p�����`�~�d{�1p��+<b�����)�30d�8 )xiR�C � %��vX��F-�bSy�<SOڂ��ek�M8�/�^"x�]���$�U�1��CT"��/����@@�0�,T��*Q TpU�L��š ����q�Lva��.�(7[1�a��c1w�3M�L@ʣ�`��V�"�,(�C�+2�^ `QB�F���~���j��5b�-1�
_ӱ^B'cE�̨�X�N4��9�0 ��<b�;�>���K"U^b��X�(茆n��e���^�?����h�ob���m@	n�@���JRHf,o� �
=RO�� �Q� 2Y`��"
��C�%ח��@CO]�����c0-� (^- �- ������8+( (#I�"��h�4�T�Z�~gF ����j"ڭ��Ч؛d�!�e<�	!\�B�{`�"�:�+ �ԃOԓ� �9�f�����"/��X�`�kg��C'�P���٣�,
:fԃ4�_��+������Ǌ�E���M�'fՓbA���.���i=�VS c-T�B8�����,�|�)�(�A p�|�҆8@Ы���im
�Q:��<���gq��lP���9fc��J���@D�2�R^��xb(��D9�.�f�,�q�G zE�p��PxM^:�.;��z�!�i��,��� ��{ D���Jj�)�h7	�L%��	���撋���em�w���=��&f�qG�93��d�
X� P �D��eVp5A0 �q��{����d��V�v�"
�#D/�u��-ѥ=�ٺ��t�N�h� �������MV�/	@�#{��жb�P�Ɣ^�z����9@x �^lK�� �L<wT�x0^rX�����J���J�P ��v et�\�H,�SQ� GdZx�=���ﰁOq��H�5�'P j6�z!,�K�(�	�O��6�Է L��&��/:h[;Qf�wJ^�&?#�뎇W}̅�(+������D׵�#V%V�22��{�%�ǩ.C�p�����:�U���&��p�s�LO�.��!�'���Kp�	�6 �ίZ@n�%zh8��IJ�,�@m����z���8��s��OMD=��;%��lf5�u/�19�� �U%�:�yI% V�����x �p��Zk���*��W�3a�m�{�ӌѰ)�r9���-
�@B�����Beb; ���z�ж9���LsѠPz��hC9{�Ų��Y/�'�)*��ҁ.P�-#eJ��0� ������P:;H��H͛>h[Aۢ���<�զΙs@��4��q݃V �jbU���CF�{t ns#{�(gc���O�0�Gd�VO���V�-h[��j���S	/�1.H<"�: � �>�Y�On������QJ�2L�N��&�$��I=(�f�8 ?��U��q>r�.�A]�*W�@�fSB���/ �'vY��p� p�T�g�I+� XD�^�R/<�# �(���a]'ڢp|2碟<vH�� y�� �A $X�sa��p @�>OD.@l1�z!�X�3_� �2�(�8�k[�%[�P�/��(�B - ���F�"�È�A |�*�G	��ʹ@��%��B�yLY����oh[ߢ�Ŝ8s����E��)H���8�^<�r� �+�1O��8- ��Z��*ri P��(P�$��,�K��m�tD��L&-q����<����^ֲ2�: #��Ss0�	��R�Y[k��: @������oi-0v�~"��O\(< �Ҹ�� Et9����BG1��DBQ �$&�f�K����2�@i�K=�o�r8� �F;$J��d;�� ����A��Q�4r;hQ z�� �FG��敥�{��xB��?ж�˹{�f��sF��(�Pz` ��d�$WF�����߃�̙�; z]��Q,c��Z�F�n��^�\$^�{�dw�Ŗ��׀�� �� V�|R�M����G r�dZ�@�i&��SBm�v@��D�6z����պ�d������h�P@��E�����j���@��n<Gw숦]��[!�5�(�/p� N �&**s��'���M��}D��^����m��oo�*J�D�	] ����F������M���r�mBD�ġ���.�N��kK24�<x*P�Z �^�����ct6� ����+��Fj U^���s�"�d�ʓi?kBy�v_�C&�D�~} �K6�v�����&��֞ �D�V3�V��"���$��#D�u�׮y�d?�Ͷ϶A/�a�e���r�e ,�' DO��`�!\m�0��ST�,f f��d�3^xEO���ܙ��0Xn�u���p��Hݸ�_�ʂN��"�n�tb\h%R�q(�i��d�K��^^Ҍ�cҹf���#r�=ʼlJh��ģ)h�nY�0*�|a��Oa�v��)$Q$��/6˸� S���*��WkP�y
	q���� {�u
�P�Gd�$�Z�f m\Y%<B���^x.�V�-Vb{<�f��ƿ��~��+��vڶ��6�CQ�$uP�FoP��p^8�q6���{�[���p�� �Yk�z���]�����;j1�i�jK�)��w1���y=6Y����.G -j/  ��k��sCD�3T�]( "��9n��^mW��y��>c<����9���o����Y]�� �l�.m �| 1�C��[i
X;�݋������<-�+ (�XRq��w�8�x��#c�/�F�﫺�i�©.�09\QWV�3P�<`�k�:K\��&�:=AOs��Ɵ2H��(���~c��d�q��������Y<��'nal3�'4`/E�S�n�L��ce��:L)z�ҦQP�g<+q^�������5+����ɨ����㎍xI�p>'4  E�`�� �ktM3u� �*!{��Q ��<��ɓ|ܟ{Ȍ/9f�1^pКs�����;�����i�
���` ��|
�,O7X��*WF
�{L���3�� (���S$ѯ]~X�����1�f�e��K{��tθ^�@*�#B����
�kc�W)�����h�����������~$�9��_�7�G���z�8����˙�����E�5�x�D?Ŷ��7Tb�6R0 Κ���8��ư�����cl�k'��6������8��tq��f2i��aC{�a ���rzź*F�A�b�w�����s�� xU\l┗�w?�����]�?8��F�/;]��Z�xd�(���]Il�ԞF(��a-�����p�4�'�����$��wCG�`���c|�Y�/��,^�.G�L,�0;d�L@�:���U��"����RP^��I[H@e�Ѭms
�1�ߝ^��b�q�b��;`q:��e���"� �����? X=�@�<������d[�-v�>A$�
3�T�$��ǎ[�[��1��v�O�8��7�P�����):>��%� ������!WMMp�;��!N��"�)F��ݭ��������{�]���~=8��	]�,�{f"xʢ���H��c�B ��s6B#����Ht+���
�)Ɵ�����~q��`�w��3�(�����qQ �/�8l��V� ऒ=?d=����EK���]c��Ǭ��?5�������3{�m����T��6���E�@Q����69l���&���% @�d�@ߋ��tﵲ���[�S���X;����` 1R���E*m�� ���t��/��1�<�pW�J>9g�nйkF�Z���u�v�w����]�OB�S���G9�b�:�(�"�0�T���M z��Kj��> ����;c�7fZCj�L�ܘ���:�#�.�#���N�eN�e;��x���J�}@���q>�"�2#��M@E�>=�P D'�p�-�LV����X�oXA?)߽����wZ�c3�-���? �����0;�4���L
��cQLxfb��>@(ő����)5�ݦ�ȹ[�ca��=n��6�G毕ұ@("f� �޾�@��znҜ���T4�cr�b�X�<���q�����D�U=�Jt�qA�<B�:���1�r�.鳝?k�`����MZ0 ˏkk�����1�����?Z���',��6�S.�UF��(H��p�� @�:�mq(R�Cuxl�d.fK2�Z������mV�����'f?�r~7j'�t 1T��v_9�t��to��v���	�����O� �wjI\�Nkc!r������Y/;6�����s����q��x�.����Q<
@-o�Pr��� ���!r�)(�7��d�2�3���b�q��j�ѱ8�W;����8#��]օ��< �7 (�G���l��&�΀��������h���G��<bA����8f��uϜ���ˍsz@��l�[NM5|�"�� �I�4K�Ju$�4� xhpA�2�- �F�H�J�`Q�����e���3��Ѝk�������^
��JSn��N�I (Nn��:����7��h�2 h��2�X5Dq� ��g?2�^��Y���:� �#��N���4B� ��=O�Yc<U�>v��C�	���0>v{�_:��z��?7��E�9�,�yZ��3�(�����\��c �=����8K��Z O;�Đ��{&��^)�(/��g�WZ,Ɯt���9��&H���m��R�(�T&I/�@�fk`]�'&m%3��- �0"� E�DîI�V+���_�O�
J8�� {d�ʅ�i��o� fO���zS8�E������|�6�l�}�	3��U��֊�q���O"��}�$����|=8C��M* /�����9 ��l�8(\��%7(@i :���]�U\�??��`�N�-IO������rX� 7�| X)�|^��`�Zi��D�Y�U�����F������N�8� S�� %x�% ����m0��}I��6�G%] פE�!H����" ^xLD��J�-b�d�*�م����x�^gw :�+i�>G�!��oz���Ӓ���NWb�òJ J ��z=3D9	e����14�h��ۛ:Z���I�g�Ǐ�T�� ��T�iq�����4R��"���wU��^?�a�u�e҉_�8�ö������' �+��i�E�8@ 8�{xV��|�����q�q���P��Զm�Qn"�V��5��p��H���@�A���T�:Ab�thտ��ʙ�w }-�X�VO��H��>\S�Ey�F�>r_�d����$#| {( �Y6��f5 ^	��B6�hl2���Z�B� (A%h"S��8h���k��:���h*��<��}�k�O�򵚃Jbx�J>)i���$V����mW�pO�Nz�bA�:�~��HR0O�]��')�
�����^�Id��@=��'�l�v o]�qF<��%��� |~��|�D��6��$m�zp7b�,D�
��IJc������ ��=-d;��Im��X' �Wz��B�����8\޿�s���I� �k� ��[��/�2Ί���R�9��,SXk+ŨtH�.�q=.�e�(�/�U����P��pi ���@	��aj5Nbd��c j�C���"ux�$�:It6��f�  �9]���SX)տ��0�O��54���`(0�Df�M T�cB����0I5�L�}8%��J ���~��M��Wدs 1�q���5�)�D�]�}�m��NZ"�'dOI�Y��� �L�0�djI�]�8�[��Pv�2�0_(ɟ'꿑W@B�#���֖����`n��3�����L��,�
�n+h�	�P7�5L�X��TR�;��zX��qO�����|v���p��9!C���[���]�ot�PnJm��=3���9�����6 ������K���s�t�V�G$�� 7\�M�P�&K"����Κ֎rrؠ/6�[��It5��� �AN�A-��Vk��r���&>�D��( �?7�"��F��Jo D0� cw5����|��Qb=)��u�L��C|��HЫ�IɒY��& �ɵ�	I[�. A�D$��9�,(��P<0"�[��7���jo� u� z��/ E]�E���`z��ɭ6�; F�;���-d��dI%ڏ�ǘ�+<�+�E3�{r�'�w�����mg4�_S{L���3��}����"��E.e�>�~> T�!�[��{�CX o �xf��{��O�k�w�!ao�oN��o��d�����g�v9@b��Z �'��2�m�
���6c�9X�-��������c+��މA2أ�4�����B�r�`e�Dn�5� �TL%����j�L*�A�T�쾅k+8�7v��!��_S�2?���uQ49!��C}� a���l�I'�	 ���!r��T��J���z�G ��
e$
�!���e�8�$'��,����"��g����>�LN�"5�XJ +��m�e0 �1�\V�Ig��������ܻJ�<�,�#��B�qC���?�Nt�|,
�.�j�f�a<%\�lcn���������9��wZ PE�����O(7����E_r;c�P���Z ��� Pj34W�Q�	�6>��l��j��X�X;=2�*S�t84 �6��nYmj�����J�h����"�;�� ^�$4���$��a- "�M��Fi� f+'�/�(�.�e�z ��x�q�Q.v�E���&0�m���#� �h�V���E �ξ��8�9 ��A"lr�%m� ��8�F���t,&Y<��/y"1L��Hy˕�������N7�c�C.F�M 4Ҟ�d�E1PZcF�cT��g�JAi|���x��"���UX,/�u�6 �Ѐ��`t��w�6���B�A���4kG ƕ��rh|�=�hj�;@5�d�B��j���j�/�D��]dSR��+@��=�ֆ�Rwm���V j�]�cq� :��1�����0xx�\&�؍���Q}��d�:Ng�P9y(Q\��$�Ԋ�*���`C�
���d[��R`,+	b%��b@+��`��]E9�1d��_����c��\	4�K� ��~��&a���a�L���Cq��; Z�X-F�}�Ah�A�K��`X�ua��f�ܯ{�&�;J\��@T�n�؀uJ%)O��9� �-z�Y՚�( ���ڥ��o�j& ߯<"�U�JUi�<�d�@}~QCa*�@A���nW��c�+�& xbd��W?�=@�*9��>�������� ^�CB�p�I6&�>c��%�4ף�b��,E��L���k� �m]��(-���<+�d��c~���ԇCA0o���7����~A�刺;n�!@H��R��:��"�UE�pט?��`7P�<�L�F>�j} (*�HE��n����|iʉ�//�����.3���= ��L�+$���> ��&�����v0谁?��e賂%��w�!X`&^�֪*o��;��_/a��Z�I - ͶFV�����~�+�����\@��s�f�c�2�f����	K4[�9i��r�\Q����!zf,`Q�u ��^)r#�9�h�����l.�zg`d�s�8�,�z@�O˰y�:�r5�_8���P�4/ʊ8����L�c��Bʍ_69��$}��a��
6K*^	QM���@�o��&2�K̭��>3�nGč&}��DA;� �����M F����ū*~j1W�gn*#&�o��# �΢: �~as�J��v�P�l5�IǴ>#� "��
[�N���8[� �S��2�����h��qg-N&^Xy�ێ0 ��8ۉ�3�����o�������?(��� ��>�'Z�H� >X]������5�d-��׽�@ �m��΀^F�&f�8y���[xOVs'ju��P�K��6f���e!- *�+~J�C�Yj1�Ǳ6���y3
Z�13���᢯��=��h9V C�!�ި�cP����x�o��8�E �`��A��= 0���\�=��N ��4 ($l�,Q�`�u�&| $
��(�%/�(^�_��%T��Kb��� ���Y�9����  Иj�a��6��+��k�]P���/����o�U-�yt8H�R ��$vHg(YgG3��������o����������n ��(!"W��~�>n��g�ї��(�:3$��F�@��ۼ!��ɗ��M�z ��v�}j���'�?F�joL����D"�#����nr媌U���wU�X��-7u}@�i$����(y��x���)H��z�_�\8����
 @	�8�l��M��T�>��A���t� ���tD �k�;bUb���= ^2���@$����n%uR���:{��A��t��&�Q��!�-Tl�����8�w@*�k�4���luܱ�u�G��^ ^�Q
t+�j�����
��0ǆW��� �c/GԿM�a*�Q�DU0YtJs�6%Q
4���G�2"�w�
 *�o2u3! �v ��NT�QN��[�[g$v�_4�X����"����ȩ����Z��ع �(�K��(�)�S��)0l��
k�u�+�*�!�E�O��� �i�/iJH,����`������N�#�8����� `�O �V�<�q������D�xۦ�(*Y�k@�q�^Q��\x�Ģ ��`�;�~�y��,�s�)�~����a�����^=�P1t�f��6�Cw�;h+�v�� !��B�0b�S@Kv�Sas�! Z�獑/�m:q �2�@ĵW��������;g$!���E� ����D�!�A�M&�0���ڧ�?�e���8-H!^&uy���P�]O���@�uz܄����-�x� ނc9ᵚ�x)$V�@�(cMz�S���G �� �D��k�^��� �ta�Ew^��CY�ݜXI����'�A&��]��+��a�㦚��g̽O��Vx@`����6ʢ�E��)��T΅͙ΰ*Q��+��.yب��:�m�� ރ�z ���>�sc�i� ������Q F����/Z�Ý��u.�8��yB�<�ָ��Mh��+e���nc�+ ��^%��,7��T&�[�+���G�jtҹZf�C���eZ�F� �.�{�Y�"UT�s6W�[LՆ����=
zQ{i�!Ko&�h��L���5�˚H�}(�.��#��w��" �j��OX��>�-�N�M� .�!�o;DB�<Ī�{ F�
^G!�#�Yl�3Lx ]��40ޔVaX���4k�Ҩ�̤�,�;�O���T������T�n�0UG��!2�ͨ�P��\���Z`= j/�:��Q�( ��f�� ��L����u�	�vf�4�1�2I�T�M)�$�*�����@zg >�;�dYk��mF�tn��Fi`�v���V:�MY��z O��*���$��:W[��Vy��|'B���#ꐶ�4��4��%�����Gn���v  ��f��&_�E؜�8�R�z��2g��e��(�Tf�Jn��������?����uN-�Z�m0�jf jI�{�O���e����N���LO@q9�]u�ұ�sQ��ug���KӬ�T�7H�:�ey����)��Dᑋ\?���d�s ���2{��5�>�S�3(3 ޟg��ԩyj��Z��'[E����q
�oJ'(��S��2Dh��,�����	@�׎�/�6i�������qg�Lm�)�E�!��i����&��$ 
�P�>ѐ�G0��A�Y�*(�A��gU�~��x��(�'�,%�|Jl���(5 :�\Ld��g\/���+4P	w���T"��t����T�W�Q`�� D��Zn4�:M`;��I�M����� \��㖟K(7%6�{����'�OG*@�P�4��B�
b�A6�d`�tn�<C4�"�(Vb��ZŐ���W(�Rog��M|ws����sW�-�������
����0�2�z$w�3[4�4��G:�K�7�_��};��n;���wv��(�>F��r��K�3��$�@c8ٯ��B ��Nd�(�u;f�Q�e���c�f �^��Aۆ��0�O��fd+��Q��)b�G �������������=����i� ����rH���� D>P�]���L8��w2M�=�0A�2I������B�Dkm`%���R�n�� ,�w����]�.�����@c|b雈���Ln��wh����o8�xe�j �@mY)�a�ge|���h�.���x 1Ɠ	v��2\�d�Su|?��%�l��O<D�A��Jm ��H������#S�� �<6��ɯ��Z�P�X���- (Dt")O9i�t1F���e
ㅺ��F��J�Y���h�[8�Q�% h�v���Z 8��ًQ��B�)��!�@&��MQ�P.rڵ��!+Z*3dd�0��aO � J�4wEK&���<����-ɜ�4��R�n����h �M���q&�*�c�����HBjw��F�QnhE�	���Kfv����RO@%��Q:wxR�tkr� ��,���Z�̀h�fn�9��%�t��}��9��E�<�1��zP�@	��hw@-�q�b��-��������σ�j)z�b �*���Ua[pM:C�/�|�'rܱ%��G�c�UU�z{uH�'�Le�HX1�}���H h��-�
x;�ޞ���`q(0�W�}X��IG-���PP�yd����uz"[ V�eI$7\RZ���Vw���5-� E�G*�qzkiB�c�+C�m[��V2���@f������EՂF (�z����%)�� q��O���YF�H��⁆rwG��-t���x�&�KV�|��� ;��o��d�D��@���C:�ď�Z/^
 �v��{;͛
 Ϣ�Oq*Q�4�z>8���ݦ��(g%z~���t[�@{�S*F��D (�t^�r[�2+De��9�GskG�����L�HQ橭�P@�1t{�q&�B|d����L����#�y"�ǝl~�(	�%��]�����ck[��5 �����ƾ�]%��N���,�P�+J�q�E�塄|��f/����J��K ^�j|6,�ҫRBn���r),�Ӎm�7�"�~�F�����r�������Cqy�������9��j(�`�i��H�N?�����:��լ �ijWxWGr�ne��6�P�
�]�ȴ���E��@��13��@���� GT�ނD ͠�ԚXQx��Z�Z��~ �eח7���1���KelM`�73� ���!�3�Q��yE��H-����5 �y.-�AQ@�(��'E()���~4�s�~�bm ("�xRYj�U
(j���_[�R���c�[ni?�-�[m����>�K(0"��?��w�g���lR��"��fj �o�g�X�R��UY�q0�;f���y�_��j�3�{���5Q�\4^�����[ zA) �2ڊ��6��� 8U�]�[�V��Z�}!X&Q S
V*�p���i[�-*W��[�^o�#rx��(Y �"V�5���R( �*���`�p������X�9�;+W��^0� ��B,C�D�R#��\M����wElPߵXD�� hF��ħF6�>��Xmuԝ���=M�8�<+m��h����޷� �(���QvJ�w��_pk?l2Zo�F�O�A}�l�%�`�11�+�E�$ӧ��A� �:�����X����+��x`x��cF�ИĻ7���殚�(l?]@p8)�V�$���G�-�)
Ol�űM��z�Y�q�T��@��:�p�����e��j��=<z�}��C���,��n���P����%YH���G,�HU @w�ۙȸ: �T�H��jIt�j^��p�Gׄ]���u��]�f���攋�1ֻX+� �(��xYqU�#PY=*��kd �1�1���.�X�%��= �C�_�1�B�I�o�����H����1��x��D���IK�c�U�<�7lx���y}6� �Ze%�T�>���3��' ���3��f�Z�Ft��7G�y2G�_��a8�T�-C�l���3H��<@�p����Ù��*��
���ŗY[�j���e�+�4��]��ķ~"1N	;ԩ~��b:��p�
��|��d�&O`P0��w�Y e���9�+T�`�>("�t�����!��*�[�޳����tS��[X��I'���cBēXgE�
��r���y�����H얭�~�}�������ç����&v����@.�0B�n/�}� �@8B[/��q�� �ϩ�SY��a��W �䊋X�WQ">S����W��,��ATD��ٿ�k߹�^	{T��!�ʄ��9f&�rA9+#$03 �%�s7p�ld� �̪��˕Ci�Q�#Db��JP���%�g�#Ye���0_��� @7�i��Q��*�.`��!;%]����{�4�u �Z1jE���j��'�QJ ��|̾tq�
+I�~��o�6����@(�LL�6�zPY�x��ֈ�Ȱ\ �i|�n�Bl� ��E�`��x��z����gt�9H�pWn�x���Ae��L=�,D���L�$>��(��: j����w#+]B�Ԥ�ANP�I[fz�fF�\�(e��С�)��:�4�6s�G� ��=+��}�)ȍ�h��ݺ�}�L" �h�٤�������Qm rQ$3o,��z���#pT��o�y����%�vPF_
PEzT����o6 ��ܺ�8y��e�@�P�
X$�Qh� �̴m{\m��ڮ���M�����
�V&T2�a�U��j֪|� ���n��=��y�
�Ml'�JF"
(*aF��z<U�@��$1U�x��l1��t�i!�P�>��t����!]){�z�l@_޶�\-@�\.���`��X�v?5�E3���#�3Ai��"EqR��ȫ��Peyq������.�*��D�D@��c�������B*MG��V[H"I�4/���Sq�9�da=�crQǉd�?I�Y"lBw�9&z:@�A8 E�Ec��J�H+���m��Z��Df��J.�����3dsL�(0Rҭyޢ63��׏��ɤ�daj:�� mQ�(��,
 �Q�Ŕ��s�h���  .�&��س~�P �{���d)d1M{ x ����\^��lJ5L<������r��un���+��o�NG���g�J�M�EN�~��c�n�B�2� D�ȝ��c��K�F ��\Îy�k����;�@,��*K\D��/�����"�%�4��L"�/sL��w�_�2���fYF"S�"J�,��*J }Hf�L����$L����??��
]���D,j=��0[���c��w7�QW�2�뙛�@��4�&	~X�e!����z�3�x���\B�d�,����g,� �.T�O�`5xi���am�p&f �q^d}�W�`t�����+k�Ru��U��>ьR؎�F.��s���>�~$�`l1����MuH�h'�	$�Qt�h?�e"( � ַjh7+��"+�3��WYS���݋���v:�#��1m���N�R�?2���E��	���WͿ@�Jsm��cA�S�L��Z�oH�Ej��Y2ͳ#�F�q�pYF���&&�9�j~���l�U���mh q�a!0��	t�H�a��Ǿ�9�O���q���y�y�VBo	=6Ҳ\�l4��T}��refO����C�!���O�S�ϱu8�E�
��GRT�sVH�O�"����Q_� Z��4��6����_z2�������j�w5R�ɘ��]U�	5I��⫹�6] :�N�t�^�vUU�2�?�W�e��E#�~� �Da�`��TL!�p��TGͭ��s��7�z����.m(
��w����b�J�g� E��K���:ܡ��LZ��q��%j��x�X�(*�"@���gj=����?�����J٣.���#�u@����X��m&�gIx��Fwh�z �,�@j� gͥ*�v�z����Qg���K��RC��׳�g;�Zh���yY&O ԃ�'���J*���h��<̾j��n�����2K�UĞ�P�Q��Z< / ���Ju���-\�`�����8t����@	J����#��K�`rn��| @��ԧ3v�~.� ��%O*D���w�쇳w�� 4��)\=����k��x9��r}�,b
,"A�z��c
�A�r�u��3�v��c��$�E�b�He*����@��e�p��g��7Q���>9kY�}@��q�g@��O:�Vs	+�$#�3C�%�;��06Y����H|�=���g^�Q%�F�q���1�6~�7]#q�����q����l&Y6YA�LRT�Zؓ�wf!�:�%C:�B�7��
yn?x�%J�܍���td��'��h;�"ߡ�f:=��+�Wx,M�A��8�' �A$���b��~ xkRQ�z$��Rm�QZ��ѡ�3�O%�9�3f�n;ǥ��k�҂,l}����B�y*��eN-�qy[��+E hYĚH*\�=^�EQS�@���KX�����re/�ԱV��_�j+���_�4� �� x<Ap`:@'�Z�p9���e+�`�-�0D	s�G��#!XV4-�ם>5�:�2�Ʀ��9��lm��Y䲸�Z-r}��B�� 5���B`�W�W0+�V�щ���1��RD�e�H�u�*'ZŀC _x`�?����8:�d��5����ث䈺�<�
�@��z�N��5��aQƲ��T0�Ze��;2Z� t�$��q��2Qw�|�����Psj��('Eܗ���x	1:]c�
Z =�����~�H�(R�Uj� Z;��X�J� �kq#S옿��OAI���N :
F43j�,i/>���5��	���#ރ��$��)z�+��H%��\3v��1�� P3�j��
d�W�;�x`@ q �z�l{��q�Ig�O�(��̌��JS������2(�mx�K'�,3��E��	ߋyf;��	�-"�&\	Q0� ���, N�V;YU-��r�f�yO��� ��X� ���LG)��;j��$�&���N��U#�~�Hbۉe���kn� �9ػ�T�r��v �~��-���IU��	@'(Փ���h.�:[,�Xo	�:9�n��ӆL	 J4_"�4�v0�Y}Mՠ@�]�׈�6�F����V`�M�Q��G���id�IӡvW�;����Xp����}��.?J-�	�X-�m��:(���G��	{���#�QΠr��E����DX�1Zq�Bi�j
DTR,��.{%[4C��cr�VҖ��B�E:33ڮ?%���o'�2Q!3P�Ш�h�|bB4+���?uઆ;�Q�W_�"tv@6Y�J=�Q�9쪮�CM#�{�(�[ ���&���)d2�<�O���|j�,�Ӊ�S��`�Z�x�T!�2e��3�@Die�p�6Q���� x�v�����t*�I*N�d*��h���
� xt���w�'�F�t��+0^
[��.sL����G�"2���K�RC�0���V���ײַ_��ak*�12�����z�| ��B�uY�f�I2�%�����Z��G�C_>��, �@��R2�%(�M��� ��9�ػ�v�\B��|� j�b�z�p�*A �����3f��3V[�����YH2����=T@�hP
P����t�dZ#��r ��y\�z��P��e���o��X��t��hР�JE�a��1��H	�5�<��0�.s8T. ����ݚ�c�f�@�x��eq��|�����ن����zMԤ5ӃN!0��(��4�'�P���0&ʏ�U�	�p��|c}@��^1���b�I�c�A�d�g�A����.��Ր�
���n�������D��౩��;)
k�Ԙ���|12S�����$L���X�և����<T"Q6�|��F!�x�~{bh��P&�X"'��􏿜�P�V�> ������*Bو4��i~��ƹ���U[�0�k �Qm� �z�S����9�����G���hP������n$�X�Ni���`�.�= /Q�r��"~���Q�oA3D2/z\� J�����[  �ɌvJv����t��j�K6*��p9
�z�G��d�m��B�t��C �8z4�O�����R�8E=�I	7�rn����.& �Y� 8��:Bf�"
� @��dd��~ٱ'[2��c��Sn"�����2S��YEF=x40۩�ҍp�g�R��z�Ej����e�.�|� 
pȻ��"�r!J1Ɖ�q ��N:��I-� �aQj�LN�c,��������vN�Q���[j�����=ⓥ���Q(�������SR�:�1M0�{�r3o�kO��]�2�7#�Z����]�i;��V�9�9uF�d��ߕ���_˕�����j{XTZ�Muyo<N��1
cҜ�l�Q�����k�F!�����`�d��b0���� �x �g����ՠ�XeŨ��PF��{h6G~�"DT/�ܳ�Y��b1�c,�C~�:�aq��-�4S0�l����F�AB` �0�|�w��eb������c��c���j<Ѐ�H��F�h��/��X�pKȴ��f�&��5�Y���V)��*]M	��> �z�k-D)��e��P�*N*��a�LC�	�5�݇A'��f=>��
S���+ZB6�M-�7 0���[�pW�v��jЊ0gb0�ő���ru_'E1x�V�e�;+��PXjz ��o*��R�f�E�Kb�B��6n�{+�� ��U��h�9$�N%�Wt}����+^��s�ˌ�Pgɬ�$h�"Πm�K���.�����N�>s�k����X�����5o�Yq��|�`Q�m$1C�|
;|N_�g��a����[&��国����Ig���L�# Jpɍ�����[��-��!�>�1>��U��.���X"��4�vjr�%ښ9
� ����Ĝ.�lřO�y�˨5�x����ILp�]@�|�<�,"j!@}�s�tn�8�y�!��h�xR�:�����ݹF����`�(��fk/��1�����l����ZA�Ty(���}�,��$�Lr���L��q�>+�\�d&�u�n*�"�����]I;u��D꘥�6}Ua� q�z���0��Q@u�]^ h�t�}I�y(�|�?�ϏyG]�M��>�h�h��ਟ��C{v�A��_
?�W\�^��'Ѡe&�jgņ��&¾�" ���6e�뱟�dg�3
��:RL��^,��\���f	7�PJ}�Q
S��y�(P� vÙ"M5Be�|�K��#��=����X��m��`�w��(^�vg�J�� �L(/%�"����zR���o�-�-ާ���$�C�_��x��S��x�2�����[�V�� �u���4 ��hHw�Dju��de�:Ne7<�-ٸS�>\X��v�x$C]���� 8�ޯt��^��J�Gm���&l�-P/^Z�% �	�ҙ�p�ѫVi��H5�p{�=��n���{
 �*��%�qJф��T3��U�5�g(yk�՜�g�o3[Ե�7t �*��<�F&E��堟@K	Qx*�7�5Wgӽ�E�h��dIv�V2�v�4J��k�G͌��lD5�T���*�+P��w��2� �X�Y�eV �<Uv����Qx)������X�u�oR�h�-pV&�Q:�8|-x2���VZ���1�*>�L`��˒�f�<����tDv�w �q����X���3��[�ٖ� a�;�
#J}���6XIj�R%.҈b)u>����%S���6���o�P�@�T�*��W'0� 0�Q�q�k��qf`,���"��7�ˌB� ��h#_���KJ�=�E�X�g��H=��s����`�Q� �f���_��۶��� tD0�*���Grl�c�@�6���E�;�J��;8>H̑j�+�0�k�*�1x�Ҡ{m���%��{�&���W���0��! Y�Q:%�� �&�K�1��.��ȼ��2HZv�d�g5�j�|�?e33�YD	4 �#�h��sZ�@�n�h����
��1�h�`at�� -�IW@F���(�Z�Kӻ ��9�R7P�*�
 ��e6F���x�?�h`9��D} ^/sa���H����
����k�a�n�R�4PPy�
��l�SZUY%c�D��bN�n^�>�b_�Iڵ�5#�r�}�[�A:B��	�'ΓsJ���`�\��T�#��u������˱8X<& �xP���}ju8i�@�PeG����N��9��Q�{c/�b+��Ui/$R)A	�t2a�`���?��P�F��}h�v�҇x7�c}b"#V -��]=a�,=�Ym+��h���[�H��Ή���F��Q5gi�H��#�3��o��@;3>�8��w%����_ۧ梆'-��E`&�`f;
z��ZCa���0F��2]�u�M ��T��&^�ŉT(X�]��0�����%.1�T����\�����1w�x2�4[����J5
(�z`"�����)�U�p�X���v�c�u��7��j^�BlV�b�{5�5*"�wD&|f@M�lQQf�pwg�{���E�KH>3�6 B�{S�����⯈����F�+kX�*n�bd���e�K���
lT�l��zjt{�
h ����~̈́by8b�o�&��N���PF�u �
�yhX���Uq�� �V"Q�hĝ�����m�,ma[J���CL�k���@����뗘
�xjMČB�=�;9�Z>+�j��|�R�㮇݀>L%��� �r,B(�ԑd�lw�$n��S��'r���Y�U_�v���(��:�W���%pSa:f)��;��r����U��Pj���}��Ae���_�L^Ţ���{�����L��qzG/�6������[WG���P �_ۻ�r�@8*5i���@f�-������XDץ�>��h�g^�je���$CS�:����̡nֱ5��4g-�r�Ę�T�#8�z����π
ԑ�s?�:f}C�x��q~���[+�#ʼlƎ:� ͎� ��>4FV*�(|�J�E$����!��/��|Ь�
�Ь\�V���B���B#���ƹ�� } ��ke[��塍���R6�R�>����H�˲�[�XP���mg�R�2�vS�D�pvJe�oMg5��I���{VR�;'��W�7�E�1q�]��ȯx��B��r=��1�L��X��m��B t������~�2mu���|#q�t�B6�F�E��d��R�+�0R��;��~5L%�"� Iug���C���Fn�_OT��p!����Yz�6�{�e�l,4���(���	��Ș� �ͬ���r�L.�RޜX+�#]��2��� E�ߋHE�s�g���F����ߗ��v" �EY$D� �ǦeJP�� �cue��J�7G$���,H>0�D�v�r�`�g�gÌ�@t J�m=A�P37�f�.���1��'����1�0�SUt�(ҢF�Y�H�j2�T)� ����f�7��ƸL��Z��$F+����FG�T�Z�-�OQ����tFn�Yb5���<)Q?�o���&# 5������s��u�G� A�k�=�7B�����&7�8�� �\�%��� ���P�^�� �Dc::7��=B��A�[�&bHy�4L;�j~e|}sT�N =����z+�MR�*�pw�7GM�B*��"�\V�� etY���6��7�+�[��ti'��;�N%���:�j��"�Pe�{�ڜ�\���q�z�)��]��Q
�֪%���HX��faf�{�vN�g��̓a(k�V:��g�.+Q�A/
�933�E�zo�jCI�uE'C���
w�?���!�8�B] ͠���?���1���QV�m���Ez�[�K�#�0��H�y8�p`�-ʘ-q������I�B)��s��A�3\��$c(��PU�!�(W'�G�Z�F�C�m��@����8���Ɏ���)�=/%-�v�#�a�Z�lc��.�b���A�M
¢: P���o�1֝@�d�L�[�+r�k�3�/�Lz�J�DDDSU�(�����L	�pr�~\z�W!�������T?��d�b}���!�h�z]g@�p'
%j �?v�Ν??�N�"��Ŀ[	�ifIA�X���]Ηt t, OsuG�Hj7d�,���ݦ�Q:l�bػrg��R�.i���2�_�Z�1�D�MjQXZ ZQ\i�����\�l���J0G"�7X@�5-Z �`�����M%U���ƏA}ƌ����p�a�1��D+�zvd���f�I�&<�6�HE�e���Xc�T�^��Y[k���G�G�L9� B����8'��K���0��S[;��N������r-WSApܴ�p�Qr�8�j7����� ��xB��6X�a��������慭�V�E�U�Ĺb(4�� (%x$���GV`U�m1	{m%d=`V�uq�����<M�,A�=\H,�P�B�h�F�x����E������5�
��K�o٫I0_v(s}��EZ�E�@i�ƥ��R�w>ȲN!�!J-@���q������)R�桞`�x.�����-B(�V��C��>�Z����dJ���k�t��=��l�H@�v��	L І"Ҩϰ�"�U��I�x��c�G��Rx$M����&&GQՆ_�L��O���R8%����	�$"� Q0�P��lz<�^��3��W�scF���_R]�(@�{��%��U����a
�a*�-h4�:��f��GCe�a�:�3��u�`�_��2�:��Łc?Z��Z�,�N�a����Q�R���k	45b7hX��'
�Z�xg#����j=)7y��-DW-��n�x�z%!>�G�$Z���u���:>��kIT�� �zj�Ql9]/�Z���}����x�uom��xZ P
��S���^���ʴU-9���MO4�๠���Wd�����#��T��y��tڡ-?*�VC;��Zƴ{��P�qss�M�|j�rͱ=��� [�P� ZTn�sP��Ik�R��怱F��g��ad�-K�C?��y9\���[�M�.Y���9��
Z��F �/ʄ]�_�e�Ze�|��Xc��o` �a��M, �����j�йg	�N��,��%�"m���?8Vg>E*��h��68ϝ�&	2��Y�ck�|�`) ���R�2��Pv��H2�_�p�6H��i{$\BC�	f�-Z xƻ��y��U)��\y��C]
^UH��m�,V<����\&kd�!��z����M'��x{	� Z���9��E�D@8��q��k��҃�J�b��-6�(f	�l�t�x�mأc��7}vPd<�8v�Y\�C��uN��$c��a;�#�"K�:����HWc�F(>nq��z��������^��H�y�Ao[8Ȣ��! z��s(ُɷ��)�-�۬d֘�hv؀��Ms-�*MK�Fkm6�L�����M�=R�U@(�@�դD�� }�د�E{�;����U���egա5��t�H��֩a���J�ƒQ��9+������L?�`��0�]�����@�ݤ�U�eƋs�/���E*У���+�_^�pǐ����rL��z8�v�� :��^�����1Hw��i��xc�8h
�y�1l�t��ސl�kʘ�b�B�I�W�\���2S�1n� �P��c�ޠMV��Z�^�_{��m��2+`� @J��F���Rz_J��G� X���M�JW��m��kG�h5K��#�<�\pg�?h��� n"؊L�B�5�Z1����Zf;K�yȶ. �hp�����`�/}*�1���}b#}q�-�Φ��M��M��Q���H��6U��!���X�ʕ�~�� 톣#xU=�Q����>*�7�l��Q]C�xIo�P�i �t�G1�s9Ըd&�q��Jj���-�����j�[�"堬��g�VJfGj�8;�"���h�T� #��OC~ؤQ�qE�J�"�2�LU��;�/��Xf"�V T�����ࡢ�6)B�3���LOhk�[��8[�n���_,~�o6�A��8�n~������OՇxτT<��-\��8�1�VI9*�)�ٖںdF�T��t)#�� ���J-#1N�jw����_�!c�dG9Hz�XdgѢ�d+Ow4E�~P
x� ������T[�P����kCүf$�:(��2D
>�0��X ���йc-����A��<E��}�s�� ���W���A�<)NB���`Vd"�S�*�5��������� 8�/�xe �l����ڊ�9�	>�ӣ�`T�C���EPu�+���}I�D��a����DO�F����K:˘�#]G0G�I��[�%�ywr`�
�(���H�3[19(=�f��q!���$3�C��z����T1��~D ���B.٢0~5�����X�[�L�r���zk�Ϩ�c��;4*"o%�gO��I���w����k4Z�7�g@����*w����f�ѯ�X.���5eayð�. �[��ܳ�ԣ��N�����-dQ���|m�~��O��ao�����Yf�$��+W�fѺ)�TG�*#�ޣ 4�_f���}��Y*�+��1�*��i��K��Y>U�B:�|q�I�Y!9+ޢa�/���l�~�? "�$��3���h�A�"��T�筆��I. ^{09X��%�M����a�z5 ��2�y�@}����H�� D`�@Q;@�Z�M������c��M�fعm�%���R�Ks��F�\0|�v���_�ڲ≥� �``�a�S���y*�h�9�c��*Q=��)I�3Q�^��Dp��g���*5�S���H1&��)ص>��n�����X��v��|YAJ��:u*�6�G�V<ǡ<��Ѕ�����1Z�Q��HƮ�˂�8H����{�,��F ��~���nqn�ɖ�O+����������|2�fH�\��z����k	V�`-�&��th⯞�r��Jo U���L���2Bu��M�9�UlQ�`�W
��Ml{�� Շ"���/��>5�O�U���~���0�Ǐ�R�O���!���Z?���dO���#��L��KZ+�B>��D(]f�p�����p���om*I�U�����*P8�~�@t-�,8j;�;�W�x�P�+�f�����P�*@���J�K$5JV����n��ÁT�(�a}"E穳�I�>�N �'��ֶ�*�?C՚���?�8��<�1�&��yk��	g P�4��?��X@�"�Ib�x��Z�{�)Z��,S�~
<>�$&��j�bLP��>7i-v�fl�J¢�D fQ@���fu�5�9��x̿�g�maG ʨ���V� �{,8"�1k�Y$ہuP�@�H1�Nj���Z.�[�F��=B�T|!�9�@!Jd�%���맰�� ·0�ˊW�m��"��P!�ϝⵦ��kcm��)�]��d�9�������ޝ"��`�F�2%K1��ykt�k��1�,��_���M>J�[��1���g�xW>U��ہ�9'�_N������<��r~]�&8�i:��6��L�u�w`8����$�7�C�Ͷ���RF�x:�ZG�Y��>���\Thk� g�ZSH��A���et  z����h}<�W�2 �!���&ϼ�؟I�;/�#�5����8�E �E������;�kW#A�(2���m#�Iu�����q�[=d���m7q�mdCj�By
�y+�۳K�q�[GPԇ�%.���#,��5*Β,�J��?W 3�>Cš�Ä_
�m,���dIa]���V���s�>�&�n�1<-�����k�r�2�"q��4�5��})�F����u�X��e�<�� m��z @��@Wl�C��L�8#��N���ߪ���p��׍�0�J, ���Ïq������Z/���V��K����8�$[�?J=R��Q�h�O�2� �d� ��Y|)��В����P �"���[W�(����8a��'r+T�OT��'�X�1����� �<��'���ͺ�˶�QV��*���|
�%�Rr�r�sh����e����L�'g���,'�P��ð�z+�	����T㏸]!:Pj�%Wk;��o�Ij�"KA_�
��AF����.��g�AA�1S�n8/X�e�X��?�~A/�q#ߪ�#��\2n�=�u��`�6�&�L�I^2X���<U��X� �9��m@���ن�ω(;+dvZ��9Me}0��t:�#5�m�%� � ��^�Q�a3��R�˷ ��r)���_>�������h�JiO��L��alc���P���M���*�#����6ō��$�T�.�
ypr��NЦ�0�L�Y��&�c��x��lf�!�P�շ,��Y/�+����1����+�(����C��|<g��B��j9�H89a�tǘ�h�Zb��8���({��4_:�E�4�.3Iߋ�*�
Ņ��Tgvn=�@@}I R��?#=(i��嫁B�T� '��N���#�!�+��� ������� �|UF����D�N�V����}�5U� :����Y�^I|�`9����n��녬dF���wT�j�%����{�53�~V��
�":a
ο�	�o��YJ� ���/
٬����8��mv��A��0��'�T�H�њ�^S���X�'ᥗ�����c����a�	Ǌ�ƿ���RMg�E�kX�	��Q\���6S�4�x_(.�� �[�����`6�ޯ�����~;�Y���e�a������M
)(�ȡ��T���n2�ED�X,�Ы�>������H���eEf��C`@�]%k4:-;ڠ�i���v�i��\H��\�^��ѷb�HWM�o�M���8_����m29a�8f�g�\����a�V��(����6�~��jG<�(Ǌ/�Z�'�i���"D�j��L�#���X�8�-�ԢF� �1<D���p\e�c=w2�vQ�5m��_���F�hI��J��V���O��� tItb��7	T�hs�Hdc�Zv/[�Sf,@6gߠ,�彷��5P�O"`x�]2=�� @���xf/��n�2�I8�����PƬ�,bG�9�V;�����K��ia2ؐ�юxJg�:��4�A�>���1�+���jcD��Y� I�bπ1L�����:��	�p@��W�)�~��R��D�l�ݬ0�Y+�yb��)���+�@�9�Iوr�K�qF�5FbXI%�n׉������>>�v$]�Hu�q�w�����FF����"C� 3��)%�V#~�B~�aS
N�����@C)K��*%JI��,�&�㽯N���*N���\ԶfE�r��]�{��K4��\�pQ���)�U�@R��;����}��=��1�:�i�Z3I���kV�E��T�W���>న�l!�� ˟W_�Q�x18�J��>�$���w�w�4��&�.������і��Wn�(L27k�֋��D	B�3aG#���C5"pG�[C�0�k��� \��� 7�Q�A�2��E{Ez��"..,�Y������#R⢋B��'�a?�uW�)bmȪ
��*�`���Lp[�0�0�6ˑ,�M�<a���/��l|!p>#"����.D`k�ݦ��2܀a/B<w�Q�����&L��n�{͸`b�V���$�/�5���y@��=��^�X����_�:�L�R��?Z�6)cO��~[m��"��2�N���	r��!2V>
�EZBܥE
T7��ؿ[lU�$3S�y�ı:�d{�b�?k�fX'���j�"�0j� �9�D� #7�k���G�i�v����Z���:�kHx��j<�T���\&����a\�(t
�I�\F��\�"[s�0�����V��`�b�G�p�L�k¡���L@�ÉY��^�X�	��?+R�+VJ����6�FF�*~�u�`���@��B#�-r���˒*�N�q.RO�8���GF�4"{��P�uLQ0����E�jx�a3�@f�<K����i�GL:�{b���2�z��댝��&�j�\i��_U�~���嬪}Rr^r���|���4�"�%%-O�:�D'�y�B7��,�fm�K��}@���p�R���/����W�l��8���} 2�6�w?�&�;�8/�<�?�j��ȕ�c�J,�Ũ�W8OĘϊt����?Rr�-��}Kk:X�Z)�{��ɰE�8��-����cpF���n뚍�����f��6���31�I��
��V��FZ:����,�W�4��X�mt�SE��Q$Um��D�K����#))�חA��Ȑ�G�n��~x��Rc�!3�E�=���x�\Erp�v<��'���"��Fvͮf���͊ٿP���/4�A�l��m�`��Z�� �gq���`��� �F��be� � g	kt��U������:m �*����Y��}�E�����P��τz�<K������O't�J#���~G�Ʃ��v��z�q(��@���K�ÊO�ާ��E��qgL����[IV2h�伵J-'�p�%�:%��/ͪl�JzTL����HHM5�'^�@G``�X�0䖪�^��^��	�K1F �7Ҙ�c�R�3�m�߇�]j��y�?�P(�|�d�d����˾���Ru��a�N�O�c\31SI1�B�=�Ċ�͚��u*`i�����"�4�l��=������B�i�3ұ0X�X[k���sQ��)��'�d'#�<L'�
�m��~�<�W��y����<2�Yω�˰�L��X�ь�!CH��:f��J�d�*^N6K��{��;��g�{���~?%V(���x>o�牚�r�.�%�U$W-��V��L����7� V+�O�Y�.�:vu�4�Re���x���ޙ�����Ö����d�F|�?tJs9�.P���s�e�2�*6��g����u���c/[./3~39;�N?�g�y,5�q��я��m��O8Wm�'�^�@�+��e�	��{7k����;�����a f����`�C%Q��6X�*��J����� Z��	߽AA�m�rY4�.�"��$'1�J�,���푮�A���c������q�����wӎ�l�8�<I��n�|�nŊw�R"�U��|^��$%}�1��FR�+��T?n,��^w�<�	��!���{(*%��c��l��2ؙh��3��Qٶ��g���b�Z�L�}�!nJ�� rV���'!#��J���M}���Y����,.��+�Q�$Zj���{r�6�ǒh��3:�rQ�\���q�z�M���o_���0M�u�M�Mz���5
A�a�0ր�S��k�'���R��z�U��(N���|m���zbwV����v���	 ΋����$����ýB�c����!5�~����$�>��%����1�H	yJ7�����hCi9Ya���o^�հ1�A��"D�f̞Uk�!�Q����� ���==Kw �e��2���+Qj��⹑�6Q�#)pto�Ê˫�_H�Ad��W?� 7qT��l+�j$٪�?<��i=�}�x�Q`ԄD�b?�0F~��{#�!D��8l�!�ڲ�[�b	��m��Y���c��.�h/Ez����q)�چ�X?f=>�'�j� ��[���BtG��N#�x�f�@��9�ڭ7x85�϶��ϖ��`E�H�_5���`)�o�_�m�nJ��`R*���}��H3L�`�K6��\���_������E���cE��$}�(�����FGm���"��l����Eb0G�R��0y17�8i+9��?zΔ�Hb��n����xF��@�L��c�Qd�-j%zGp�jEz��O��<*@t��U�����Q�C=�`�h^���㽐Yc�.vZ�E#B���ѣ #|�1�EM�����|D7�g2��`��(�� ��_�`�,�����o�����3���¤�V�����-KC�%o�frƐ�&�&y����2V��X}��֗���pڪj�\#a x^��,�F�+3��F0��Ȳ��6/���=�;>3h�{�>�k,��$�����1P9b�O	^�w�f��M"ce�]r�������8�Kgm`cH2~�$/�%7HEj��b�:���i��d��'\�s�|m�SԌtp��c�m��c�_��z�S���z12�b=MSm�+���E )[����N�d��lN��&���[@}m���a8���{.�lm��KRn��Y�`��6��H������9@�yy���y�
 %��Yj�8��;��.�W,�"Nr!NZ!�Y�z���N�s���m��鸵G��$3J�W�_�
e8T7g�E[�?�^�[6�:d
��1|�ۃO0�D�T�+�D�%N3fɫ|
l�)��
�5�I0N�l�}K��4�N����JJvT��2~�2r�mv����JķV*���$�|��i;���%�9J�#�����R�ꢯϮA�g�)^�Gp(G��1�#�E#w�E�(�����ˉe�Ëq�'�ō�^à  �>��ͪWS���!�:}LN9%M_[B��������F��;A��m����Z�^��6	/5d���ץ��׋^�/V�a�٬IX�b�5�����R	:h5��|� ^E@�WVy/� �<����GF����Z����~��������̞evm��1���`۞"���(hRl���83��E*e���!6��BR�~&��c�눞3-���I��Ɛ�����`�Cʅ��j=]�u�z�-Q)�,�I���e� ��s��I�-����/_O���<`�.,��{@��b���/@w,(={3����b��\�!Ր���T��G�*��\�7� ��b<����2��Q�M>b���$��}a)FS$*��k"�b"h�B��eEFrm~����H�!3�8���v�b�A��H� �"!���6���4��͗�	�.$N};����G�H���7����_�� �?-���$�ٓ�\���V)`�=Ʋ�"���A=��i ����RO1o�PЫTY���E����K)�1�m�9�N&��j�G�z�����Y�	�� �.�}缬�);�mrٳ��Q�D�%�	0�r�����n�R2:g�/	T���+G�>@�E˖j?&�N߫�	���h{��y���� W�J��Etz�j`�\S��8*\�/����KB݈-:���y-�zG��d;,�6�}l"��(�r�ц��9� �ڏҭ5�3)���]��+Rg��*p��$N�ap���YȎ��"��Q'�A}L.Yf��x�k�0������Y�s ����
���{M���e��\�޸�O2���dp�Ch���0��,t�S��X�fZ��FYs��u㼔g��=
�*��cf�"a�E��Ϡ?���9&�=22换��-�����L?�-벗��rq:��c�*+L2Cn���y��e�^&_Z��<E�Y�+��>Z@����_�r&�u�Խ����",�p�'�S)R�x�d\#7�ɕe$;Z�f���a5<�c1�VP'PG%���2�q�ɵ�GD]j��_��B"Ű1�:��[��@���Y�����,����'xc�0���z R2�i�Ī񻾳I�_�;F�NK�9e��\0D)�d��r����G�zN�Z?�/�\D�ES)[�����'y�`��GW��0�K� cI���N�=����h�d��[����� �r����F= �z�ʰ���J��+��Rƒb�7�$���#N��W�=R��B2d�$d��ҳ���HIٰ+�a��&loS=����ITm�����[�˴]��-P���e�8D����[4��.� ԋF_�K�O���I�%���s!��j��s���o�R�Z����2�[?�
����G� ���:%�{b��3��*��[��VrdE�H���Cd����"���o������*l�'o��G22R2�&�^ю�R�dZD�ɢI��C��r_�V�*}K��o�d{F�Ys�KU�P�w��|�L,������5 �+nf�5���޾�]��20��T/!J��˪if� ��;��[�x ����a�`�!z-�V�4�tV�1������!F��N�E��#�A�.R�>?�a�������}sa�p�12R�L�&D�;���{x�4����+���aX[&��Q)^A�"KxN�Ů9nۦZ[�(���"�[T}�ȫ��6%��i�������2H0�)G�al�(�-�f	�di	��wm�ӂЩ���KF�X}��e��Y�=��R����b�!��K�$�B���B�5��ĺ4����1[?�dG�H�[ɿ~Sx !#c��#�r�=#X� ��X�-����%!�"M���ۥ��8�[(�e]xJ��Ƨ �k�]Z���Y��W:�0���fA�lxȐf������B�*�M��v#��EQ'#x˔_������6<�V�y���b �N:z�v�h�F<���	,T�9�H0�`�����{zD��n����?��T0X���H��Z�?��+2������ʼ��xot�}m�-*�[m7	���
�@����C�7��rm�G+��[��٥19����8�?H��[��؜FQ}�U,��Kmr�_&g�N'=�I9Sc'�P��[õ.����Y +�CBu�B'>v)[�F��Y�^j�E[�,5�5{�$D�ݶ�e0+�!L�(]�%J(��g{�O+<��~��(+�ӟ+)�|����|*��CFN�;KLWf��S�vF�󂅨�N�(`91���|A|�U��]:��J��B�9�T� ^����bY �Y�����������ƀw�qSU�r4�>�\\F�����z�l�X�У� ��b��-3�����E��B��*q^�,�6K� �0RR.&Y�B6o1�8*O�/Qf}n8�@�H�Ɠq #%%%�|f��xW�OFJJ��A���k��=��*��@�#�7U�X�6ʋ���h1b��G��v*�G�j�@u��z`�s����]� �6i<��>��pz_R�^�����3�c�޼�DM�0�"�j�Z%��i@��̠�V�'��C/Pw��s�y����P�"����]�i�
[�� +��H8�[�868�K�z���%��R�W�TVj/X�I+�$Gg�q����~�
kCL0��M�9����ɸ0�bz�d$��:n�`���h�0�H͒b�M�(���Yg��)�L��#M!�H��HU� P���[
�X R-"	y}��!��U���g���n�3Z�(�lt�D��(N�nx`�I�D%��Ai*u��	�Z|-��fa��=*%�i��NYocw�M�f�x�&��O�����^l!h�{�3v	�oS4����CNJB~-����y2	y	��7� ��	u�!x�����z���u�|o��2TH�d��a�� S���L�b���Z�Z*����4�(���#�pT�c:�*�
��{"��4��k�{�!5�OD)��n�q�+g���.�̵�n�� �,��Y�j�Q�|� L=C����P@�k�unӠStN�001�)C���ef֪X�s�٤L-oS��IXh��UKg�u�q������FG�[��ԩ��\� 6�"7Q?�a��/��S�;�^�nU�H��0d�$d�d��d\8�[��>�k����T+M/�/�-�Qjm�X�$"�5�++RRrㅺ,�*�J�9+�<�?M��4�����TnY���H^�ם�b��,_�y�Ub�!��+���;ꀻ,��`�e���N+�j���߮��2h@��۞BL>0 |,��j��<]�t��l�=Z}N9�V�H~�%�'�t.��9�m�De�E
u�O`������h��������e)k�4�\���� C0�`RJ�&��s=W�I1�d���lY�a��h�L1����+k����_i�IOς�?��Gd֠��H���˔a��F�&���7K�<�m%�~ׇ�Tf�`�402�Pg�<� {�:�@��C���+@�����Cx�/=֊�:8*�c�<��������42.b춞�-���;k��A��^;�$)C#
�J�¸u����6*�/���O�*q>�/�VD��S>f��"!��h+l��K�["��>0��̺ݣ:�w��Q�.�����>�O\��y{;#O�
Qv���2뭶T��b-�(��}b$��j�*%>��	��w�gnz��T���R��3�z���a��X��9�@�m��1�aMj�UBZ�_�5���3���Z%�W4x*m����*��E�� �Y����QKĳY���9CD	�r��!�x��%���}V nmd�Q,�H�ޠ��I� E�	��K��<X�6Vi�G `�W�:�oL��mD��-ۭ6ُz�,^�E�]v�Qd�0��(��82R�8�2�x!���+���ֻ��ebԡ��k{���_CQ!�q�<AP������[�N�Vf��Wl0K�-*U*j�FNNBNj�y�I�b�u�:*�v��k��S��D�<��^[��^�5�VE
�J�����B&@h7[ #���^q4L�"c�b�����]eޫ�7��6:d/#q(�O�;�a��8<���S��ݠ���⦽�}��i��HV]*Z�v�(lo7(
/����|�"��e����IΚ�aÁ��	�%[�~|�!♙����+���?�������B��H@�Tn�7S�@��EK0�81�!!'�l��m�e�-��IrA�;xF�x[,P�_5�i)�N�?oF���6���Y��~�XMvh�2VN�^��(��6:h��d�y��W<lL����n��?�����˸�@pį��\�@�N�<�n���9���EZ=�LL�D������-��%_o6ۧD�3y�gCΆ����R��e�.�V��`�}nyG��!F��5h���1�Jf8�MVR����q̔��ԧ����Yh�t�!�&�o��҄��x)&�d<�kR.�����*���V!N+Tf�O�p�Z���W��=aba�<�ɼ-�_\I nɖ��c" ��{lwG��U�H˄]�9�[B�/t���\�R$�x��U���{�x� Rì��n���4��/�gBm�bP�-�c��VE����+���lc�V>�P#��k�(�����H�+�9,���[&�V5v�c&WR2+V�p4��i6Y V���+�o��V[#�1��婧�i�L�����ǣ�Ȃ���x"!}���tS�ԬK����![,�D�-��JQ��6�VXh%Gc��ȑi�
G˅��+)��[�G�TYN�S��Ǟ���`(o!v���@M�����(�,U�_�W�S�=jm-X�<�K'�L�wn��{��_"Jg�TZm�[9w`�&J�g$�!���Mq
��W5�TD ��g���;e��x���RSm'���_�>Z+#�w��!���P�B�R��Ord;&�^Y��Q�(%NH� �\��&%'#�`HY���i�D޶ʲN�dQ*�(tX�:�
쓬T�B>���'F�=�U�T�L%S S�\��E(1�
�xǞ#GV�V�䬹f���_�d�٨P�<��;��.���.Zm�`�y�c��8��l���3i�C����J��N�_4��}J"]��ߒ����,�G��)�d����"�޻x�Tb�9*�d�����x~4c�hA˄�f�^�5 >$��(�>8c�^_j�e�]Rx�QR��}p��E�h�u��
K`��/��1����_�56Z'F�-N�T���ˍ�BΚ�C��LmhH��cm��xq���pv�aˉ�A������X�r3R�"�HrL� ���m?��J��iN�W�v"�._Yn�5�8�_�Yp���=����/��S)"ӂ���3��7����xt����}��q� ް�e��ֳ�<9�vu�ijB�g�Jl5���(J��U-�e�1�	�j��OdLRJ��l��!�	/t�}D����꼕:u3031���%�m��)�F*����Hu�N	>�%M�@Q|�	�A�l��4UKtN�`�J�f�TkL�m��Yc�>|�P �6˕�u�r�qJ���kH�D�$�)��4u����u3#L���k���$:��&Ff&jm�R������+��p� ����{u�:G�
� �3κp"�[߃��xu�=O[d��`Hq��*g۩��(�6�����!���F�֍��M6<����O��
��Mg�j����X�{�kf�4=�z�\�z豌L>��Z��|,7�B%>�V=�@dХ˿~�_�����Z).�!�9�U�uP�X�"��$�R[lb�H[�*A�p2E:,S�}2p@�*d;�R��r|�״��(�����x�͵L�T{����ˬ[3a�s�l�j�|a�\���B �n���0#;S� @�aZ4i�A�w�zȑ�p����R��.SfDE`�)`('�P�{�9ǌ�ٍ�Ș�� ����a��Y����:�V#R�5�)���Q�	K�����Ϭ��k���H�4��Zc����M=%�%������R+��>x�o7}�c|l�k�t�{�׮��R/=3��H 	L,��I��fY(��X�r]v�[:Y��L4ڎ���s�۳�����xQj�׆�M��h�]�3uz�?��202��{�9��й�CQO���-&�Ŀ�܁�W�"�1�xq�Pf�����'a��xzjP���<[�e>j�M�Cb�s[�[\�L�>ZY��"�^�^]�T,8�fO��;d)� ^�PQBll�ռ-��"+��j��|,��"�-0�+,��z~B�%Z�L�J�*����k����T4�Zt0�������?^�$�NX��q��YMڨ�w����+�zZ�a'���wO�,
^��!�Q[L2��䝜{4���8[(���ӫ� ʞ�s��2�P���[mL���O�V��ƈn������^Q��V椿�us�33�ҡ��J��τe���P�01Y�qt,X*fzj:*jZJݚl;yJ�)+_��a���:���X��(�Y��k�� mt�B#�x�&4��|�T�a��-O��j��d�^J�ȹS3ؘ(V���xhF��Π�bd�U3��fԍC�%�i��ᷙ�K'�)���K�Z�6)���TK+����ͻ�����;���#�W�V�G�:U�]�%G孾��Y�>o|&G3P&F���K�t ��O߻�CPo����L`���6��4c�d�M�!�zn�]���/)ޞ��sM�ծ��`A ��pEU�(s�N�'�Lg�����/��)�F���DüK��9[y��o�2f���Z�jU��p�z%D,�''F6>�Z|'�cBj�e¿�����Rߗ�B�+;��a�	l;�c�݋�� ��7C�
qFre�PD�������n��I�������)�Z���W+���>�_�
�R��t���k�D�r���q��^���r����U'	���4��k'D	�i�"���B+�7#�t4h�?�je�:�U�2
(���}�}Dϫ-��sK�jEP�i(W9�ϴ�͹��5}�Xq�B�*���c<�2�Z�?��/]ዉJ���Q z#����8Z�}���`�"g��`��O�W�J�(��}�/7�ը]�V
:}�L�x��`e#(!b�L�t�z������� ������Q_�Mǥ�DXi<�H�p�f6�|pI�V$ffB��>��e�����}̞���[d�A�T�mi��C��D�gWC��(�E���k��b>�i�2���主�u�V^��4T�z��{jz~c6�ڼ��?�����;g�����/K�ɲ��O�D�
d�W-G��v8��>u�'~��������0���2�Ш׮�#}t�WM�v��X��t P&Z�������:��4�(��W$�/�x.��{_���y�@C�Sh�M<99�Cz���K���gj�)�鱔�(�T���Z���ބ����W�.}��X,�' DͶ�m �"���b���k�P#�;�����開"\�&�OhiX���ˮ�)W�m���У(����N���2�˹ou9��7J�����j�NA(��7��qY�i�b!&Ff*l� A�/���Z�q늾3�� ��e�R2Щ��Z��A�GztP0Q���	xbY���Ytjs�e)~�Gh�fF�aooLt����)%A�4���R�a4{2̛J�:#f>��L�Y�<8�Ղ��sA���I[/�ּ%�陨�;�਼��*|�����b	X#G�U���p���yK�|�V�/T�L�{�d���'�� ��s�n�*�sg����ι�3����1R�9�s����%R8����~�9����&f,-#�>��WO�����V%N:�+~��nx��Z5��AGOO��H`����h�ҮY�W�y���t�o����ʅ��ڣp����(�hX��w����=����	���4�-7����CȮ�fέ}���nfZ�H�h���w�P���A�����r�}�S��XF,-33�p�����/������#��9,-5-3� ��w�
�����3/�����;Ή�ɂ����R��{7+xgL��	xZ)�a���d�vE�=�����MQ]'�d��m�n',ψ��23�2�21�c�8F<K�"Ey�R���k;��z!bP�,�"�����bj�XË-������w_W�7Ӱ\��2V������s,���%��?����S0�̿�>�Gd�~������J� (οl�n�B��k�~C��_�{o��GJ��X>���oWv
�Q!P��K���RF���1R�b���*��2>�ڗ�8A	���l�{e�d;�͖���i��L�3�y�h������8�����!�u�7�4"��㙨��ҩ�����G 䵎 !�8=-�>�:��&����k���c�\1�O�xKR&�t��^�ì��n�b���J�v�k/nm�(B�rͩ�-��?������'}��xoxs�j���T�Ql��@ڲ�)�����#7l��N�3ypa�E�nT���-��r�1��Q��P�p�7�fڢ�q6�ȍ#k�h�#?|̽M�H|��𴔟"�e�6��\� �鍅�S;�B�~�̷W��L=;�@�]�Ɓ�6HwP�@�xqau6���ew���]��Wc�V�X�p+L�Ν;�n��1@������؏�C���7�ġ���]al��0���(�K�u�qasd�~K�y�ރAz�*��9�=R�Fr6��DU�)i��<�sa'��txE"�&�\S+�_z���g�pz��H���QO�D$���y$�-g��L�R�B�)�L��r&;�z5���{@}[� %ӟ�1�[l�$��Q&�J�yq��^��Z(�@���{�/�#�-�ז�F�p�]o(X���	����9l8r1�8+��s�.��-5�����0��y���ON�9��r؛h�YU�P#E�͖�k��<�q���`�~���Dv�D�����312�Х�s���N:�?]�T�z=z(��Xp8"A"���jC�����yl�r�̕'/�M��J�2�V+�VK�0�����J7�T��y��ZaEʁc3�:�DK���u�$	��Bc7�'6lٲ���|����k�y�A�^ZzfƋ��,���Z��t�5_:�X� 3-3�`�8s�a��f�h�D%*�G�4�6Xg��\�2�-9�a&-�4[��g��G�bތf02R2r����(�����*Vi�J{��9���/T��6��B�M2��a�yi��Xh��6 Z�xY2�ک�Quۮ�N�rl��:cL0�+w��'###m�!o����ʕ�0��v���T?`Æ-7��j��L1���4��M���5�T��4�h#L�a�\xqaϝ3�\X@J�l�q��9�} [y�䊷���pN�u�HI�DޓK.v��	��/��#Wݻg�2�M��^w����������)#�y�Y��������^�������0 3�ܟ�+�;�q[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c1ymaehyilvev"
path="res://.godot/imported/bonus.png-9cd5e9f7ac0b8040446b51f674236424.ctex"
metadata={
"vram_texture": false
}
 �=�k�iᨓ�asj�GST2   X  X     ����               XX       �  RIFF�  WEBPVP8L�  /W怒m)0�?�=���@ �c�I �kN i����ܶm��蠿�s
� ��K�nω��.`��dڗ$HZ��uM��@���W����@�@ y�"b�"I���+xd�uD�	&i\�_�ݶ��m�+0C�l���T5������n�a2�U������-�w���K"��m$A�#7��9�y[�����������������������������~������~���������x'R�M��O��粒�����gr��V�?����Ū�����G�� ���^8H�.B��^��JBz��g��I����`Z
9x�
e5����<rC�]���$�W�J�H`Of����P��>l* �:4	���hC=F�+��N�b*�X��"�(D��HfыcI�
�I�bA&9x��~A�k�YJBL��H~mW��⇧IQYN�rq6y."�y8��{z��*-��1�?�z �V�<�<�!8���{��1�W���
��dP���Vv&ϽD��?��}?܏�TP������r��\��5]IHu.-rl	У1��ӂ� �E��7��H��pu-'��0Y���=��J� ��nS	C�_��zz	!�A���I#�$)�z��"@m�.��K�,M��>���A�O�Nk�YJ�Q��Vk�<�?l�� �V�(�<�wà�>��ABY��6�?,�d蹚�9�ֲ䫀����7	��fA���ㇶ�|�W��yn��2h�����Q������`��fh������L��E��"���d� ���iAr�G�ʢ0co�摰`�LYˉ�$����3S�Aq���nC	�5f���H.�S9L۳9i�`��ü}�ZD�%W��`��ǐ�Sj	��?�3��Fe���5n/%��g;`��.�#�}o�rQ9��ywr�]��r@���\� _��&!G ܜ���[ё<�#��C�H� w���^��BB� ?�$!G ��+Hrx��;	9�{b(	��٣�� G�w�I����Hr���i� G��[
پ����1B���2�
и�X� m�ǉ��"�ig�H�Q1?S��D/���o+RJ����ߏZO��߻�o*���y23��i91�_Dț�y�dȃiAZ"$rl����k�Ғ!��Z"���~�"B�Vv�%Cn���"B���M�ː�e��DH��$����{z��2�rQ6-�>�a��+����h��j�YJ�ۦ%�V��LZ�)Pg�腱�ⴟ]��t�~[-;Un��9i���jg��zf4�X�[F������R�1���L�e�����p~�[eQC�]�GKm���`Z����1@��`~�F�߬�Zӕ��j�ݽp��^��Rh�����b͂�tV��3-��Y׭��^���BW_����u��'iZ5�siٷ�:�ݘ�����a}�Ӄ��s�S�8�����K������򇵪��������HłLZ������ű�b�2�5Q����Q��"=�|N:-���@���b�$v�>l*�%����TZ�O�3�j91�_��E7�]�GK���� -���pI��`~�~���������׹R��Z!����/� �/t����LK(��v+�Q�Cp���}�{���A��si��apJ��$�x��!������CY��K�iy��׉o_Ͽ-!r�$�ig)}�eR��d�ba&-)|��襱��uJ��d�~[-Q�8q�s�iɊHP�����B���|�T@K^�D�'�Riy��T����"2������hy���ԃi)�Ć�*�����"8&Ʃ�k�Ғ��k���=b?}?<�_�� /Vu�%@r��V�O/"d��׳���A��/r4Z2��X���������������������������������������������������z�����[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c3y8fe6tufxy2"
path="res://.godot/imported/cannon.png-c8165b59b59e617504277f5358a76b07.ctex"
metadata={
"vram_texture": false
}
 ����AE��=��hGST2   �  �     ����               ��       ~  RIFFv  WEBPVP8Lj  /��� o ��n�ڶ��2��x�b�� `!t����H�YЎX"� "r(.�g�#ؽ��7��E�D�l*�
�G���2�T�����D�ߑ�F�������nͭ���/�|U	���`��͂@)t�K��Z� �
�.;^6
&�ߧY��kA[�W][�\���3�S�g������ٯC#��<ʂh���S%��EF���.r�,�G�Qy<�d�z*(�R��UN�fe�T
�{�(�SA��R&DY&�L�r)�<!�˺*��>V�S
��R�S��H���X$����C)(��h��֦��F��k�����Ck���Z��$!�e�X�Z����u/��nh��X��z�^�C��:e�|ם�� _��lN؝=Wg�� y��'E8��kF{�l>�
5�Xs��o��A�aѝ[.���s۱ߓb>���E?��������C>F|o������0w{�>�]h؎���δ;7��as�O�pn��[�������{��߻��!w{�Ws{�W�}�q���yNg�s��M��k���O�g���0����1&y߻���w���0��������s��nc{���󿅆ۛ��n?�=�n�����E8�Y��[߸����17\�w�������ݞ��ߒB>6\}�;��~h����>7�~ k���#�?,����C��n/4�nw{�W��������u0w{�ǈ�7u����n��g���=v��@> l�����\}���l��S��G|��{�3���Y����n����>�8��sÅ<'�3r¹}�s��u��'ȳ���w������<���~�Ն;��pg����^`~����as�����~���B��MrÍ�v�x�ݞ1��_���n�����0��~��cn�|������=[��%�|l���7v¹��lw{�<B�Al��������A����,s۱ߓb>���E?��������C>Fln�Bc8���s���3߅��8�ݞ��|!���@�G����>u¹���oB�����~�=w����~�pƐ��0��������s���g�|n���pFN8��tn�����y��������a�G��o����g�y���1?���ܸ��~��n?��	�Dֹ�����/��߻��>tӹ������j��A��hw������^���z�����^��n����17\�w�����������`|�g���-)�c��g����f��3~�fn��Ytg�H�fn���dm{�}����v{����C�~��&��G���o��ny�lo��4����#67\�1�jn��g��q��=ߟ����L�w�O}fn?�x�I~�;��熫G�ī����;��>�{��;����o��c���ǐ���=��(w{��	���n��I�s��#�y?��;�ۇn:�_[�n�<{6w������<���~�՞7�<3���n�����ƕ��36w�ywN'���^���������~���.6���nϘn�/W����F����n���o���#�����q����cn�|����;��>����`|�g��������3��!��~w��ֹۯ!)�������-4��������_%��\��rE�ñ��;�k��<�P&�
���(�()+YdORْ��uAJ�Q-���[>T9�����z��ʣZP���T
(��ȉ���2I(��S��2)�ߗɺQ�X����}mjA�7��QP��1k_���XgG��J����ޚ���J���KAѲv�@�͵���O��o/x�z�1���}w.�/�$���IgAp�Yp�\6���RG��R� h��+͂k��e�`�^�^Wg�m<���X���^�s���uw�]�翎����/�<U� ����.��Fx[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cijswtd0t0g5h"
path="res://.godot/imported/tile.png-6f57a1cf4157579a1242db52b7e29bac.ctex"
metadata={
"vram_texture": false
}
 s���7��*2��'GST2   �  �     ����               ��       V   RIFFN   WEBPVP8LA   /��� P�fU��I���dD�3�����?��������?��������?��������?�' JZ[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://iue1342pqast"
path="res://.godot/imported/wall.png-ec0cb1e2e3aa0d7772a64eb35046ded9.ctex"
metadata={
"vram_texture": false
}
 RSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    radius 	   _bundled       Script    res://script/ball.gd ��������
   Texture2D    res://res/sprite/ball.png 2oR��      local://PhysicsMaterial_xn6ec �         local://CircleShape2D_gabwe          local://PackedScene_ncwkk F         PhysicsMaterial                      �?         CircleShape2D            A         PackedScene    	      	         names "         Ball    collision_mask    physics_material_override    max_contacts_reported    contact_monitor    script    RigidBody2D 	   Sprite2D 	   position    scale    texture    CollisionShape2D    shape    VisibleOnScreenNotifier2D    InfiniteBounceTimeout 
   wait_time 	   one_shot 
   autostart    Timer    _on_body_entered    body_entered 0   _on_visible_on_screen_notifier_2d_screen_exited    screen_exited $   _on_infinite_bounce_timeout_timeout    timeout    	   variants    
                                         
     ��  ��
   ��D<��D<                       C      node_count             nodes     ;   ��������       ����                                                    ����         	      
                        ����                           ����                      ����      	                         conn_count             conns                                                                                       node_paths              editable_instances              version             RSRC��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://script/bonus.gd ��������
   Texture2D    res://res/sprite/bonus.png ����B\      local://CircleShape2D_vhxqj �         local://PackedScene_fo5kh �         CircleShape2D            �A         PackedScene          	         names "         Bonus    collision_layer    collision_mask    script    Area2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    _on_body_entered    body_entered    	   variants                                 
   ��L=��L=               node_count             nodes     !   ��������       ����                                         ����                           ����         	                conn_count             conns                   
                    node_paths              editable_instances              version             RSRCRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://script/cannon.gd ��������
   Texture2D    res://res/sprite/cannon.png /-D�9^   Script    res://script/AIController2D.gd ��������      local://RectangleShape2D_bbib3 �         local://PackedScene_l6amw �         RectangleShape2D       
     hB  �@         PackedScene          	         names "         Cannon    script    Area2D 	   Sprite2D    scale    texture    offset    CollisionShape2D 	   position    shape    ShootingDelay 
   wait_time 	   one_shot    Timer    CannonController    AGENT    Node2D    _on_shooting_delay_timeout    timeout    	   variants    	             
   ���=���=         
      @  �A
     ��              )   �������?                     node_count             nodes     6   ��������       ����                            ����                                       ����         	                     
   ����                                 ����                     conn_count             conns                                      node_paths              editable_instances              version             RSRC\|�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://script/game.gd ��������   PackedScene    res://scenes/tile.tscn �٣-i1,   PackedScene    res://scenes/bonus.tscn �C�mB��7   PackedScene    res://scenes/wall.tscn x�e0�U�0   Script    res://script/GUI.gd ��������   PackedScene    res://scenes/cannon.tscn �S�!'�{   PackedScene    res://scenes/ball.tscn )g<�uU�
   Script    res://script/AI.gd ��������      local://RectangleShape2D_638lc �         local://PackedScene_u4vrj �         RectangleShape2D       
    `�D  PB         PackedScene          	         names "   )      Game    script    tile_scene    bonus_scene    wall_scene    Node2D    GUI    z_index    offset_right    offset_bottom    VBoxContainer    Score    layout_mode    text    Label    Hits    Balls    Cannon 	   position    ball_scene    metadata/_edit_group_    AI    Node    BonusKiller    collision_layer    collision_mask    Area2D    CollisionShape2D    shape    _on_field_cleared    field_cleared    _on_game_field_cleared    _on_field_exceeded    field_exceeded    _on_game_field_exceeded    _on_cannon_hit    hit    _on_cannon_shooting_done    shooting_done    _on_bonus_killer_area_entered    area_entered    	   variants                                                       tB     �B            	   Score: 0       Hits: 0    	   Balls: 0          
     HC �	D                               
     IC �D                node_count    	         nodes     k   ��������       ����                                        
      ����               	                             ����                                ����            	                    ����            
               ���                                             ����                           ����                                ����                         conn_count    	         conns     ?                                                            !                         !   "                     $   #                     &   %                    &   %                     (   '                    (   '                    node_paths              editable_instances              version             RSRC�}�����ZRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       PhysicsMaterial    res://physics/tile.tres  �=5�;�*   Script    res://script/tile.gd ��������
   Texture2D    res://res/sprite/tile.png ��_}uMJ      local://RectangleShape2D_qvp0o �         local://PackedScene_ocdte �         RectangleShape2D       
     HB  HB         PackedScene          	         names "         Tile    collision_layer    collision_mask    physics_material_override    script    StaticBody2D    Background    scale    texture 	   Sprite2D    Box    shape    CollisionShape2D    MissingShots    offset_left    offset_top    offset_right    offset_bottom    horizontal_alignment    vertical_alignment    Label    	   variants                                      
   ��L=��L=                        ��     @�     �A     0A            node_count             nodes     6   ��������       ����                                        	      ����                              
   ����                           ����                  	      
                         conn_count              conns               node_paths              editable_instances              version             RSRC��_5뿯��5םRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       PhysicsMaterial    res://physics/tile.tres  �=5�;�*   Script    res://script/wall.gd ��������
   Texture2D    res://res/sprite/wall.png �(��[�^      local://RectangleShape2D_2p44a �         local://PackedScene_byblp �         RectangleShape2D       
    �zD   A         PackedScene          	         names "         Wall    collision_layer    collision_mask    physics_material_override    script    StaticBody2D 	   Sprite2D    scale    texture    CollisionShape2D    shape    	   variants                                      
     �?
�#<                         node_count             nodes     #   ��������       ����                                              ����                           	   	   ����   
                conn_count              conns               node_paths              editable_instances              version             RSRC6Tu��class_name CannonState

var cannon: Cannon

func _init(cannon: Cannon):
	self.cannon = cannon

# region events
# called when the transition to the current state happens
func on_transition():
	pass

# to be called for every frame
func on_process(delta):
	pass

# this is called when the shooting delay timer times out
func on_shooting_delay_timeout():
	pass

# this is called when a ball is leaving the screen
func on_ball_leaving_screen():
	pass
# endregion events

# region inputs
func process_input(delta):
	pass
func process_ai_input(delta, ai_controller: CannonController):
	pass
# endregion inputs
���U�class_name CannonStateFactory

var states

func _init(cannon: Cannon):
	states = {
		"idle": IdleCannonState.new(cannon),
		"shooting": ShootingCannonState.new(cannon),
		"null": CannonState.new(cannon),
	}

func get_state(state_name: String) -> CannonState:
	var state : CannonState = states.get("null")
	if states.has(state_name):
		state = states.get(state_name)
	else:
		printerr("No state ", state_name, " found")
	state.on_transition()
	return state
�:˝6l�iextends CannonState
class_name IdleCannonState

func on_transition():
	# when I get back to idle, it means that I survived, hence I should
	# reward my agent
	cannon.update_ai_reward()

func process_input(delta):
	var expected_rotation = cannon.rotation_degrees
	if (Input.is_action_pressed("ui_left")):
		expected_rotation -= cannon.radial_speed * delta
	if (Input.is_action_pressed("ui_right")):
		expected_rotation += cannon.radial_speed * delta
	if (Input.is_action_just_pressed("ui_accept")):
		cannon.state = cannon.state_factory.get_state("shooting")
	
	if (abs(expected_rotation) < cannon.max_angle && abs(expected_rotation) > cannon.min_angle):
		cannon.rotation_degrees = expected_rotation

func process_ai_input(delta, ai_controller: CannonController):
	# the ai input is handled by first reaching the angle
	# and then shooting, directly
	var movement = ai_controller.ai_best_angle
	cannon.rotation_degrees = -movement
	cannon.state = cannon.state_factory.get_state("shooting")
	print("output: " + str(movement))
�Ռtc�ԛ����/�extends CannonState
class_name ShootingCannonState

func on_transition():
	# reset ai bonus
	cannon.prev_max_bullets = cannon.max_bullets
	cannon.current_hits = 0
	cannon.current_destroyed = 0
	cannon.is_field_cleared = false
	
	print("--- shooting --- " + str(cannon.prev_max_bullets))
	if (cannon.ai_debug):
		cannon.bullets = 1
		cannon.bullets_on_screen = 1
	else:
		cannon.bullets = cannon.max_bullets
		cannon.bullets_on_screen = cannon.max_bullets
	cannon.shooting_delay.start()

func on_shooting_delay_timeout():
	if (cannon.bullets > 0):
		cannon.shoot()
		cannon.bullets -= 1
		cannon.shooting_delay.start()
	else:
		cannon.bullets = cannon.max_bullets

func on_ball_leaving_screen():
	cannon.bullets_on_screen -= 1
	if (cannon.bullets_on_screen <= 0):
		cannon.shooting_done.emit()
		cannon.state = cannon.state_factory.get_state("idle")

func process_ai_input(delta, ai_controller: CannonController):
	pass
Ş�R�����extends Node
# --fixed-fps 2000 --disable-render-loop
@export_range(1, 10, 1, "or_greater") var action_repeat := 8
@export_range(1, 10, 1, "or_greater") var speed_up = 1
@export var onnx_model_path := ""

@onready var start_time = Time.get_ticks_msec()

const MAJOR_VERSION := "0"
const MINOR_VERSION := "3" 
const DEFAULT_PORT := "11008"
const DEFAULT_SEED := "1"
var stream : StreamPeerTCP = null
var connected = false
var message_center
var should_connect = true
var agents
var need_to_send_obs = false
var args = null
var initialized = false
var just_reset = false
var onnx_model = null

var _action_space : Dictionary
var _obs_space : Dictionary

# Called when the node enters the scene tree for the first time.

func _ready():
	await get_tree().root.ready
	get_tree().set_pause(true) 
	_initialize()
	await get_tree().create_timer(1.0).timeout
	get_tree().set_pause(false) 
	
func _initialize():
	_get_agents()
	_obs_space = agents[0].get_obs_space()
	_action_space = agents[0].get_action_space()
	args = _get_args()
	Engine.physics_ticks_per_second = _get_speedup() * 60 # Replace with function body.
	Engine.time_scale = _get_speedup() * 1.0
	prints("physics ticks", Engine.physics_ticks_per_second, Engine.time_scale, _get_speedup(), speed_up)
	

	connected = connect_to_server()
	if connected:
		_set_heuristic("model")
		_handshake()
		_send_env_info()
	elif onnx_model_path != "":
		onnx_model = ONNXModel.new(onnx_model_path, 1)
		_set_heuristic("model")
	else:
		_set_heuristic("human")  
		
	_set_seed()
	_set_action_repeat()
	initialized = true  

func _physics_process(delta):
	pass

# instead of calling every physics frame, I do so every time it is my turn
func communicate_with_ai():
	if connected:
		print("communication with ai")
		get_tree().set_pause(true) 
		
		if just_reset:
			just_reset = false
			var obs = _get_obs_from_agents()
		
			var reply = {
				"type": "reset",
				"obs": obs
			}
			_send_dict_as_json_message(reply)
			# this should go straight to getting the action and setting it checked the agent, no need to perform one phyics tick
			get_tree().set_pause(false) 
			return
		
		if need_to_send_obs:
			need_to_send_obs = false
			var reward = _get_reward_from_agents()
			var done = _get_done_from_agents()
			#_reset_agents_if_done() # this ensures the new observation is from the next env instance : NEEDS REFACTOR
			
			var obs = _get_obs_from_agents()
			
			var reply = {
				"type": "step",
				"obs": obs,
				"reward": reward,
				"done": done
			}
			_send_dict_as_json_message(reply)
		
		var handled = handle_message()
	
	elif onnx_model != null:
		var obs : Array = _get_obs_from_agents()
	
		var actions = []
		for o in obs:
			var action = onnx_model.run_inference(o["obs"], 1.0)
			action["output"] = clamp_array(action["output"], -1.0, 1.0)
			var action_dict = _extract_action_dict(action["output"])
			actions.append(action_dict)
		
		_set_agent_actions(actions) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		_reset_agents_if_done()
		
	else:
		print("it is not connected?!?!")
		_reset_agents_if_done()

func _extract_action_dict(action_array: Array):
	var index = 0
	var result = {}
	for key in _action_space.keys():
		var size = _action_space[key]["size"]
		if _action_space[key]["action_type"] == "discrete":
			result[key] = round(action_array[index])
		else:
			result[key] = action_array.slice(index,index+size)
		index += size
		
	return result

func _get_agents():
	agents = get_tree().get_nodes_in_group("AGENT")

func _set_heuristic(heuristic):
	for agent in agents:
		agent.set_heuristic(heuristic)

func _handshake():
	print("performing handshake")
	
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "handshake")
	var major_version = json_dict["major_version"]
	var minor_version = json_dict["minor_version"]
	if major_version != MAJOR_VERSION:
		print("WARNING: major verison mismatch ", major_version, " ", MAJOR_VERSION)  
	if minor_version != MINOR_VERSION:
		print("WARNING: minor verison mismatch ", minor_version, " ", MINOR_VERSION)
		
	print("handshake complete")

func _get_dict_json_message():
	# returns a dictionary from of the most recent message
	# this is not waiting
	while stream.get_available_bytes() == 0:
		stream.poll()
		if stream.get_status() != 2:
			print("server disconnected status, closing")
			get_tree().quit()
			return null

		OS.delay_usec(10)
		
	var message = stream.get_string()
	var json_data = JSON.parse_string(message)
	
	return json_data

func _send_dict_as_json_message(dict):
	stream.put_string(JSON.stringify(dict))

func _send_env_info():
	var json_dict = _get_dict_json_message()
	assert(json_dict["type"] == "env_info")
	var message = {
		"type" : "env_info",
		"observation_space": _obs_space,
		"action_space":_action_space,
		"n_agents": len(agents)
	}
	print("--- env info ---")
	print(message)
	_send_dict_as_json_message(message)

func connect_to_server():
	print("Waiting for one second to allow server to start")
	OS.delay_msec(1000)
	print("trying to connect to server")
	stream = StreamPeerTCP.new()
	
	# "localhost" was not working on windows VM, had to use the IP
	var ip = "127.0.0.1"
	var port = _get_port()
	var connect = stream.connect_to_host(ip, port)
	stream.set_no_delay(true) # TODO check if this improves performance or not
	stream.poll()
	# Fetch the status until it is either connected (2) or failed to connect (3)
	while stream.get_status() < 2:
		stream.poll()
	return stream.get_status() == 2

func _get_args():
	print("getting command line arguments")
	var arguments = {}
	for argument in OS.get_cmdline_args():
		print(argument)
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
		else:
			# Options without an argument will be present in the dictionary,
			# with the value set to an empty string.
			arguments[argument.lstrip("--")] = ""

	return arguments   

func _get_speedup():
	print(args)
	return args.get("speedup", str(speed_up)).to_int()

func _get_port():    
	return args.get("port", DEFAULT_PORT).to_int()

func _set_seed():
	var _seed = args.get("env_seed", DEFAULT_SEED).to_int()
	seed(_seed)

func _set_action_repeat():
	action_repeat = args.get("action_repeat", str(action_repeat)).to_int()
	
func disconnect_from_server():
	stream.disconnect_from_host()

func handle_message() -> bool:
	# get json message: reset, step, close
	var message = _get_dict_json_message()
	if message["type"] == "close":
		print("received close message, closing game")
		get_tree().quit()
		get_tree().set_pause(false) 
		return true
		
	if message["type"] == "reset":
		print("resetting all agents")
		_reset_all_agents()
		just_reset = true
		get_tree().set_pause(false) 
		#print("resetting forcing draw")
#        RenderingServer.force_draw()
#        var obs = _get_obs_from_agents()
#        print("obs ", obs)
#        var reply = {
#            "type": "reset",
#            "obs": obs
#        }
#        _send_dict_as_json_message(reply)   
		return true
		
	if message["type"] == "call":
		var method = message["method"]
		var returns = _call_method_on_agents(method)
		var reply = {
			"type": "call",
			"returns": returns
		}
		print("calling method from Python")
		_send_dict_as_json_message(reply)   
		return handle_message()
	
	if message["type"] == "action":
		print("received message")
		var action = message["action"]
		_set_agent_actions(action) 
		need_to_send_obs = true
		get_tree().set_pause(false) 
		return true
		
	print("message was not handled")
	return false

func _call_method_on_agents(method):
	var returns = []
	for agent in agents:
		returns.append(agent.call(method))
		
	return returns


func _reset_agents_if_done():
	for agent in agents:
		if agent.get_done(): 
			agent.set_done_false()

func _reset_all_agents():
	for agent in agents:
		agent.needs_reset = true
		#agent.reset()   

func _get_obs_from_agents():
	var obs = []
	for agent in agents:
		obs.append(agent.get_obs())

	return obs
	
func _get_reward_from_agents():
	var rewards = [] 
	for agent in agents:
		rewards.append(agent.get_reward())
		agent.zero_reward()
	return rewards    
	
func _get_done_from_agents():
	var dones = [] 
	for agent in agents:
		var done = agent.get_done()
		if done: agent.set_done_false()
		dones.append(done)
	return dones    
	
func _set_agent_actions(actions):
	for i in range(len(actions)):
		agents[i].set_action(actions[i])
	
func clamp_array(arr : Array, min:float, max:float):
	var output : Array = []
	for a in arr:
		output.append(clamp(a, min, max))
	return output

# I communicate with the agent only when the shooting is done
func _on_cannon_shooting_done():
	communicate_with_ai()
�'���\.�A��extends AIController2D
class_name CannonController
# the AI agent will only give me the target angle, 
# the game will trigger the shooting start when such angle is reached

@onready var cannon: Cannon = get_tree().get_root().get_node("Game/Cannon")
@onready var game: Game = get_tree().get_root().get_node("Game")

var ai_best_angle: float = 90

func _init():
	needs_reset = false # the game resets when the limit is reached

# region observations
func get_bonus_positions():
	var positions = [] # a bool matrix of found bonus
	for i in range(0, game.field_tile_width * game.field_tile_height):
		positions.append(0)
	for b in game.bonus_array:
		if (!b):
			continue
		var index = b.field_position_x + (b.field_position_y * game.field_tile_width)
		if index >= game.field_tile_height * game.field_tile_width:
			continue # here I have exceeeded the row
		positions[index] = 1
	return positions

func get_tile_positions():
	var positions = []
	for i in range(0, game.field_tile_width * game.field_tile_height):
		positions.append(0)
	for t in game.tiles_array:
		if (!t):
			continue
		var index = t.field_position_x + (t.field_position_y * game.field_tile_width)
		if index >= game.field_tile_height * game.field_tile_width:
			continue
		positions[index] = t.missing_shots
	return positions
# endregion observations

# the observations for the game are:
# - the position of all blocks, in a matrix of weights
# - the distance of the blocks from the cannon, as a vector 2
# - the number of missing balls
# - the position of the first 3 rewards, just to avoid having a huge network
func get_obs() -> Dictionary:
	# I start with the very dumb observations first, trying to maximize the reach 
	# for the bonuses
	var positions = []
	var tile_positions = get_tile_positions()
	var bonus_positions = get_bonus_positions()
	var current_rotation = cannon.rotation_degrees
	# positions.append(abs(current_rotation))
	for t in tile_positions:
		positions.append(t)
	for b in bonus_positions:
		positions.append(b)
	print("getting obs")
	print(positions)
	return {"obs": positions}

func get_reward() -> float:
	print("getting rewards")
	print(reward)
	return reward

func get_action_space() -> Dictionary:
	return {
		"cannon_angle" : {
			"size": 1,
			"action_type": "continuous"
		}
	}

func set_action(action) -> void:
	ai_best_angle = (action["cannon_angle"][0] * cannon.angle_scale) + 90

# overriding to avoid reset for now
func _physics_process(delta):
	pass
�'�extends RigidBody2D
class_name Ball

signal leaving_screen
signal hit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_visible_on_screen_notifier_2d_screen_exited():
	leaving_screen.emit()
	queue_free()

func _on_body_entered(body):
	if (body is Tile):
		hit.emit()
		body.on_hit()


func _on_infinite_bounce_timeout_timeout():
	print("MUAHAHAH")
	leaving_screen.emit()
	$InfiniteBounceTimeout.stop()
	queue_free()
ُ�����{textends Area2D
class_name Bonus

signal bonus

# region private vars
var field_position_x: int = 0
var field_position_y: int = 0
# endregion private vars

func init(position_x: int, position_y: int):
	field_position_x = position_x
	field_position_y = position_y

func scroll(len: float) -> int:
	field_position_y += 1
	position.y += len
	return field_position_y

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if (body && body is Ball):
		bonus.emit()
		queue_free()
����ZC]5��1Mextends Area2D
class_name Cannon

# region signal
signal shooting_done # emit when I am done with shooting and going back to idle
signal hit # when a ball hit something
# endregion signal

# region public vars
# angles are in degrees, moving from 0 (full right) to 180 (full left)
@export_group("mobility")
@export var min_angle: int = 15
@export var max_angle: int = 165
@export var radial_speed: float = 100
var angle_scale: float = 0.0

@export_group("bullet")
@onready var shooting_delay = $ShootingDelay
@export var bullet_speed = 800

@export_group("ai")
@export var bonus_ratio: float = 8.0
@export var hit_ratio: float = 5.0
@export var destroyed_ratio: float = 10.0
@export var clear_ratio: float = 1000.0
@export var loss_malus: float = -1000.0

@export_group("")
@export var max_bullets: int = 1 # gets updated when the user takes a +1 block
@export var ball_scene: PackedScene # the ball
@export var ai_debug: bool = false
# endregion public vars

# region ai
@onready var ai_controller: CannonController = $CannonController
var prev_max_bullets: int = 0 # updated via the state transitions
var current_hits: int = 0 # updated via the state transitions
var current_destroyed: int = 0 # updated via the state transition
var is_field_cleared: bool = false
var is_lost: bool = false

func update_ai_reward():
	var new_ball_reward = (float(max_bullets) - float(prev_max_bullets)) * bonus_ratio
	var tile_reward = float(current_hits) * float(hit_ratio) # using this to align with the current scores
	var destroy_reward = float(current_destroyed) * float(destroyed_ratio)
	var clear_reward = 0 if !is_field_cleared else clear_ratio
	if not is_lost:
		ai_controller.reward = new_ball_reward + tile_reward + destroy_reward + clear_reward # todo move this in the ai agent
	else:
		ai_controller.reward = loss_malus
		is_lost = false
	print("reward: " + str(ai_controller.reward))
# endregion ai

# region private vars
var state_factory: CannonStateFactory = CannonStateFactory.new(self)
var state: CannonState

var bullets: int = max_bullets # gets updated during the shooting

# every time I enter the shooting state, I set this as the current number of playing 
# balls
# every time a ball leaves the screen I decrease this until it is one
var bullets_on_screen: int = 0
# endregion private vars

# region init

func center_cannon():
	rotation_degrees = -ceil((max_angle + min_angle) / 2)

func init_state():
	state = state_factory.get_state("idle")
	pass

func _ready():
	center_cannon()
	init_state()
	angle_scale = (max_angle - min_angle) / 2
	ai_controller.init(self)

# endregion init

# region process

func shoot():
	var ball: Ball = ball_scene.instantiate()
	var new_ball_rotation = get_rotation()
	ball.linear_velocity = Vector2(bullet_speed, 0.0).rotated(new_ball_rotation)
	add_child(ball)
	ball.leaving_screen.connect(_on_ball_leaving_screen)
	ball.hit.connect(_on_ball_hit)

func _process(delta):
	if (!ai_controller || ai_controller.heuristic == "human"):
		state.process_input(delta)
	else:
		state.process_ai_input(delta, ai_controller)
	state.on_process(delta)

# endregion process

# region events
func _on_shooting_delay_timeout():
	state.on_shooting_delay_timeout()

func _on_ball_leaving_screen():
	state.on_ball_leaving_screen()

func _on_ball_hit():
	current_hits += 1
	hit.emit()

func _on_tile_destroyed():
	current_destroyed += 1
# endregion events


func _on_bonus_killer_area_entered(area):
	pass

func _on_game_field_cleared():
	is_field_cleared = true

func _on_game_field_exceeded():
	is_lost = true
extends Node2D
class_name Game

# region signal
signal field_exceeded
signal field_cleared
# endregion signal

# region scenes
@onready var cannon: Cannon = $Cannon
@onready var gui: Gui = $GUI
# endregion scenes

# region public vars
@export_group("tiles")
@export var field_tile_width: int = 5
@export var field_tile_height: int = 8
@export var tile_len: float = 50
@export var tile_scene: PackedScene
@export var bonus_scene: PackedScene
@export var wall_scene: PackedScene

@export_group("difficulty")
@export var value_range: int = 2 # how much more - less can the new numbers be related to the current max
@export var holes_probability: int = 4 # the fraction of probability, 1 is 1/2 and so on
@export var bonus_probability: int = 2 # one over 3 should be 
@export var max_bonus_per_line: int = 2
# endregion public vars

# region private vars
var current_max = 1 # starts at one, increases at every new round
var tiles_array = []
var bonus_array = [] # only filled with those having the bonus

var field_top_height: int
# endregion private vars

# region field generation
func check_generated_row_is_not_empty(arr: Array):
	var empty = true
	for i in arr:
		if (i != 0):
			empty = false
	if empty == true:
		arr[1] = randi() % (current_max + 1) # bit hardcoded here

func generate_row():
	# first I define an array with the tiles to be created
	var arr = []
	var bonus_arr = []
	for n in range(0, field_tile_width):
		# making the game more difficult by only giving at most 2 bonus per line
		if ((randi() % bonus_probability == 0 && bonus_arr.size() < max_bonus_per_line) || cannon.ai_debug):
			arr.append(0)
			bonus_arr.append(1)
		elif (randi() % holes_probability == 0):
			arr.append(0)
			bonus_arr.append(0)
		else:
			# here I randomly pick the difference from the current max
			var random_delta = randi() % value_range
			var negative = randi() % 2 == 0
			if negative:
				arr.append(current_max - random_delta)
			else:
				arr.append(current_max + random_delta) 
			bonus_arr.append(0)
	
	if !cannon.ai_debug:
		check_generated_row_is_not_empty(arr)
	
	# then I handle the distance
	var center = Vector2(cannon.position.x, field_top_height)
	var limit_left = Vector2(center)
	limit_left.x = limit_left.x - ((field_tile_width / 2) * tile_len)
	for m in range(0, field_tile_width):
		if (arr[m] > 0):
			var tile: Tile = tile_scene.instantiate()
			tile.position = Vector2(limit_left)
			tile.position.x = limit_left.x + (m * tile_len)
			add_child(tile)
			tile.init(arr[m], m, 0)
			tile.destroyed.connect(cannon._on_tile_destroyed)
			tiles_array.append(tile)
		elif (bonus_arr[m] > 0):
			var bonus_tile: Bonus = bonus_scene.instantiate()
			bonus_tile.position = Vector2(limit_left)
			bonus_tile.position.x = limit_left.x + (m * tile_len)
			add_child(bonus_tile) 
			bonus_tile.init(m, 0)
			bonus_tile.bonus.connect(_on_bonus_bonus)
			bonus_array.append(bonus_tile)

# scrolls down the field by one
func scroll_field():
	for t in tiles_array:
		if t != null:
			var new_val = t.scroll(tile_len)
			if new_val >= field_tile_height:
				field_exceeded.emit()
	for b in bonus_array:
		if b != null:
			var new_bon = b.scroll(tile_len)

func clear_field():
	for t in tiles_array:
		if t != null and weakref(t).get_ref():
			t.queue_free()
	for b in bonus_array:
		if b != null and weakref(b).get_ref():
			b.queue_free()

func generate_walls():
	var top_wall: Wall = wall_scene.instantiate()
	top_wall.position.y = field_top_height - (1.5 * tile_len)
	top_wall.position.x = cannon.position.x
	add_child(top_wall)
	var left_wall: Wall = wall_scene.instantiate()
	left_wall.position.y = (get_viewport_rect().size.y + field_top_height) / 2
	left_wall.position.x = cannon.position.x - ((field_tile_width / 2) * tile_len) - tile_len
	left_wall.rotation = PI/2
	add_child(left_wall)
	var right_wall: Wall = wall_scene.instantiate()
	right_wall.position.y = (get_viewport_rect().size.y + field_top_height) / 2
	right_wall.position.x = cannon.position.x + ((field_tile_width / 2) * tile_len) + tile_len
	right_wall.rotation = PI/2
	add_child(right_wall)
# endregion field generation

# Called when the node enters the scene tree for the first time.
func _ready():
	field_top_height = cannon.position.y - (tile_len * field_tile_height)
	if (!cannon.ai_debug):
		generate_walls()
	generate_row()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func is_field_cleared() -> bool:
	var clear_empty: bool = true
	for t in tiles_array:
		if t != null && weakref(t).get_ref(): clear_empty = false
	return clear_empty

func check_field_cleared():
	var clear_empty = is_field_cleared()
	if clear_empty: field_cleared.emit()

func _on_cannon_shooting_done():
	check_field_cleared()
	scroll_field()
	generate_row()
	gui.update_score(current_max)
	gui.update_balls(cannon.max_bullets)
	gui.reset_hit()
	current_max += 1

func _on_bonus_bonus():
	cannon.max_bullets += 1

func _on_field_exceeded():
	clear_field()
	current_max = 1
	cannon.max_bullets = 1
	cannon.prev_max_bullets = 1
	cannon.ai_controller.done = true
	cannon.ai_controller.needs_reset = true

func _on_cannon_hit():
	gui.add_hit()

func _on_field_cleared():
	print("field cleared!")

func _on_bonus_killer_area_entered(area):
	if area && area is Bonus:
		area.queue_free()
�kl�*�Yextends VBoxContainer
class_name Gui

# region private vars
var hits: int = 0
var score: int = 0
var balls: int = 0
# endregion private vars

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_hit():
	hits += 1
	$Hits.set_text("Hits: " + str(hits))

func reset_hit():
	hits = 0
	$Hits.set_text("Hits: " + str(hits))

func update_score(p_score: int):
	score = p_score
	$Score.set_text("Score: " + str(score))

func update_balls(p_balls: int):
	balls = p_balls
	$Balls.set_text("Balls: " + str(balls))
	
�~0��extends StaticBody2D
class_name Tile

# region signal
signal destroyed
# endregion signal

@onready var missing_shot_scene: Label = $MissingShots

# region public vars

@export_group("MissingShots")
@export var missing_shots: int = 10

# endregion public vars

# region private vars
var field_position_x: int = 0
var field_position_y: int = 0
# endregion private vars

func print_missing_shots():
	missing_shot_scene.set_text(str(missing_shots))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func init(shots: int, position_x: int, position_y: int):
	missing_shots = shots
	field_position_x = position_x
	field_position_y = position_y
	print_missing_shots()

func scroll(len: float) -> int:
	field_position_y += 1
	position.y += len
	return field_position_y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_hit():
	missing_shots -= 1
	print_missing_shots()
	if (missing_shots <= 0):
		destroyed.emit()
		queue_free()
extends StaticBody2D
class_name Wall


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
��d3�^># meta-name: AI Controller Logic
# meta-description: Methods that need implementing for AI controllers
# meta-default: true
extends _BASE_

#-- Methods that need implementing using the "extend script" option in Godot --#

func get_obs() -> Dictionary:
	assert(false, "the get_obs method is not implemented when extending from ai_controller") 
	return {"obs":[]}

func get_reward() -> float:	
	assert(false, "the get_reward method is not implemented when extending from ai_controller") 
	return 0.0
	
func get_action_space() -> Dictionary:
	assert(false, "the get get_action_space method is not implemented when extending from ai_controller") 
	return {
		"example_actions_continous" : {
			"size": 2,
			"action_type": "continuous"
		},
		"example_actions_discrete" : {
			"size": 2,
			"action_type": "discrete"
		},
		}
	
func set_action(action) -> void:	
	assert(false, "the get set_action method is not implemented when extending from ai_controller") 	
# -----------------------------------------------------------------------------#

#-- Methods that can be overridden if needed --#

#func get_obs_space() -> Dictionary:
# May need overriding if the obs space is complex
#	var obs = get_obs()
#	return {
#		"obs": {
#			"size": [len(obs["obs"])],
#			"space": "box"
#		},
#	}GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[  ���'�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ckky248c16ugd"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �*�{�Bn�!�n[remap]

path="res://.godot/exported/133200997/export-4683638a6e9a031512c96cf808d5a613-tile.res"
U�BŶo�8��L�0[remap]

path="res://.godot/exported/133200997/export-d687370f64a28adc6cd2dc42f9ce6f46-ball.scn"
]K��Ռ���o�[remap]

path="res://.godot/exported/133200997/export-8cde0ec6209fc9d5e4f1e21b854f8b9c-bonus.scn"
*q+��rn#%�h4_[remap]

path="res://.godot/exported/133200997/export-f1946e0ee9b7b5dca216e1f175b52e74-cannon.scn"
��k������m^[remap]

path="res://.godot/exported/133200997/export-c2a7af834e91ff64325daddf58e45dc0-game.scn"
j��̳�ɀ��M�M[remap]

path="res://.godot/exported/133200997/export-5d2a3c63dd2027cc5cceb245328e5953-tile.scn"
tS}�sϞ�+I��b�[remap]

path="res://.godot/exported/133200997/export-07690686bd1a72f71ae2b53bb79af276-wall.scn"
���<������list=Array[Dictionary]([{
"base": &"Node2D",
"class": &"AIController2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/controller/ai_controller_2d.gd"
}, {
"base": &"Node3D",
"class": &"AIController3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/controller/ai_controller_3d.gd"
}, {
"base": &"RigidBody2D",
"class": &"Ball",
"icon": "",
"language": &"GDScript",
"path": "res://script/ball.gd"
}, {
"base": &"Area2D",
"class": &"Bonus",
"icon": "",
"language": &"GDScript",
"path": "res://script/bonus.gd"
}, {
"base": &"Area2D",
"class": &"Cannon",
"icon": "",
"language": &"GDScript",
"path": "res://script/cannon.gd"
}, {
"base": &"AIController2D",
"class": &"CannonController",
"icon": "",
"language": &"GDScript",
"path": "res://script/AIController2D.gd"
}, {
"base": &"RefCounted",
"class": &"CannonState",
"icon": "",
"language": &"GDScript",
"path": "res://script/state/cannon_state.gd"
}, {
"base": &"RefCounted",
"class": &"CannonStateFactory",
"icon": "",
"language": &"GDScript",
"path": "res://script/state/cannon_state_factory.gd"
}, {
"base": &"Node2D",
"class": &"Game",
"icon": "",
"language": &"GDScript",
"path": "res://script/game.gd"
}, {
"base": &"VBoxContainer",
"class": &"Gui",
"icon": "",
"language": &"GDScript",
"path": "res://script/GUI.gd"
}, {
"base": &"Node2D",
"class": &"ISensor2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_2d/ISensor2D.gd"
}, {
"base": &"Node3D",
"class": &"ISensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/ISensor3D.gd"
}, {
"base": &"CannonState",
"class": &"IdleCannonState",
"icon": "",
"language": &"GDScript",
"path": "res://script/state/idle_state.gd"
}, {
"base": &"Node",
"class": &"ONNXModel",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/onnx/wrapper/ONNX_wrapper.gd"
}, {
"base": &"Node3D",
"class": &"RGBCameraSensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/RGBCameraSensor3D.gd"
}, {
"base": &"ISensor3D",
"class": &"RayCastSensor3D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_3d/RaycastSensor3D.gd"
}, {
"base": &"ISensor2D",
"class": &"RaycastSensor2D",
"icon": "",
"language": &"GDScript",
"path": "res://addons/godot_rl_agents/sensors/sensors_2d/RaycastSensor2D.gd"
}, {
"base": &"CannonState",
"class": &"ShootingCannonState",
"icon": "",
"language": &"GDScript",
"path": "res://script/state/shooting_state.gd"
}, {
"base": &"StaticBody2D",
"class": &"Tile",
"icon": "",
"language": &"GDScript",
"path": "res://script/tile.gd"
}, {
"base": &"StaticBody2D",
"class": &"Wall",
"icon": "",
"language": &"GDScript",
"path": "res://script/wall.gd"
}])
a�Y$��Nv�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
x�K�'�HTd�   cv?җ��p%   res://addons/godot_rl_agents/icon.png �=5�;�*   res://physics/tile.tres2oR��   res://res/sprite/ball.png����B\   res://res/sprite/bonus.png/-D�9^   res://res/sprite/cannon.png��_}uMJ   res://res/sprite/tile.png�(��[�^   res://res/sprite/wall.png)g<�uU�
   res://scenes/ball.tscn�C�mB��7   res://scenes/bonus.tscn�S�!'�{   res://scenes/cannon.tscn(y�$'�M   res://scenes/game.tscn�٣-i1,   res://scenes/tile.tscnx�e0�U�0   res://scenes/wall.tscn7��~��HL   res://icon.svg�[kECFG      application/config/name         BallClearGame      application/run/main_scene          res://scenes/game.tscn     application/config/features$   "         4.1    C#     Mobile     application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      X     dotnet/project/assembly_name         BallClearGame      editor_plugins/enabled4   "      (   res://addons/godot_rl_agents/plugin.cfg    input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         layer_names/2d_physics/layer_1         balls      layer_names/2d_physics/layer_2         tiles      layer_names/2d_physics/layer_3         wallss     physics/2d/default_gravity             physics/2d/default_linear_damp          #   rendering/renderer/rendering_method         mobile  _?]}0f��.��