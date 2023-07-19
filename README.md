# litRiddle: R package for exploring literary quality

**Authors:** Maciej Eder, Karina van Dalen-Oskam, Joris van Zundert, Saskia Lensink<br/>
**License:** [GPL-3](https://opensource.org/license/gpl-3-0/)


This is an R package being a part of the Riddle of Literary Quality project.

The package contains the data of a reader survey about fiction in Dutch, a description of the novels the readers rated, and the results of stylistic measurements of the novels. The package also contains functions to combine, analyze, and visualize these data.

See: [https://literaryquality.huygens.knaw.nl/](https://literaryquality.huygens.knaw.nl/) for further details. Information in Dutch about the package can be found at [https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html](https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html).

If you use `litRiddle` in your academic publications, please consider citing the following references: 

Maciej Eder, Lensink, S., Van Zundert, J.J., and Van Dalen-Oskam, K.H. (2022). “Replicating The Riddle of Literary Quality: The LitRiddle Package for R.” In _Digital Humanities 2022 Conference Abstracts_, 636–637. Tokyo: The University of Tokyo / DH2022 Local Organizing Committee. https://dh2022.dhii.asia/abstracts/163.

Karina van Dalen-Oskam (2023). _The Riddle of Literary Quality: A Computational Approach._ Amsterdam University Press.

## Installation

Install the package from the CRAN repository:

``` R
install.packages("litRiddle")
```

Alternatively, try installing it directly from the current GitHub repository:

``` R
library(devtools)
install_github("karinavdo/LitRiddleData", build_vignettes = TRUE)
```


## Usage

The package is complemented with a concise vignette, which can be accessed via:

``` R
vignette("litRiddle")
```
This document will briefly guide the users through the functions of the package, but please expect some rough edges: the document will be revised in the future. A comprehensive yet rather low-level documentation of the package is provided – obviously – via the generic `help()` function in R. Try typing e.g.:


``` R
help(books)
help(respondents)
help(reviews)
help(frequencies)
help(motivations)
help(motivations.text)
help(combine.all)
help(explain)
help(find.dataset)
help(get.columns)
help(make.table)
help(make.table2)
help(order.responses)
help(litRiddle) # for the general description of the package
```

Each function of the package, as well as each dataset, is supplemented by a help page.

A concise description of the package's functionalities (in Dutch) is also provided here: 
[https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html](https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html).


## General info

**Karina van Dalen-Oskam** (2023). _The Riddle of Literary Quality: A Computational Approach._ Amsterdam University Press.

**Karina van Dalen-Oskam** (2021). _Het raadsel literatuur. Is literaire kwaliteit meetbaar?_ Amsterdam University Press.

**Maciej Eder, Saskia Lensink, Joris van Zundert, Karina van Dalen-Oskam** (2022). “Replicating The Riddle of Literary Quality: The litRiddle package for R”, in: _Digital Humanities 2022 Conference Abstracts._ The University of Tokyo, Japan, 25–29 July 2022, p. 636-637 https://dh2022.dhii.asia/dh2022bookofabsts.pdf

**Corina Koolen, Karina van Dalen-Oskam, Andreas van Cranenburgh, Erica Nagelhout** (2020). Literary quality in the eye of the Dutch reader: The National Reader Survey. _Poetics_ 79: 101439, https://doi.org/10.1016/j.poetic.2020.101439.


More publications can be found at [https://literaryquality.huygens.knaw.nl/?page_id=588](https://literaryquality.huygens.knaw.nl/?page_id=588)


