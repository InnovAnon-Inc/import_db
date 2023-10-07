FROM python:latest

#COPY ./dist/         \
#  /tmp/dist/
#
#RUN pip install      \
#  /tmp/dist/*.whl    \
#&& rm -frv           \
#  /tmp/dist/
RUN pip install import_db

WORKDIR  /var/teamhack
VOLUME ["/var/teamhack/upload"]

RUN test -x /usr/bin/env
RUN command -v python
ENTRYPOINT [         \
  "/usr/bin/env",    \
  "python",          \
  "-m",              \
  "import_db"        \
]

EXPOSE 65432/tcp

