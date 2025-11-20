<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – reviews

User reviews and ratings for books. UNIQUE (book_id, user_id) — one user can only rate a book once.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — |  |  |
| book_id | BIGINT | NO | — | Book (FK books.id). |  |
| user_id | BIGINT | YES | — | Authoring user (FK users.id), optional. |  |
| rating | SMALLINT | NO | — | Rating 1..5. |  |
| review_text | TEXT | YES | — | Free-form review text. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | TIMESTAMPTZ(6) | YES | — | Last update (UTC), optional. |  |