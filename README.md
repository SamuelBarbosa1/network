# Network Test Script

Este projeto contém um script em Bash para testar a conectividade de rede, verificar a latência e medir a velocidade da conexão. O script fornece um menu interativo para realizar essas ações de forma fácil e rápida.

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

- Bash
- `ping` (geralmente já incluído em distribuições Linux)
- `speedtest-cli`

Você pode instalar o `speedtest-cli` com o seguinte comando:
```bash
sudo apt-get install speedtest-cli
```
Clone este repositório em seu sistema local:
```
git clone https://github.com/SamuelBarbosa1/network.git
cd newtork
```
```
chmod +x network_test.sh
```
Execute o script como superusuário:
````
sudo ./network_test.sh
````
# Funcionalidades

O script oferece as seguintes funcionalidades:

Testar conectividade de rede: Usa o comando ping para testar a conectividade com o Google.

Verificar latência: Verifica a latência (tempo de resposta) ao se conectar ao Google.

Medir velocidade da conexão: Usa o speedtest-cli para medir a velocidade da conexão à internet.

