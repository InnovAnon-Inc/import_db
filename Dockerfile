FROM python:latest

#COPY ./dist/         \
#  /tmp/dist/
#
#RUN pip install      \
#  /tmp/dist/*.whl    \
#&& rm -frv           \
#  /tmp/dist/
RUN pip install import_db \
&&  test -x /usr/bin/env  \
&&  command -v python

WORKDIR  /var/teamhack
VOLUME ["/var/teamhack/upload"]

ENTRYPOINT [         \
  "/usr/bin/env",    \
  "python",          \
  "-m",              \
  "import_db"        \
]

EXPOSE 65432/tcp

