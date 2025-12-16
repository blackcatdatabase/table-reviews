-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
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
