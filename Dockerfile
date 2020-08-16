FROM nginx
COPY index.html /home
COPY default.conf /etc/nginx/conf.d
EXPOSE 8082
CMD ["nginx", "-g", "daemon off;"]
