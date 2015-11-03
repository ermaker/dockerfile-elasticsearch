# elasticsearch

# Getting Started

```shell
docker run \
  -p 9200:9200 \
  -p 9300:9300 \
  ermaker/elasticsearch
```

# Usage

```shell
CWD=$(pwd $(dirname $0))
CONF=${CWD}/es.conf.d
DATA=${CWD}/es.data

docker create \
  --name elasticsearch \
  -v ${CONF}:/opt/elasticsearch/config \
  -v ${DATA}:/opt/elasticsearch/data \
  -e "ES_HEAP_SIZE=2g" \
  -p 9200:9200 \
  -p 9300:9300 \
  --restart=on-failure:5 \
  ermaker/elasticsearch
```
