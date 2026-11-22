# openhands-skills

Rejestr skilli dla OpenHands. Skille leżą w `skills/<nazwa>/SKILL.md` i są
opisane w `.plugin/marketplace.json`, więc repo można dodać jednym kliknięciem
w `Customize > Skills` (albo przez `/add-skill`).

## Zawartość

| Skill | Opis |
|-------|------|
| `seo-auditor` | Krytyczny audyt SEO (technical, on-page, content, lokalne, e-commerce, AI Overviews) po polsku |

## Układ repo

```
.plugin/marketplace.json     # katalog skilli dla UI (source: ./skills/<nazwa>)
skills/<nazwa>/SKILL.md      # definicja skilla (frontmatter name + description)
skills/<nazwa>/references/   # checklisty i szablony czytane na żądanie
skills/<nazwa>/scripts/      # skrypty pomocnicze
.agents/skills/<nazwa>       # symlink do ../../skills/<nazwa>
```

`.agents/skills/` to lokalizacja, którą OpenHands czyta z workspace przy starcie
rozmowy. Symlink sprawia, że rozmowa otwarta **na tym repo** widzi skille bez
żadnej instalacji, a `skills/` pozostaje standardowym układem rejestru.

## Instalacja w innym czacie

```
/add-skill MaXDev-CATHODE/openhands-skills/skills/seo-auditor
```

Skille ładują się na starcie sesji — po instalacji uruchom nową rozmowę.

## Dodawanie skilla

1. `mkdir -p skills/<nazwa>` i wrzuć `SKILL.md` (`name` musi być równe nazwie
   katalogu, małe litery i myślniki).
2. Dopisz wpis w `.plugin/marketplace.json` (`source: "./skills/<nazwa>"`).
3. `ln -s ../../skills/<nazwa> .agents/skills/<nazwa>`.
