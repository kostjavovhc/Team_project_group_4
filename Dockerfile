#base image

FROM python:3.11.6-alpine3.17

ENV APPLICATION /Team_project_group_4


RUN apk update && apk add git && git clone https://github.com/kostjavovhc/Team_project_group_4.git

#WORKING DIRECTORY
WORKDIR  $APPLICATION

COPY . .

RUN pip install -r requirements.txt


#EXPOSE 5000


ENTRYPOINT ["python", "Team_project_01/main.py"]