-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  reviews

CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (user_id);

CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id);
