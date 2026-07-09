# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A static HTML/CSS portfolio website (no build tooling, no JS framework, no package.json). It's the exercise material for **DevOps Micro Internship (DMI) Week 1**, whose goal is for students to deploy it on an Ubuntu VM using Nginx and keep it live for 24 hours as proof of hosting/deployment skills.

## Structure

- `index.html` — the single-page site (nav, hero, about, services, courses, books, community/trust, contact, footer sections, all in one file)
- `privacy.html`, `terms.html` — standalone legal pages linked from the footer
- `style.css` — all styling for every page
- `images/` — static image assets referenced by the HTML

There is no JS build step; the only client-side behavior (mobile menu toggle, section scroll) is inline `onclick` handlers in `index.html` calling functions that must be defined inline/in a `<script>` — check `index.html` for `goToSection()`/`toggleMenu()` if editing nav behavior.

## Working with this codebase

- No build, lint, or test commands exist — this is plain static HTML/CSS. Verify changes by opening `index.html` directly in a browser or serving the directory with any static file server.
- External course links point to real Udemy/Amazon/YouTube URLs with the author's referral codes — don't alter these unless explicitly asked to.

## Mandatory ownership-proof rule (from README.md)

Before this site is deployed as part of the DMI exercise, the footer in `index.html` must be edited to replace the default line:

```html
<p>Crafted with <span>cloud</span> excellence by Pravin Mishra</p>
```

with a deployment attribution line, e.g.:

```html
<p><strong>Deployed by:</strong> DMI Cohort 2 | Rahul Sharma | Group 4 | Week 1 | 16-01-2026</p>
```

This proof must be visible in the deployment screenshot submission. If asked to help deploy this site, make sure this edit happens first and ask for the student's name/cohort/date/group if not provided.

## Deployment target

Designed to be deployed as static files behind **Nginx on an Ubuntu VM**, served at `http://<public-ip>` (port 80). There is no dynamic backend — deployment is just copying the repo's files to the web root (or a custom Nginx server block `root`) and reloading Nginx.
