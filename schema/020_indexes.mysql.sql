-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  reviews
CREATE UNIQUE INDEX ux_reviews_book_user ON reviews (book_id, user_id);

CREATE INDEX idx_reviews_user_id ON reviews (user_id);
