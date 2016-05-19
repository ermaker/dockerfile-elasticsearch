FROM elasticsearch

RUN plugin install mobz/elasticsearch-head \
    && plugin install royrusso/elasticsearch-HQ
