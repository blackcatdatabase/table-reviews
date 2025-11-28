-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  reviews

-- Contract view for [reviews]
-- Adds is_edited helper.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_reviews AS
SELECT
  tenant_id,
  id,
  book_id,
  user_id,
  rating,
  review_text,
  created_at,
  updated_at,
  (updated_at IS NOT NULL) AS is_edited
FROM reviews;
