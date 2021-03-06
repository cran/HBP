\name{find_bed_to_bed_interaction}
\alias{find_bed_to_bed_interaction}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
find the interaction between specific sites
}
\description{
find the interaction between specific sites.
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cmap}{
%%     ~~Describe \code{cmap} here~~
}
  \item{bed_matrix}{
%%     ~~Describe \code{bed_matrix} here~~
}
  \item{bed_bin}{
%%     ~~Describe \code{bed_bin} here~~
}
  \item{bedfile}{
%%     ~~Describe \code{bedfile} here~~
}
  \item{chr}{
%%     ~~Describe \code{chr} here~~
}
  \item{st_cmap}{
%%     ~~Describe \code{st_cmap} here~~
}
  \item{m_threshold}{
%%     ~~Describe \code{m_threshold} here~~
}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (cmap, bed_matrix, bed_bin, bedfile, chr = "chr4", st_cmap,
    m_threshold = 0)
{
    n = dim(cmap)[1]
    bed_count = 0
    nm_count = 0
    all_count = 0
    cccc = 0
    ooo <- data.frame(bed_id1 = numeric(0), chr_nm1 = character(0),
        n_start1 = numeric(0), n_end1 = numeric(0), n_location1 = numeric(0),
        bed_seq1 = character(0), bed_id2 = numeric(0), chr_nm2 = character(0),
        n_start2 = numeric(0), n_end2 = numeric(0), n_location2 = numeric(0),
        bed_seq2 = character(0), read_count = numeric(0), bed_bin1 = numeric(0),
        bed_bin2 = numeric(0), stringsAsFactors = FALSE)
    ooo = lapply(rbind(1:(dim(bed_matrix)[1] - 1)), find_bed_to_bed_interaction_solo,
        cmap = cmap, bed_matrix = bed_matrix, bed_bin = bed_bin,
        bedfile = bedfile, chr = chr, st_cmap = st_cmap, m_threshold = m_threshold)
    final_ooo <- data.frame(bed_id1 = numeric(0), chr_nm1 = character(0),
        n_start1 = numeric(0), n_end1 = numeric(0), n_location1 = numeric(0),
        bed_seq1 = character(0), bed_id2 = numeric(0), chr_nm2 = character(0),
        n_start2 = numeric(0), n_end2 = numeric(0), n_location2 = numeric(0),
        bed_seq2 = character(0), read_count = numeric(0), bed_bin1 = numeric(0),
        bed_bin2 = numeric(0), stringsAsFactors = FALSE)
    for (tt in 1:(dim(bed_matrix)[1] - 1)) {
        if (!is.null(ooo[tt][[1]])) {
            final_ooo = rbind(final_ooo, as.data.frame(ooo[tt][[1]]))
        }
    }
    colnames(final_ooo) = c("bed_id1", "chr_nm1", "n_start1",
        "n_end1", "n_location1", "bed_seq1", "bed_id2", "chr_nm2",
        "n_start2", "n_end2", "n_location2", "bed_seq2", "read_count",
        "bed_bin1", "bed_bin2")
    final_ooo[, 3] = as.numeric(final_ooo[, 3])
    final_ooo[, 4] = as.numeric(final_ooo[, 4])
    final_ooo[, 10] = as.numeric(final_ooo[, 10])
    final_ooo[, 9] = as.numeric(final_ooo[, 9])
    final_ooo[, 13] = as.numeric(final_ooo[, 13])
    return(final_ooo)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
