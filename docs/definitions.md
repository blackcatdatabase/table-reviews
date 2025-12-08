# reviews

User reviews and ratings for books. UNIQUE (book_id, user_id) â€” one user can only rate a book once.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| book_id | BIGINT | NO |  | Book (FK books.id). |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| rating | TINYINT | NO |  | Rating 1..5. |
| review_text | TEXT | YES |  | Free-form review text. |
| updated_at | DATETIME(6) | YES |  | Last update (UTC), optional. |
| user_id | BIGINT | YES |  | Authoring user (FK users.id), optional. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_reviews_tenant_book_user | tenant_id, book_id, user_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_reviews_book_id | book_id | INDEX idx_reviews_book_id (book_id) |
| idx_reviews_created_at | created_at | INDEX idx_reviews_created_at (created_at) |
| idx_reviews_tenant_book | tenant_id,book_id | CREATE INDEX idx_reviews_tenant_book ON reviews (tenant_id, book_id) |
| idx_reviews_user_id | user_id | CREATE INDEX idx_reviews_user_id ON reviews (user_id) |
| ux_reviews_tenant_book_user | tenant_id,book_id,user_id | CREATE UNIQUE INDEX ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_reviews_book | tenant_id,book_id | books(tenant_id,id) | ON DELETE CASCADE |
| fk_reviews_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |
| fk_reviews_user | user_id | users(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_reviews_tenant_book_user | tenant_id, book_id, user_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_reviews_book_id | book_id | CREATE INDEX IF NOT EXISTS idx_reviews_book_id ON reviews (book_id) |
| idx_reviews_created_at | created_at | CREATE INDEX IF NOT EXISTS idx_reviews_created_at ON reviews (created_at) |
| idx_reviews_tenant_book | tenant_id,book_id | CREATE INDEX IF NOT EXISTS idx_reviews_tenant_book ON reviews (tenant_id, book_id) |
| idx_reviews_user_id | user_id | CREATE INDEX IF NOT EXISTS idx_reviews_user_id ON reviews (user_id) |
| ux_reviews_tenant_book_user | tenant_id,book_id,user_id | CREATE UNIQUE INDEX IF NOT EXISTS ux_reviews_tenant_book_user ON reviews (tenant_id, book_id, user_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_reviews_book | tenant_id,book_id | books(tenant_id,id) | ON DELETE CASCADE |
| fk_reviews_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |
| fk_reviews_user | user_id | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_reviews | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_reviews | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
