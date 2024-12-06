from flask import Flask, jsonify
import os

app = Flask(__name__)

# Rota principal
@app.route('/')
def home():
    return "<h1>Bem-vindo ao WebApp hospedado no Azure!</h1>"

# Rota de status
@app.route('/status')
def status():
    return jsonify({
        "status": "ok",
        "message": "A aplicação está funcionando corretamente!"
    })

if __name__ == '__main__':
    # Definir host e porta a partir de variáveis de ambiente ou usar valores padrão
    host = os.getenv('FLASK_HOST', '0.0.0.0')  # 0.0.0.0 para aceitar conexões externas
    port = int(os.getenv('FLASK_PORT', 8080))  # Porta 8080 como padrão
    debug = os.getenv('FLASK_DEBUG', 'True') == 'True'  # Ativa debug por padrão

    # Inicializar o servidor Flask
    app.run(host=host, port=port, debug=debug)
