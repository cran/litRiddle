# litRiddle: R package for exploring literary quality

**Authors:** Maciej Eder, Karina van Dalen-Oskam, Joris van Zundert, Saskia Lensink<br/>
**License:** [GPL-3](https://opensource.org/licenses/GPL-3.0)


This is an R package being a part of the Riddle of Literary Quality project.

The package contains the data of a reader survey about fiction in Dutch, a description of the novels the readers rated, and the results of stylistic measurements of the novels. The package also contains functions to combine, analyze, and visualize these data.

See: [https://literaryquality.huygens.knaw.nl/](https://literaryquality.huygens.knaw.nl/) for further details. Information in Dutch about the package can be found at [https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html](https://karinavdo.github.io/RaadselLiteratuur/02_07_data_en_R_package.html).

If you use `litRiddle` in your academic publications, please consider citing the following reference: 

Karina van Dalen-Oskam (2021). _Het raadsel literatuur. Is literaire kwaliteit meetbaar?_ Amsterdam University Press.




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

**Karina van Dalen-Oskam** (2021). _Het raadsel literatuur. Is literaire kwaliteit meetbaar?_ Amsterdam University Press.

**Karina van Dalen-Oskam (2015). Prehistory of The Riddle. ('The Riddle of Literary Quality: The search for conventions of literariness', transl. of: The Riddle of Literary Quality. Op zoek naar conventies van literariteit' and was published in: _Vooys: tijdschrift voor letteren_ **32** (2014), 3, p. 25-33.), [https://literaryquality.huygens.knaw.nl/?p=537](https://literaryquality.huygens.knaw.nl/?p=537).

**Corina Koolen, Karina van Dalen-Oskam, Andreas van Cranenburgh, Erica Nagelhout** (2020). Literary quality in the eye of the Dutch reader: The National Reader Survey. _Poetics_ 79: 101439, [https://doi.org/10.1016/j.poetic.2020.101439](https://doi.org/10.1016/j.poetic.2020.101439).


More publications can be found at [https://literaryquality.huygens.knaw.nl/?page_id=588](https://literaryquality.huygens.knaw.nl/?page_id=588)


