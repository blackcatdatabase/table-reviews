-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  reviews

CREATE UNIQUE INDEX IF NOT EXISTS ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX IF NOT EXISTS idx_reviews_tenant_book ON reviews (tenant_id, book_id);

CREATE INDEX IF NOT EXISTS idx_reviews_created_at ON reviews (created_at);

CREATE INDEX IF NOT EXISTS idx_reviews_user_id ON reviews (user_id);

CREATE INDEX IF NOT EXISTS idx_reviews_book_id ON reviews (book_id);
