<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – reviews

User reviews and ratings for books.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| book_id | BIGINT UNSIGNED | NO | — | Book (FK books.id). |  |
| user_id | BIGINT UNSIGNED | YES | — | Authoring user (FK users.id), optional. |  |
| rating | TINYINT UNSIGNED | NO | — | Rating 1..5. |  |
| review_text | TEXT | YES | — | Free-form review text. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | DATETIME(6) | YES | — | Last update (UTC), optional. |  |