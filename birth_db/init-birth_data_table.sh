#!/bin/bash
set -e
createdb birth_db
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname birth_db <<-EOSQL
CREATE TABLE birth_data_table (
	index BIGSERIAL NOT NULL,
	alcohol_use FLOAT(53),
	anencephaly FLOAT(53),
	attendant TEXT,
	birth_loc_type FLOAT(53),
	birth_month TEXT,
	birth_state FLOAT(53),
	birth_weight FLOAT(53),
	birth_year BIGINT,
	cigarette_use FLOAT(53),
	cigarettes_per_day FLOAT(53),
	cigarettes_trimester1 FLOAT(53),
	cigarettes_trimester2 FLOAT(53),
	cigarettes_trimester3 FLOAT(53),
	day TEXT,
	delivery_method TEXT,
	"downs syndrome" FLOAT(53),
	drinks_per_week FLOAT(53),
	father_age FLOAT(53),
	father_race TEXT,
	gestation_weeks FLOAT(53),
	infant_sex TEXT,
	mother_age BIGINT,
	mother_birth_country FLOAT(53),
	mother_birth_state FLOAT(53),
	mother_education TEXT,
	mother_marital_status TEXT,
	mother_race TEXT,
	mother_state FLOAT(53),
	population FLOAT(53),
	pregnancy_weight FLOAT(53),
	resident TEXT,
	revision TEXT,
	spina_bifida FLOAT(53),
	"table" TEXT,
	timestamp BIGINT,
	uses_tobacco FLOAT(53),
	weight_gain FLOAT(53),
	CONSTRAINT birth_data_table_pk PRIMARY KEY (index)
);

\copy birth_data_table from /docker-entrypoint-initdb.d/births2012_downsampled.csv with csv header
EOSQL
