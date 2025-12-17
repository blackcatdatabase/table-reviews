-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  reviews

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE RESTRICT;

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_book FOREIGN KEY (tenant_id, book_id) REFERENCES books(tenant_id, id) ON DELETE CASCADE;

ALTER TABLE reviews ADD CONSTRAINT fk_reviews_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
