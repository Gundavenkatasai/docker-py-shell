FROM debian:buster-slim
USER root
WORKDIR /ctf

# Copy flag.txt and zip it with password
COPY flag.txt flag.txt
RUN apt-get update && apt-get install zip python3 -y
RUN zip flag.zip flag.txt -e -P "s1mpl3_p4ssw0rd"
RUN rm flag.txt

# Copy main.py and entrypoint.sh
COPY main.py main.py
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Run entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["python3", "main.py"]