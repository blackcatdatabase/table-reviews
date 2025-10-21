-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: reviews
ALTER TABLE reviews ADD CONSTRAINT fk_reviews_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE;

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
