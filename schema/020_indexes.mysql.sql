-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  reviews

CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (user_id);

CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id);
