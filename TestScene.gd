extends Node2D

func _ready():
	CheckNConnection.connect("connection_success", self, "_on_success")
	CheckNConnection.connect("error_connection_failed", self, "_on_failure")
	CheckNConnection.connect("error_ssl_handshake", self, "_on_fail_ssl_handshake")
	pass 

func _on_success():
	print("Connection Success!!")

func _on_failure(code, message):
	print("Connection Failure!!\nCode: ", code, " Message: ", message)

func _on_fail_ssl_handshake():
	print("SSL Handshake Error!!")