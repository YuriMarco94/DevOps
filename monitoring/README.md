# Configuração de Monitoramento e Logs

# Scripts de Monitoramento

Este diretório contém scripts para monitorar o sistema e enviar dados para o Graylog.

## Scripts disponíveis

### 1. `monitor_system.py`
- Coleta métricas de CPU, memória, disco e I/O de rede.
- Saída: Dados no formato JSON.

### Como executar
1. Instale as dependências necessárias:
   ```bash
   pip install psutil
