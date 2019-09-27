echo "Installing snmp and snmpsim..."
apt install snmp snmpsim

echo "Running snmpsimd in background..."
snmpsimd --data-dir=./assets --agent-udpv4-endpoint=127.0.0.1:1024 &