CREATE TABLE "Page" (
  "pageId" bigint generated always as identity,
  "parentId" bigint NOT NULL,
  "title" varchar(255) NOT NULL,
  "name" varchar(255) NOT NULL,
  "slug" varchar NOT NULL
);

ALTER TABLE "Page" ADD CONSTRAINT "pkPage" PRIMARY KEY ("pageId");
ALTER TABLE "Page" ADD CONSTRAINT "fkPageParent" FOREIGN KEY ("parentId") REFERENCES "Page" ("pageId");
CREATE UNIQUE INDEX "akPageTitle" ON "Page" ("title");
CREATE UNIQUE INDEX "akPageName" ON "Page" ("name");
CREATE UNIQUE INDEX "akPageSlug" ON "Page" ("slug");

CREATE TABLE "Meta" (
  "metaId" bigint generated always as identity,
  "title" varchar(255) NOT NULL,
  "description" varchar(255) NOT NULL,
  "keywords" varchar(255) NOT NULL,
  "pageId" bigint NOT NULL
);

ALTER TABLE "Meta" ADD CONSTRAINT "pkMeta" PRIMARY KEY ("metaId");
CREATE UNIQUE INDEX "akMetaPage" ON "Meta" ("pageId");
ALTER TABLE "Meta" ADD CONSTRAINT "fkMetaPage" FOREIGN KEY ("pageId") REFERENCES "Page" ("pageId");

CREATE TABLE "News" (
  "newsId" bigint generated always as identity,
  "title" varchar(255) NOT NULL,
  "titleSecondary" varchar(255) NOT NULL,
  "text" varchar(3000) NOT NULL,
  "textSecondary" varchar(3000) NOT NULL,
  "img" jsonb NOT NULL,
  "video" varchar NOT NULL,
  "published" boolean NOT NULL
);

ALTER TABLE "News" ADD CONSTRAINT "pkNews" PRIMARY KEY ("newsId");
CREATE UNIQUE INDEX "akNewsTitle" ON "News" ("title");

CREATE TABLE "Result" (
  "resultId" bigint generated always as identity,
  "name" varchar(80) NOT NULL,
  "title" varchar(120) NOT NULL,
  "text" varchar(255) NOT NULL
);

ALTER TABLE "Result" ADD CONSTRAINT "pkResult" PRIMARY KEY ("resultId");
CREATE UNIQUE INDEX "akResultName" ON "Result" ("name");

CREATE TABLE "Social" (
  "socialId" bigint generated always as identity,
  "name" varchar(80) NOT NULL,
  "key" varchar(15) NOT NULL,
  "link" varchar NOT NULL
);

ALTER TABLE "Social" ADD CONSTRAINT "pkSocial" PRIMARY KEY ("socialId");
CREATE UNIQUE INDEX "akSocialKey" ON "Social" ("key");

CREATE TABLE "Support" (
  "supportId" bigint generated always as identity,
  "name" varchar(80) NOT NULL,
  "key" varchar(15) NOT NULL,
  "title" varchar(120) NOT NULL,
  "text" varchar(255) NOT NULL
);

ALTER TABLE "Support" ADD CONSTRAINT "pkSupport" PRIMARY KEY ("supportId");
CREATE UNIQUE INDEX "akSupportName" ON "Support" ("name");
CREATE UNIQUE INDEX "akSupportKey" ON "Support" ("key");

CREATE TABLE "Team" (
  "teamId" bigint generated always as identity,
  "firstName" varchar(255) NOT NULL,
  "lastName" varchar(255) NOT NULL,
  "middleName" varchar(255) NOT NULL,
  "position" varchar(255) NOT NULL,
  "bio" varchar(255) NOT NULL,
  "img" jsonb NOT NULL
);

ALTER TABLE "Team" ADD CONSTRAINT "pkTeam" PRIMARY KEY ("teamId");
