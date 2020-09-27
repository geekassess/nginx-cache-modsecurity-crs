FROM owasp/modsecurity:3-nginx

COPY /etc/modsecurity /etc/modsecurity
COPY /etc/modsecurity.d/include.conf /etc/modsecurity.d/include.conf
COPY /etc/modsecurity.d/modsecurity.conf /etc/modsecurity.d/modsecurity.conf
COPY /etc/nginx/mime.types /etc/nginx/mime.types
COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
