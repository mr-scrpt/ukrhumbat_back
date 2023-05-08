DROP TABLE IF EXISTS Page;
CREATE TABLE Page (
    pageId INT generated always as identity,
    parentId INT NOT NULL,
    key VARCHAR(12) NOT NULL,
    name VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL,
    created_at timestamp NOT NULL,
    updated_at timestamp NOT NULL
);

ALTER TABLE Page ADD CONSTRAINT pkPage PRIMARY KEY (pageId);
CREATE UNIQUE INDEX akPageSlug ON Page (slug);


DROP TABLE IF EXISTS Meta;
CREATE TABLE Meta (
    metaId INT generated always as identity,
    key VARCHAR(12) NOT NULL,
    pageId INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    keywords VARCHAR(255) NOT NULL
);

ALTER TABLE Meta ADD CONSTRAINT pkMeta PRIMARY KEY (metaId);
ALTER TABLE Meta ADD CONSTRAINT fkMetaPage FOREIGN KEY (pageId) REFERENCES Page (pageId) ON DELETE CASCADE;


DROP TABLE IF EXISTS News;
CREATE TABLE News (
    newsId INT generated always as identity,
    key VARCHAR(12) NOT NULL,
    title VARCHAR(255) NOT NULL,
    textShort TEXT NOT NULL,
    textFull TEXT NOT NULL,
    imgPath text[][] NOT NULL
);

ALTER TABLE News ADD CONSTRAINT pkNews PRIMARY KEY (newsId);
CREATE UNIQUE INDEX akNewsTitle ON News (title);


DROP TABLE IF EXISTS Team;
CREATE TABLE Team (
    teamUnitId INT generated always as identity,
    key VARCHAR(12) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    middleName VARCHAR(50) NOT NULL,
    position VARCHAR(255) NOT NULL,
    bioText VARCHAR(255) NOT NULL,
    imgPath TEXT NOT NULL
);


DROP TABLE IF EXISTS Result;
CREATE TABLE Result (
    resultId INT generated always as identity,
    key VARCHAR(12) NOT NULL,
    name VARCHAR(120) NOT NULL,
    title VARCHAR(255) NOT NULL,
    text VARCHAR(255) NOT NULL
);

ALTER TABLE Result ADD CONSTRAINT pkResult PRIMARY KEY (resultId);
CREATE UNIQUE INDEX akResultTitle ON Result (title);

DROP TABLE IF EXISTS Support;
CREATE TABLE Support (
    supportId INT generated always as identity,
    key VARCHAR(12) NOT NULL,
    name VARCHAR(120) NOT NULL,
    title VARCHAR(255) NOT NULL,
    text VARCHAR(255) NOT NULL
);

ALTER TABLE Support ADD CONSTRAINT pkSupport PRIMARY KEY (supportId);

DROP TABLE IF EXISTS Social;
CREATE TABLE Social (
    socialId INT generated always as identity,
    key VARCHAR(12) NOT NULL,
    name VARCHAR(120) NOT NULL,
    linkExternal VARCHAR(255) NOT NULL
);
