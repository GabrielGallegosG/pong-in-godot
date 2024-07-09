extends Node2D

var playerScore = 0
var opponentScore = 0

func _ready():
	_restart_game()

func _process(delta):
	$PlayerScore.text = str(playerScore)
	$OpponentScore.text = str(opponentScore)

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 540)
	#$Ball.reset_ball()
	$RestartTimer.start()
	

func _on_players_arch_body_entered(body):
	if body is Ball:
		opponentScore += 1
		_restart_game()


func _on_enemys_arch_2_body_entered(body):
	if body is Ball:
		playerScore += 1
		_restart_game()
