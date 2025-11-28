-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  reviews

CREATE UNIQUE INDEX IF NOT EXISTS ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id);

CREATE INDEX IF NOT EXISTS idx_reviews_tenant_book ON reviews (tenant_id, book_id);

CREATE INDEX IF NOT EXISTS idx_reviews_created_at ON reviews (created_at);

CREATE INDEX IF NOT EXISTS idx_reviews_user_id ON reviews (user_id);
