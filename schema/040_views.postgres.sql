-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-10-24T09:45:40Z)
-- engine: postgres
-- table:  reviews
-- Contract view for [reviews]
CREATE OR REPLACE VIEW vw_reviews AS
SELECT
  id,
  book_id,
  user_id,
  rating,
  review_text,
  created_at,
  updated_at
FROM reviews;
