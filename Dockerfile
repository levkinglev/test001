FROM nginx

#EXPOSE 8082

#RUN apt update && apt -y install mc lynx

COPY index.html /home

#COPY script.sh /home/script.sh
COPY script.sh /docker-entrypoint.d/script.sh

RUN chmod +x /docker-entrypoint.d/script.sh
#RUN chmod +x /home/script.sh

#CMD ["/home/script.sh"]
