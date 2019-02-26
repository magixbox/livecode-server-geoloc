BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cache" (
	"ip"	TEXT,
	"data"	TEXT
);
CREATE TABLE IF NOT EXISTS "asn" (
	"network"	TEXT,
	"autonomous_system_number"	INTEGER,
	"autonomous_system_organization"	TEXT
);
CREATE TABLE IF NOT EXISTS "block" (
	"network"	TEXT,
	"geoname_id"	INTEGER,
	"registered_country_geoname_id"	INTEGER,
	"represented_country_geoname_id"	TEXT,
	"is_anonymous_proxy"	INTEGER,
	"is_satellite_provider"	INTEGER,
	"postal_code"	TEXT,
	"latitude"	REAL,
	"longitude"	REAL,
	"accuracy_radius"	INTEGER
);
CREATE TABLE IF NOT EXISTS "loc" (
	"geoname_id"	INTEGER,
	"locale_code"	TEXT,
	"continent_code"	TEXT,
	"continent_name"	TEXT,
	"country_iso_code"	TEXT,
	"country_name"	TEXT,
	"subdivision_1_iso_code"	TEXT,
	"subdivision_1_name"	TEXT,
	"subdivision_2_iso_code"	TEXT,
	"subdivision_2_name"	TEXT,
	"city_name"	TEXT,
	"metro_code"	TEXT,
	"time_zone"	TEXT,
	"is_in_european_union"	INTEGER
);
CREATE INDEX IF NOT EXISTS "cachei" ON "cache" (
	"ip"
);
CREATE INDEX IF NOT EXISTS "loci" ON "loc" (
	"geoname_id"
);
CREATE INDEX IF NOT EXISTS "blocki" ON "block" (
	"network"
);
CREATE INDEX IF NOT EXISTS "asni" ON "asn" (
	"network"
);
COMMIT;
