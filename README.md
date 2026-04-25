# Assignment 1: Personal Landing Page

A starter template for your personal landing page deployed to AWS S3.

## Getting Started

1. Click **"Use this template"** on GitHub to create your own copy
2. Clone your new repo locally
3. Open in Cursor or VS Code
4. Deploy to S3 as-is to verify your setup works
5. Customize with your own content
6. Re-deploy to S3

## What's Included

```
├── index.html        ← Your landing page (with Week 3 lightbox)
├── style.css         ← Your page layout and gallery styles
├── css/
│   └── lightbox.css  ← Lightbox overlay and thumbnail hooks
├── js/
│   └── lightbox.js   ← Lightbox behavior (~40 lines)
├── package.json      ← `npm run serve` for local preview
├── .gitignore
├── README.md
└── images/
    ├── DSC01957.JPG
    ├── file-10.jpeg
    ├── Manchester_United_FC_crest.svg.png
    └── w-logo-with-wordmark_0.jpg
```

## Customizing

Replace the placeholder images with your own photos, update the bio and links in `index.html`, and modify `style.css` to match your taste. Use AI to help — good prompts to try:

- "Make this a dark theme"
- "Add a hover zoom effect on the photos"
- "Change the grid to a masonry layout"
- "Add a skills section below the gallery"

## Uploading to S3

Upload `index.html`, `style.css`, the `css/` and `js/` folders, and the `images/` folder to your S3 bucket. **Do NOT upload `.git`, `.gitignore`, or `README.md`** — those are for your repo, not your website.

## Image Tips

Resize photos to under 500 KB before uploading:

- **Mac:** `sips --resampleWidth 1000 photo.jpg`
- **Linux/WSL:** `convert photo.jpg -resize 1000x photo_resized.jpg`

Keep filenames simple, lowercase, no spaces.

## Submission

Do not submit this template unmodified. Your site must have your own photos and bio.

---

# CS 506 — Week 3 (merged from [506-week3-2026](https://github.com/lhhunghimself/506-week3-2026))

A small image-overlay ("lightbox") feature in ~40 lines of vanilla JavaScript. This repo merges that starter into your landing page: thumbnails open a full-screen overlay; click the backdrop or press Escape to close.

## Run locally

```bash
npm install
npm run serve
```

Then open http://localhost:8080.

## What you'll do this week

1. Pull this starter into your existing repo via `git merge week3/main --allow-unrelated-histories` (remote `week3` → [506-week3-2026](https://github.com/lhhunghimself/506-week3-2026)), or the equivalent with your own remote name.
2. Read `js/lightbox.js` carefully (Task 2 asks you specific questions about it).
3. Integrate the lightbox on your own landing page with your own photos (Task 3).
4. Merge to main when done, tag the result as **v0.1.0** — your portfolio's first release.

See the Week 3 assignment handout for full instructions, grading criteria, and submission details.

## What's in the lightbox code

Four concepts on display — the same four the lecture covers:

- **DOM** — how the code locates elements it needs
- **Events** — three `addEventListener` calls that wire user actions to code
- **State** — a single object holding what the lightbox remembers, read by a render function
- **Security** — `textContent` and `setAttribute` used to prevent XSS

These aren't lightbox-specific concepts. They're the foundation of every piece of modern front-end JavaScript you'll ever read.

---

*CS 506 · Cloud Web Application Engineering with AI*
