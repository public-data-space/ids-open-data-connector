FROM nginx:alpine

EXPOSE 80
#ADD dist /usr/share/nginx/html/
COPY nginx.default.conf /etc/nginx/conf.d/default.conf

# The following steps are needed because of the OpenShift security constraints
# Create some temp folders for later permission granting
RUN mkdir /var/cache/nginx/uwsgi_temp
RUN mkdir /var/cache/nginx/client_temp
RUN mkdir /var/cache/nginx/proxy_temp
RUN mkdir /var/cache/nginx/fastcgi_temp
RUN mkdir /var/cache/nginx/scgi_temp
# support running as arbitrary user which belogs to the root group
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx /var/cache/nginx/client_temp
