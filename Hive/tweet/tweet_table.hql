create database if not exists testdb;
	use testdb;
	create external table if not exists employee (
    id              integer not null
        primary key,
    id_str          text    not null,
    tweet           text default '',
    language        text default '',
    conversation_id text    not null,
    created_at      integer not null,
    date            text    not null,
    time            text    not null,
    timezone        text    not null,
    place           text default '',
    replies_count   integer,
    likes_count     integer,
    retweets_count  integer,
    user_id         integer not null,
    user_id_str     text    not null,
    screen_name     text    not null,
    name            text default '',
    link            text,
    mentions        text,
    hashtags        text,
    cashtags        text,
    urls            text,
    photos          text,
    thumbnail       text,
    quote_url       text,
    video           integer,
    geo             text,
    near            text,
    source          text,
    time_update     integer not null,
    translate       text default '',
    trans_src       text default '',
    trans_dest      text default ''

	)
	row format delimited
	fields terminated by ','
	lines terminated by '\n'
	stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/employee';