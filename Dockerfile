FROM nginx

#EXPOSE 8082

COPY index.html /home

COPY script.sh /

RUN apt update && apt -y install mc lynx

RUN sed 's!/usr/share/nginx/html!/home!' /etc/nginx/conf.d/default.conf

RUN rm /usr/share/nginx/html/index.html

RUN ln -s /home/index.html /usr/share/nginx/html/

RUN service nginx restart

CMD ["/bin/sh", "./script.sh"]
