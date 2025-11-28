-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  reviews

CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (tenant_id, user_id);

CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id);
