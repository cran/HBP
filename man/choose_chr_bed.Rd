\name{choose_chr_bed}
\alias{choose_chr_bed}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
choose which chrom from the BED file
}
\description{
choose which chrom from the BED file
}
\usage{
choose_chr_bed(m_bed, chrom_list = "chr2L")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{m_bed}{
%%     ~~Describe \code{m_bed} here~~
}
  \item{chrom_list}{
%%     ~~Describe \code{chrom_list} here~~
}
}
\author{
Chao He
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (m_bed, chrom_list = "chr2L")
{
    sec = NULL
    for (j in 1:length(chrom_list)) {
        sec = rbind(sec, m_bed[m_bed$chr == chrom_list[j], ])
    }
    return(sec)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
