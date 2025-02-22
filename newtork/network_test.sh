
#!/bin/bash

# Função para testar a conectividade de rede
function test_connectivity() {
    echo "Testando conectividade de rede..."
    if ping -c 4 www.google.com; then
        echo "Conectividade de rede OK!"
    else
        echo "Falha na conectividade de rede!"
    fi
}

# Função para verificar a latência
function check_latency() {
    echo "Verificando latência..."
    ping -c 4 www.google.com | grep 'time=' || echo "Não foi possível verificar a latência!"
}

# Função para medir a velocidade da conexão
function measure_speed() {
    if command -v speedtest-cli &> /dev/null; then
        echo "Medindo velocidade da conexão..."
        speedtest-cli
    else
        echo "speedtest-cli não está instalado. Por favor, instale-o primeiro."
    fi
}

# Função para exibir o menu
function show_menu() {
    echo "Escolha uma opção:"
    echo "1) Testar conectividade de rede"
    echo "2) Verificar latência"
    echo "3) Medir velocidade da conexão"
    echo "4) Sair"
}

# Loop principal
while true; do
    show_menu
    read -p "Opção: " option
    case $option in
        1)
            test_connectivity
            ;;
        2)
            check_latency
            ;;
        3)
            measure_speed
            ;;
        4)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida. Por favor, tente novamente."
            ;;
    esac
done
