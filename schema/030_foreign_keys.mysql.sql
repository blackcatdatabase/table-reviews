-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  reviews

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_book FOREIGN KEY (tenant_id, book_id) REFERENCES books(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
