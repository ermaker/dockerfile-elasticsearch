FROM elasticsearch

RUN plugin install \
      mobz/elasticsearch-head \
      royrusso/elasticsearch-HQ
