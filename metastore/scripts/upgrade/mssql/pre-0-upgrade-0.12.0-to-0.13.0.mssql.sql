CREATE TABLE PART_COL_STATS
(
    CS_ID bigint NOT NULL,
    AVG_COL_LEN float NULL,
    "COLUMN_NAME" varchar(128) NOT NULL,
    COLUMN_TYPE varchar(128) NOT NULL,
    DB_NAME varchar(128) NOT NULL,
    DOUBLE_HIGH_VALUE float NULL,
    DOUBLE_LOW_VALUE float NULL,
    LAST_ANALYZED bigint NOT NULL,
    LONG_HIGH_VALUE bigint NULL,
    LONG_LOW_VALUE bigint NULL,
    MAX_COL_LEN bigint NULL,
    NUM_DISTINCTS bigint NULL,
    NUM_FALSES bigint NULL,
    NUM_NULLS bigint NOT NULL,
    NUM_TRUES bigint NULL,
    PART_ID bigint NULL,
    PARTITION_NAME varchar(767) NOT NULL,
    "TABLE_NAME" varchar(128) NOT NULL
);

ALTER TABLE PART_COL_STATS ADD CONSTRAINT PART_COL_STATS_PK PRIMARY KEY (CS_ID);

ALTER TABLE PART_COL_STATS ADD CONSTRAINT PART_COL_STATS_FK1 FOREIGN KEY (PART_ID) REFERENCES PARTITIONS (PART_ID) ;

CREATE INDEX PART_COL_STATS_N49 ON PART_COL_STATS (PART_ID);

