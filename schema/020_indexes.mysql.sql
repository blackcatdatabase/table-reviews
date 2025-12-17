-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  reviews

CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (user_id);

CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id);
