# Technical SEO Checklist (rygorystyczna)

Używaj jako checklisty podczas Fazy 1. Oznacz każdy punkt: OK / Problem / Nie dotyczy + priorytet.

## Crawlability & Indexability
- [ ] robots.txt dostępny i nie blokuje kluczowych ścieżek, CSS, JS, obrazów
- [ ] Brak Disallow: / lub przypadkowych blokad
- [ ] Meta robots / X-Robots-Tag nie ustawiają noindex na stronach, które mają rankować
- [ ] Kluczowe strony zwracają 200 (nie 404, 410, 5xx, soft 404)
- [ ] Canonical jest self-referencing lub poprawnie wskazuje preferowaną wersję
- [ ] Brak konfliktów canonical vs noindex vs robots
- [ ] Sitemap.xml / sitemap_index.xml istnieje, jest aktualny, zawiera tylko 200 i indexowalne URL-e
- [ ] Sitemap zgłoszony w robots.txt
- [ ] Brak łańcuchów przekierowań > 1–2 hopów
- [ ] Brak pętli przekierowań
- [ ] HTTPS wymuszony (HSTS jeśli możliwe)
- [ ] www vs non-www rozwiązane jedną kanoniczną wersją

## Rendering & JS
- [ ] Kluczowa treść i linki widoczne w surowym HTML (nie tylko po JS)
- [ ] Krytyczne elementy nie są ukryte za lazy-load lub infinite scroll bez fallbacku
- [ ] Brak ciężkich frameworków blokujących first contentful paint bez SSR/SSG

## Core Web Vitals (mobile first)
- [ ] LCP ≤ 2.5 s (field lub lab)
- [ ] INP ≤ 200 ms
- [ ] CLS ≤ 0.1
- [ ] Brak dużych layout shifts z obrazów bez wymiarów / fontów / reklam
- [ ] Obrazy zoptymalizowane (WebP/AVIF, srcset, proper sizes)

## Struktura URL & Architektura
- [ ] URL-e czytelne, krótkie, ze słowami kluczowymi (nie ID-only)
- [ ] Spójne trailing slash / brak parametrów śmieciowych
- [ ] Głębokość kliknięć kluczowych stron ≤ 3
- [ ] Breadcrumbs obecne i z schema

## Structured Data
- [ ] Odpowiednie typy schema (Organization, WebSite, Article, Product, LocalBusiness, FAQ, BreadcrumbList itd.)
- [ ] Brak błędów w Rich Results Test / Structured Data Testing
- [ ] Schema odpowiada rzeczywistej treści strony

## International / Multi-language
- [ ] Hreflang poprawnie zaimplementowany (jeśli dotyczy)
- [ ] x-default ustawiony
- [ ] Brak konfliktów językowych

## Inne technical
- [ ] XML sitemap nie zawiera noindex / 404 / redirectów
- [ ] Pagination (rel=next/prev lub load more z poprawnym SEO)
- [ ] Faceted navigation / filtry nie generują masowego duplicate content bez canonical/noindex
- [ ] Bezpieczeństwo podstawowe (HTTPS, brak mixed content)
