this is simple linux service for linux users( can be adapted to be used in windows as well)


## Installation

1. create python env and install the requierments listed in `requierments.txt` 
2. build docker image : 
docker build -t my-image:latest .
3. run locally docker container:
docker run -p PORT:PORT -e MY_VAR=value my-image:latest
4. install the linux service in etc/systemd
5. start the service 
systemctl start service_name

## Usage
once the service is installed and ready to use you can use it with postman as shown below
![image](https://github.com/DeepNeurons/ocr_linux_service/assets/38696082/855b4bc1-47a1-4e80-af5f-4d6b1cc015c5)
or simply with any python :
import requests

url = "http://127.0.0.1:8000/ocr"

payload = {}
files=[
  ('file',('datascience101.jpg',open('/home/balha/Documents/certif/datascience101.jpg','rb'),'image/jpeg'))
]
headers = {}

response = requests.request("POST", url, headers=headers, data=payload, files=files)

print(response.text)


