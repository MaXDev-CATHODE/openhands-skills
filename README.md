# openhands-skills

Prywatny rejestr skilli dla OpenHands. Każdy skill to katalog w `.agents/skills/`,
zgodny ze specyfikacją Agent Skills.

## Zawartość

| Skill | Opis |
|-------|------|
| `seo-auditor` | Krytyczny audyt SEO (technical, on-page, content, lokalne, e-commerce, AI Overviews) po polsku |

## Jak używać w nowej rozmowie

Otwórz rozmowę **na tym repozytorium** (workspace = `openhands-skills`). OpenHands
czyta `.agents/skills/` z katalogu roboczego i buduje katalog skilli na starcie
sesji, więc skill pojawia się od razu w nowym czacie.

Skille są per-sandbox: plik wgrany do jednej rozmowy nie jest widoczny w innych,
dopóki nie znajdzie się w repozytorium, na którym te rozmowy pracują.

## Dodawanie nowego skilla

```
.agents/skills/<nazwa>/
├── SKILL.md          # wymagane: frontmatter `name` (= nazwa katalogu) + `description`
├── references/       # opcjonalne: checklisty, szablony (czytane na żądanie)
└── scripts/          # opcjonalne: skrypty pomocnicze
```

Po dodaniu lub zmianie plików skilla uruchom nową rozmowę — katalog skilli nie
odświeża się w trakcie sesji.
