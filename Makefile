
local-service:
	FLASK_ENV=dev NEED_REGISTER=1 python otter_v2_service/server.py

container-up:
	dev otter-v2-service up

container-service:
	dev otter-v2-service sh FLASK_ENV=dev NEED_REGISTER=True python otter_v2_service/server.py

