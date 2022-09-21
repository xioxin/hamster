--
-- Class Book as table book
--

CREATE TABLE book (
  "id" serial,
  "title" text NOT NULL,
  "subtitle" text,
  "cover" text,
  "tags" json NOT NULL
);

ALTER TABLE ONLY book
  ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- Class Image as table image
--

CREATE TABLE image (
  "id" serial,
  "bookId" integer NOT NULL,
  "path" text NOT NULL,
  "name" text NOT NULL,
  "page" integer NOT NULL,
  "zipInfo" json,
  "pHash" text
);

ALTER TABLE ONLY image
  ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Class Tag as table tag
--

CREATE TABLE tag (
  "id" serial,
  "name" json NOT NULL,
  "cover" text
);

ALTER TABLE ONLY tag
  ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


