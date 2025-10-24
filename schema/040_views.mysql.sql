-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
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
