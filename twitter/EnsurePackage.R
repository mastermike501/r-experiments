# EnsurePackage(x) - Installs and loads a package if neccessary
EnsurePackage <- function(x) {
  x <- as.character(x);
  if(!require(x, character.only = TRUE)) {
    install.packages(pkgs = x, repos = "http://cran.r-project.org")
    require(x, character.only = TRUE)
  }
}

# PrepareTwitter() - Load packages for working with twitteR
PrepareTwitter <- function() {
  EnsurePackage("bitops")
  EnsurePackage("RCurl")
  EnsurePackage("RJSONIO")
  EnsurePackage("twitteR")
}