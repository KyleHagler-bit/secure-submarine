
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL,
    "clearance_level" INTEGER NOT NULL DEFAULT 0
);

INSERT INTO "user" ("username", "password", "clearance_level")
VALUES ('Admiral Greer', 'tuna', 18),
('Captain Borodin', 'shark', 10),
('Lieutenant Nguyen', 'fishy', 4),
('Lieutenant Ryan', 'tuna', 4);


CREATE TABLE "secret" (
    "id" SERIAL PRIMARY KEY,
    "content" VARCHAR (80) UNIQUE NOT NULL,
    "secrecy_level" INTEGER NOT NULL DEFAULT 0
);

INSERT INTO "secret" ("content", "secrecy_level")
VALUES ('Admirals Only: Captain Borodin is totally weird.', 13),
('Captains Or Above: Lieutenant Ryan is looking fly.', 6),
('Lieutenants Or Above: We are heading to the Bahamas.', 3);

DROP TABLE "user";

CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL,
    "clearance_level" INTEGER NOT NULL DEFAULT 0
);

INSERT INTO "user" ("username", "password", "clearance_level")
VALUES ('Admiral Greer', '$2b$10$p5Wkte33hlOBOcUtJie6H.PnCvk8v.KjZspVoAFtT7g5v5xK.EXVG', 18),
('Captain Borodin', '$2b$10$p5Wkte33hlOBOcUtJie6H.ZIgFjzr4zY8FItxC8gZyqIWD5gYmL0m', 10),
('Lieutenant Nguyen', '$2b$10$p5Wkte33hlOBOcUtJie6H.vaUd5ikB1LWCbVZAA87BR63NiDorn1C', 4),
('Lieutenant Ryan', '$2b$10$p5Wkte33hlOBOcUtJie6H.PnCvk8v.KjZspVoAFtT7g5v5xK.EXVG', 4);

DROP TABLE "user";

CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL,
    "clearance_level" INTEGER NOT NULL DEFAULT 0
);

INSERT INTO "user" ("username", "password", "clearance_level")
VALUES ('Admiral Greer', '$2b$10$uxPm0qeJAz70oqhEg8dX6uXlYc2PWUtPuZhTa65OiDv2LCHA41OLq', 18),
('Captain Borodin', '$2b$10$iUCrWSMvLpYuKQLsmmTiNe3gfU6jAdyElCbCLtboVH6DlXJdsuPxG', 10),
('Lieutenant Nguyen', '$2b$10$/3yhbbjXPPf3L4Z1gXDA5OJzJkf6b.2CuvIA8OzP6c8jPEQlbo5re', 4),
('Lieutenant Ryan', '$2b$10$hr1Tlo6K.yxAq3FC4iIHsuYQwYpjQC8SyDnYykMu/LNB9TXMkxMt2', 4);

