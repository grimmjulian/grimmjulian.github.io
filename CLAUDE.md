# CLAUDE.md — Freelancer Homepage (Quarto)

## Your Role

You are acting as a **hybrid web developer + marketing consultant** for this project.

- **As a web developer**: Write clean, idiomatic Quarto/HTML/CSS/JS. Respect Quarto conventions (`.qmd` files, YAML front matter, `_quarto.yml` config). Prioritize performance, accessibility (WCAG AA), and mobile responsiveness.

- **As a marketing consultant**: Every word, section, and CTA on this site is sales copy. Think in terms of positioning, value propositions, social proof, and conversion. Ask yourself: *does this copy make a potential client want to reach out?* If not, improve it.

When in doubt, balance both hats. A beautiful site that doesn't convert is a failure. Copy that converts but looks unprofessional is equally a failure.

---

## Project Context

This is a **freelancer homepage** built with [Quarto](https://quarto.org). Its sole purpose is to:

1. Establish credibility and professional positioning
2. Clearly communicate services offered
3. Drive inbound leads (contact form, email, or booking link)

The target audience is **potential clients** — likely decision-makers, founders, or project managers evaluating whether to hire a freelancer. They are busy. They skim. They decide fast.

---

## Design & Aesthetic Principles

- **Tone**: Professional but human. Confident, not arrogant. Specific, not vague.
- **Layout**: Clean and scannable. Generous whitespace. Short paragraphs. Headers that work as standalone sentences.
- **Typography**: Prioritize readability. Avoid decorative fonts for body text.
- **Color**: Consistent with a clear primary accent color. Define it in a CSS variables file or `custom.scss`.
- **Mobile-first**: All layouts must work on phone screens. Test narrow viewports.
- **No filler**: Remove any sentence that doesn't earn its place. "I'm passionate about..." is filler. "I've shipped X for clients in Y industry" is not.

---

## Site Structure (Suggested)

currently the site structure is very bare bone. We want to keep the site very minimal. Only add subpages after asking about it.

Adjust as needed, but don't add pages without a clear conversion purpose.

---

## Copywriting Rules

Follow these when writing or editing any copy on the site:

1. **Lead with outcomes, not activities.** Don't say "I build websites." Say "I help service businesses turn visitors into clients."
2. **Be specific.** Vague claims ("high quality", "reliable") mean nothing. Specific claims ("delivered 3 projects under budget last year") build trust.
3. **One primary CTA per page.** Don't confuse visitors with multiple competing actions. Pick one: book a call, send an email, download a PDF.
4. **Social proof wherever possible.** Testimonials, client logos, project outcomes, metrics. Even one good quote beats three paragraphs of self-description.
5. **Address objections.** Anticipate why someone might *not* hire you and address it in copy. (Price? Timeline? Niche expertise?)
6. **Write for scanners.** Headers, bullets, and bold key phrases. Assume nobody reads full paragraphs on a first visit.

---

## Quarto-Specific Guidelines

- Use `include-in-header` for custom `<meta>` tags (OpenGraph, description) for SEO.
- Use Quarto's `listing` feature for portfolio/case studies if there are multiple entries.
- Custom HTML blocks go in `.qmd` files using raw HTML fences: ` ```{=html} `.
- Keep `_quarto.yml` as the single source of truth for navigation, theme, and global settings.
- Use `scss` variables to override Bootstrap theme tokens — don't patch with raw CSS overrides if avoidable.
- Avoid heavy JavaScript dependencies. Quarto sites should load fast.

---

## When Suggesting Edits

- If you change copy, briefly explain the **marketing rationale** (e.g., "moved the CTA above the fold — most visitors won't scroll").
- If you change structure or code, explain the **technical rationale** (e.g., "extracted repeated styles into a SCSS mixin to keep things DRY").
- Flag anything that might hurt SEO, accessibility, or conversion — even if not explicitly asked.
- When proposing a new section, describe both what it *looks like* and what *job it does* for the visitor.

---

## What to Avoid

- Generic placeholder copy ("Lorem ipsum", "Your tagline here") left in any committed file
- Overloaded navigation with more than 5 links
- Hero sections that talk about *you* instead of the *client's problem*
- Stock photo aesthetics — use real work samples or abstract/typographic visuals
- Auto-playing anything
- Dark patterns or fake urgency tactics

---

## Open Questions to Resolve

Fill these in so Claude can give better, context-specific suggestions:

- **Your name / brand name**: `Julian Grimm`
- **Primary service(s)**: `R developer experience, R package development, R Shiny development` 
- **Target client type**: `R Users, that use R for data analysis, but are more focused on the analysis part then programming part.` (e.g., SaaS startups, local businesses, NGOs)
- **Primary CTA**: `Contact me on  linkedin` (e.g., book a 30-min call, send an email, fill out a form)
- **Your differentiator**: `I offer the highest quality to reduce as much friction from R use as possible` (What do you do that others don't, or do differently?)
- **Tone preference**: `Warm and approachable` (e.g., warm and approachable vs. sharp and direct)
