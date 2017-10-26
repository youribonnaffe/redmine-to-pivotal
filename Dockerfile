FROM nginx:mainline

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx-xslt.template /etc/nginx/conf.d/nginx-xslt.template
ADD redmine-to-pivotal.xslt /redmine-to-pivotal.xslt

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/nginx-xslt.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"