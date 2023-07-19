
.onAttach <- function(lib, pkg) {
    packageStartupMessage("litRiddle version: ", utils::packageVersion("litRiddle"), 
        "\n", 
        "\nThank you for working with the litRiddle package. We would greatly",
        "\nappreciate properly citing this software if you find it of use.",
        "\nWhen citing, you can refer to this software as:", 
        "\n  Eder, M., van Zundert, J., Lensink, S., and van Dalen-Oskam, K. (2023). ", 
        "\n  litRiddle: Dataset and Tools to Research the Riddle of Literary Quality",
        "\n  CRAN. <https://CRAN.R-project.org/package=litRiddle>", 
        "\nIf you prefer to cite a publication instead, here is our suggestion:",
        "\n  Eder, M., Lensink, S., Van Zundert, J.J., and Van Dalen-Oskam, K.H. ",
        "\n  (2022). Replicating The Riddle of Literary Quality: The LitRiddle ",
        "\n  Package for R. In Digital Humanities 2022 Conference Abstracts, ",
        "\n  636-637. Tokyo: The University of Tokyo, ",
        "\n  <https://dh2022.dhii.asia/abstracts/163>.",
        "\n",
        "\nTo get full BibTeX entry, type: citation(\"litRiddle\").",
        "\n"
    )
}
