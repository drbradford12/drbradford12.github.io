# install.packages("remotes")
# remotes::install_github("jhelvy/xaringanBuilder")

library(xaringanBuilder)

build_pdf("SDSS Presentation/index.html", complex_slides = FALSE, partial_slides = FALSE)
build_pdf("SDSS Presentation/index.Rmd", complex_slides = TRUE, partial_slides = TRUE)


# install.packages("webshot")
library(webshot)
install_phantomjs()

file_name <- "SDSS Presentation/index.html"
webshot(file_name, "2022SDSS-Presentation.pdf")