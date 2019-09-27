echo "Installing snmp and snmpsim..."
apt install snmp snmpsim -y

echo "Running snmpsimd in background..."
snmpsimd --process-user=nobody --process-group=nogroup --data-dir=./assets --agent-udpv4-endpoint=127.0.0.1:61024 &