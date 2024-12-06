import socket
import json

# Configurações do Graylog
graylog_host = '127.0.0.1'
graylog_port = 12201

# Mensagem no formato GELF
message = {
    "version": "1.1",
    "host": "test-host",
    "short_message": "Test message from Python",
    "level": 5
}

# Enviar mensagem para o Graylog
with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as sock:
    sock.sendto(json.dumps(message).encode('utf-8'), (graylog_host, graylog_port))

print("Mensagem enviada para o Graylog!")
