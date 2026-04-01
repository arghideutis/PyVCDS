
init_virtual_can:
	sudo ip link add dev can0 type vcan && sudo ip link set up can0

remove_virtual_can:
	sudo ip link delete can0

set_can_bitrate:
	sudo ip link set can0 down
	#sudo ip link set can0 up type can bitrate 500000
	sudo ip link set can0 up type can bitrate 500000 dbitrate 2000000 fd on
	sudo ip link set can0 up

venv:
	source venv/bin/activate

run: venv
	python3 diag.py