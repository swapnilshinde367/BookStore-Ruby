------------------------------------------------------------
--Authors Table
CREATE TABLE authors
(
  id serial NOT NULL,
  name character varying(50),
  email character varying(50),
  phone character varying(15),
  address text,
  created_at timestamp without time zone,
  updated_at timestamp without time zone,
  CONSTRAINT authors_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE authors
  OWNER TO postgres;

------------------------------------------------------------
--Publishers Table
CREATE TABLE publishers
(
  id serial NOT NULL,
  name character varying(50),
  email character varying(50),
  phone character varying(15),
  address text,
  created_at timestamp without time zone,
  updated_at timestamp without time zone,
  CONSTRAINT publishers_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE publishers
  OWNER TO postgres;

------------------------------------------------------------
--Books Table
CREATE TABLE books
(
  id serial NOT NULL,
  name character varying(50),
  description text,
  price numeric,
  published_date date,
  author_id integer,
  publisher_id integer,
  created_at timestamp without time zone,
  updated_at timestamp without time zone,
  CONSTRAINT books_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE books
  OWNER TO postgres;

-- Index: index_books_on_author_id

-- DROP INDEX index_books_on_author_id;

CREATE INDEX index_books_on_author_id
  ON books
  USING btree
  (author_id);

-- Index: index_books_on_publisher_id

-- DROP INDEX index_books_on_publisher_id;

CREATE INDEX index_books_on_publisher_id
  ON books
  USING btree
  (publisher_id);