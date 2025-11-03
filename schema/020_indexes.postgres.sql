-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  reviews
CREATE UNIQUE INDEX IF NOT EXISTS ux_reviews_book_user ON reviews (book_id, user_id);

CREATE INDEX IF NOT EXISTS idx_reviews_book_id ON reviews (book_id);

CREATE INDEX IF NOT EXISTS idx_reviews_created_at ON reviews (created_at);

CREATE INDEX IF NOT EXISTS idx_reviews_user_id ON reviews (user_id);
