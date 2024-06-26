## Some tasks:
1. Make a double page printable version. Improper page number position for print version - both "online" and not "online" page layout needs adjusting. "EXCEPTION: Page numbers inserted into the footer may fall below the 1-inch margin. " in the guidebook.
2. Double check figures and tables format
3. Investigate table/figure caption position
4. Investigate `\mathbb` font, and if `\itshape`is the itshape of the normal font. (It may come from `eucal` package.)
5. Sort and annotate `FormatCustomizeOptions.tex`
6. Title page auto-generation

## Some thoughts may be improved in the future:
1. The whole document can be a user manual. More instructions and examples can be written in the chapters.
2. Separate "what you can customize", "what is recommended", and "what is required" in `main.tex`
3. Make a beautiful, customizable version for printings (by enabling `beautifulbinding` option).
4. Move `.sty` file to a folder? Or better just make every package being included as up-to-date ones. Or just leave them as-is because they could be useful.

## Need to confirm with formatting team:
1. Although it is mentioned in the guidebook that a preface is optional as the last thing in the front matter, there is no example provided so I did not write it in the template yet.
2. If the abstract takes two pages, should the dedication page be still numbered as "iv"? (In the template, it is hard-set in `.cls` file.)

## At release:
1. Change the typeout in `.cls` file
2. Change the beginning of the main.tex
3. Hide or remove `legacy` folder because they are from previous versions of this template which may not be useful
4. Release both in `.zip` and as overleaf template, and maybe CTAN

