# LitRiddle 1.0.0:9001

2023-06-21 Joris J. van Zundert <joris.van.zundert@gmail.com>

## Changes breaking backwards compatibility

Data frame `books`: updated column order, naming, and types.

## Additions/changes

Added column `riddle.code.english` to data frame `books`.  Updated README, NEWS, vignette, manuals, DATA_INFO. 
Bumped development version indicator 1 up.


# LitRiddle 1.0.0:9000

2023-06-02 Joris J. van Zundert <joris.van.zundert@gmail.com>

## Changes breaking backwards compatibility

* Removed the column "motivations" from data table "reviews" to avoid putting XML or JSON etc. in data cells

## Additions

* Added a data table "motivations" (`data/motivations.rda`) that has columns "motivation.id", "book.id", "respondent.id", "paragraph.id", "sentence.id", "token", "lemma", and "upos". It is a single table solution to storing all tokens of all motivations, one token per row/line.
* Added `R/motivations.R` module/script to provide convenience functions transforming the data table "motivations" into tables having one sentence of each motivation per row, or having the full plain text of each motivation per row.
* Added all necessary and related documentation to explain changes and usage.
* Updated `DESCRIPTION.md`, `NAMESPACE.md`, `R/columnNames.R`, `R/explain.R`.

* Added a `NEWS.md` file to track changes to the package.
