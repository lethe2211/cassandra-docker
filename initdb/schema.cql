DROP KEYSPACE IF EXISTS test; -- Note that all the existing data will be deleted every time we run this script. Please comment this line out if you don't want this behavior

CREATE KEYSPACE test WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor' : 1
};

USE test;

CREATE TABLE test_table (
                            id text PRIMARY KEY,
                            data text,
                            update_time timestamp
) WITH default_time_to_live = 31536000;

INSERT INTO test.test_table (id, data, update_time)
 VALUES('test_id', 'text', '2019-09-10T11:21:59.001+0000');
