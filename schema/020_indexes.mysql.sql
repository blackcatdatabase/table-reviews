-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  reviews

CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (tenant_id, user_id);

CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id);
