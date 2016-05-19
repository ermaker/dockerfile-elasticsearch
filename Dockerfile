FROM elasticsearch

RUN elasticsearch plugin install \
      mobz/elasticsearch-head \
      royrusso/elasticsearch-HQ
