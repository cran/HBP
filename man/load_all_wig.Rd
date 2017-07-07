\name{load_all_wig}
\alias{load_all_wig}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
the function to load wig file
}
\description{
the function to load wig file
}
\usage{
load_all_wig(wigfile)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{wigfile}{
%%     ~~Describe \code{wigfile} here~~
}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (wigfile)
{
    uniques <- read.table(file = wigfile, fill = TRUE, stringsAsFactors = FALSE,
        skip = 1)
    uniques <- uniques[, c(1, 2, 3, 4)]
    colnames(uniques) <- c("chr", "start", "end", "value")
    if (dim(uniques)[1] == 0) {
        stop("No data loaded! \n\n")
    }
    else {
        return(uniques)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
