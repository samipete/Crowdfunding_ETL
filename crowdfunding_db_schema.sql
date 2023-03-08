-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dfwc1N
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "category_id" str   NOT NULL,
    "category" str   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" str   NOT NULL,
    "subcategory" str   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "crowdfunding" (
    "cf_id" int64   NOT NULL,
    "contact_id" int64   NOT NULL,
    "company_name" str   NOT NULL,
    "description" str   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" str   NOT NULL,
    "backers_count" int64   NOT NULL,
    "country" str   NOT NULL,
    "currency" str   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" str   NOT NULL,
    "subcategory_id" str   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int64   NOT NULL,
    "first_name" str   NOT NULL,
    "last_name" str   NOT NULL,
    "email" str   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "crowdfunding" ADD CONSTRAINT "fk_crowdfunding_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

