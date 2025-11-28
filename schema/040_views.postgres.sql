-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  reviews

-- Contract view for [reviews]
-- Adds is_edited helper.
CREATE OR REPLACE VIEW vw_reviews AS
SELECT
  id,
  tenant_id,
  book_id,
  user_id,
  rating,
  review_text,
  created_at,
  updated_at,
  (updated_at IS NOT NULL) AS is_edited
FROM reviews;
