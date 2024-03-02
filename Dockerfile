FROM bestrui/baidu

EXPOSE 8080
ADD endpoint.sh /endpoint.sh
ADD nas-file-manage.db /nas-file-manage.db

ENTRYPOINT ["/endpoint.sh"]
