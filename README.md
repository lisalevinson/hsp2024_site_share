# HSP 2024 Website Shareable 

This is a "sanitized" copy of the HSP 2024 website for re-use. For the schedules, data are pulled from Google Sheets. Versions of these with private information redacted have been shared so that you can re-implement with your own auth-protected sheets.

The site is set up within an RStudio project, so can be opened in RStudio with the `hsp2024_site_share.Rproj` file. To use a different IDE, open the root folder as a workspace. To render for the first time, first run/render `program.qmd`. This will generate all of the requisite data files. After running successfully, the full site can be built locally in RStudio through `Build` > `Render Website`, or using the terminal, `quarto` R package, or other IDE-based Quarto extensions. 

The rendered site is set to render to the `docs` folder, which can then easily be published via GitHub Pages. 

The site uses the `embedpdf` Quarto extension which is included in the `_extensions` folder, and the following R packages. No package management is set up since it was designed for short-term use, but the site renders with package versions as of 2024-08-30 with R version 4.4.1. 

```
packages <- c("tidyverse", "googlesheets4", "gt", "gtExtras", "here")
```

## Licenses

**Abstracts and scientific content:** Copyright for all scientific content (such as abstract PDFs) is retained by the original authors.  

**Website text:** All prose content licensed under Creative
Commons ([CC-BY-NC-SA
4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/))

**Code:** All code is licensed under the [MIT License](LICENSE.md).
