FROM python:3.8-alpine
WORKDIR /ctf
COPY . .
ENTRYPOINT [ "python3", "main.py" ]