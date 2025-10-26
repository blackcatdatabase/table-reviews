<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\Reviews\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class ReviewDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $bookId,
        public readonly ?int $userId,
        public readonly int $rating,
        public readonly ?string $reviewText,
        public readonly \DateTimeImmutable $createdAt,
        public readonly ?\DateTimeImmutable $updatedAt
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
