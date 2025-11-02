-- Auto-generated from schema-map-postgres.psd1 (map@db2f8b8)
-- engine: postgres
-- table:  reviews
ALTER TABLE reviews ADD CONSTRAINT fk_reviews_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE;

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
