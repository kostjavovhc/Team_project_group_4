#base image

FROM python:3.11.6-alpine3.17

ENV APPLICATION /Team_project_01
#WORKING DIRECTORY

RUN apk update && apk add git && git clone https://github.com/kostjavovhc/Team_project_group_4.git

WORKDIR  $APPLICATION


RUN pip install -r requirements.txt


#EXPOSE 5000


ENTRYPOINT ["python", "Team_project_01/main.py"]