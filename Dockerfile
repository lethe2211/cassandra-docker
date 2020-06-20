FROM cassandra:latest

COPY conf/cassandra/cassandra.yaml /etc/cassandra/cassandra.yaml
CMD ["cassandra", "-f"]
