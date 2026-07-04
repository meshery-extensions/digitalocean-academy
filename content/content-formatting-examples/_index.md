---
title: Content Formatting Examples
weight: 5
description: A collection of examples for formatting content, from basic Markdown text to advanced custom components and shortcodes.
draft: true
---

The Layer5 Academy platform supports a wide range of shortcodes for enriching your learning content. Shortcodes are reusable template snippets you invoke in Markdown files to generate HTML output. They come from four sources:

1. **Academy Theme** — custom shortcodes built specifically for the Academy platform.
2. **Hextra** — shortcodes ported from the [Hextra](https://imfing.github.io/hextra/docs/guide/shortcodes/) Hugo theme, namespaced under `hextra/` to avoid conflicts.
3. **Docsy Theme** — shortcodes inherited from the [Google Docsy](https://www.docsy.dev/) documentation theme.
4. **Hugo Built-in** — shortcodes included with the [Hugo](https://gohugo.io/) static site generator.

For guidance on creating your own shortcodes, see [Extending the Academy](/cloud/academy/creating-content/extending-the-academy/).

{{< alert type="note" title="Example Page: Not for Production" >}}
This page will not be published in the [production version](https://cloud.layer5.io/academy/) of the site. It is only visible for local preview and serves as a reference. You can safely delete this page from your repository at any time.
{{< /alert >}}

## Browse by category

Each example lives in its own page so you can inspect and reuse it independently. Use the sidebar or the links below to navigate.

### [Markdown](./markdown/)

Standard Markdown formatting: text styles, code blocks, lists, tables, images, and footnotes.

### [Hugo Built-in Shortcodes](./hugo-builtins/)

Shortcodes included with Hugo: `figure`, `highlight`, `ref`, `relref`, `param`, `qr`, `details`, and embedded media (`youtube`, `vimeo`, `instagram`, `x`).

### [Docsy Shortcodes](./docsy/)

Shortcodes from the Google Docsy theme: alerts, page info, blocks (cover, lead, section, feature), cards, tabs, comments, conditional text, iframe, imgproc, readfile, and API docs (Redoc, SwaggerUI).

### [Hextra Shortcodes](./hextra/)

Shortcodes ported from the Hextra theme: callouts, cards, details, steps, tabs, file tree, badges, icons, PDF embed, page include, glossary terms, Jupyter notebooks, and asciinema recordings.

### [Academy Theme Shortcodes](./academy-theme/)

Custom shortcodes for the Academy platform: alerts, details, pageinfo, chapterstyle, image, SVG, local video, version labels, CSV tables, Meshery design embeds, and usestatic path resolution.
