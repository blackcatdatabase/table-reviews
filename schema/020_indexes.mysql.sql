-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  reviews
CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (tenant_id, user_id);

CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id);
