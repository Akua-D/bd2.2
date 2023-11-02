CREATE TABLE "public.authorship_of_the_book" (
	"id_authorship" serial NOT NULL,
	"id_author" serial4 NOT NULL,
	"id_book" serial4 NOT NULL,
	CONSTRAINT "authorship_of_the_book_pk" PRIMARY KEY ("id_authorship")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.readers" (
	"id_readers_tickets" serial NOT NULL,
	"full_name" varchar(30) NOT NULL,
	"address" varchar(100) NOT NULL,
	"phone_number" varchar(12) NOT NULL,
	CONSTRAINT "readers_pk" PRIMARY KEY ("id_readers_tickets")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.authors" (
	"id_author" serial NOT NULL,
	"full_name" varchar(30) NOT NULL,
	CONSTRAINT "authors_pk" PRIMARY KEY ("id_author")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.books" (
	"id_book" serial NOT NULL,
	"book_title" varchar(30) NOT NULL,
	"author(s)" varchar(30) NOT NULL,
	"publication_year" varchar(4) NOT NULL,
	"volume" integer(4) NOT NULL,
	"price" integer NOT NULL,
	"number_of_copies" integer NOT NULL,
	"id_publisher" serial NOT NULL,
	CONSTRAINT "books_pk" PRIMARY KEY ("id_book")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.fixing_the_receipt" (
	"id_order" serial NOT NULL,
	"id_book" serial4 NOT NULL,
	"id_readers_tickets" serial4 NOT NULL,
	CONSTRAINT "fixing_the_receipt_pk" PRIMARY KEY ("id_order")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.publishers" (
	"id_publishers" serial(30) NOT NULL,
	"publishers_name" varchar(30) NOT NULL,
	"City" varchar(30) NOT NULL,
	CONSTRAINT "publishers_pk" PRIMARY KEY ("id_publishers")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "authorship_of_the_book" ADD CONSTRAINT "authorship_of_the_book_fk0" FOREIGN KEY ("id_author") REFERENCES "authors"("id_author");
ALTER TABLE "authorship_of_the_book" ADD CONSTRAINT "authorship_of_the_book_fk1" FOREIGN KEY ("id_book") REFERENCES "books"("id_book");



ALTER TABLE "books" ADD CONSTRAINT "books_fk0" FOREIGN KEY ("id_publisher") REFERENCES "publishers"("id_publishers");

ALTER TABLE "fixing_the_receipt" ADD CONSTRAINT "fixing_the_receipt_fk0" FOREIGN KEY ("id_book") REFERENCES "books"("id_book");
ALTER TABLE "fixing_the_receipt" ADD CONSTRAINT "fixing_the_receipt_fk1" FOREIGN KEY ("id_readers_tickets") REFERENCES "readers"("id_readers_tickets");








