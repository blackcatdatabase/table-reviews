-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  reviews
CREATE INDEX idx_reviews_book_id ON reviews (book_id);

CREATE INDEX idx_reviews_created_at ON reviews (created_at);
