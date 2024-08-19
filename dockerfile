FROM python:3.10.14-slim-bullseye

WORKDIR /flask-demo

RUN python3 -m pip install --no-cache-dir flask gevent -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .

ENTRYPOINT [ "python3", "hello.py" ]