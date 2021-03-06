CREATE TABLE IF NOT EXISTS NEM_ACCOUNT(
	C_ACCOUNT VARCHAR(40) NOT NULL PRIMARY KEY,
	C_PUBLICKEY VARCHAR(64),
	C_BALANCE BIGINT NOT NULL DEFAULT 0,
	C_BLOCKS INT NOT NULL DEFAULT 0,
	C_LASTBLOCK INT NOT NULL DEFAULT 0,
	C_FEES BIGINT NOT NULL DEFAULT 0,
	C_TIMESTAMP BIGINT NOT NULL DEFAULT 0,
	C_LABEL VARCHAR(255)
);
CREATE INDEX IF NOT EXISTS INDEX_NEM_ACCOUNT_C_PUBLICKEY ON NEM_ACCOUNT(C_PUBLICKEY);
CREATE INDEX IF NOT EXISTS INDEX_NEM_ACCOUNT_C_BALANCE ON NEM_ACCOUNT(C_BALANCE);
CREATE INDEX IF NOT EXISTS INDEX_NEM_ACCOUNT_C_BLOCKS ON NEM_ACCOUNT(C_BLOCKS);