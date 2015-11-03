FROM java
ENV ES_VERSION=2.0.0
RUN curl -sSL \
  https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/${ES_VERSION}/elasticsearch-${ES_VERSION}.tar.gz \
  | tar -xzf - -C /opt \
  && mv /opt/elasticsearch-${ES_VERSION} /opt/elasticsearch
EXPOSE 9200
EXPOSE 9300
VOLUME /opt/elasticsearch/data
CMD ["/opt/elasticsearch/bin/elasticsearch"]
