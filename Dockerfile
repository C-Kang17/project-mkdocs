FROM python:3.9

WORKDIR /usr/src

RUN pip install mkdocs \
    && pip install mkdocs-material  

COPY ./ /usr/src/

EXPOSE 8000

CMD ["mkdocs", "serve","--dev-addr=0.0.0.0:8000"]