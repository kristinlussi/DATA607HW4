#CREATE SCHEMA arrivals;

USE arrivals;
CREATE TABLE alaska_am (
_ char,
__ char,
LosAngeles int,
Phoenix int,
SanDiego int,
SanFrancisco int, 
Seattle int
);

# ALTER TABLE TO ALLOW 255 CHARACTERS FOR airline COLUMN
ALTER TABLE alaska_am MODIFY COLUMN _ VARCHAR(255);
# ALTER TABLE TO ALLOW 255 CHARACTERS FOR ontime_delayed column
ALTER TABLE alaska_am MODIFY COLUMN __ VARCHAR(255);

INSERT INTO alaska_am (_, __, LosAngeles, Phoenix, SanDiego, SanFrancisco, Seattle)
VALUES
	("ALASKA", "on time", 497, 221, 212, 503, 1841),
	(NULL, "delayed", 62, 12, 20, 102, 305),
    (NULL, NULL, NULL, NULL, NULL ,NULL, NULL),
	("AM WEST", "on time", 694, 4840, 383, 320, 201),
	(NULL, "delayed", 117, 415, 65, 129, 61);
