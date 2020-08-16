#Выбираем из оригинальный образ
FROM nginx
#Копируем статическую страницу
COPY index.html /home
#Копируем конфиг с измененным портом и root для index.html
COPY default.conf /etc/nginx/conf.d
#прокидываем наружу порт
EXPOSE 8082
CMD ["nginx", "-g", "daemon off;"]
