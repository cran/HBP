\name{calculate_omiccircos_data_solo}
\alias{calculate_omiccircos_data_solo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
help calculate_omiccircos_data to finish its work
}
\description{
help calculate_omiccircos_data to finish its work
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{i}{
%%     ~~Describe \code{i} here~~
}
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
\author{
Chao He
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (i, cmap, bed_matrix, bed_bin, bedfile, chr = "chr4",
    st_cmap, m_threshold = 0)
{
    jj = which(cmap[i, (i + 1):(dim(bed_matrix)[1])] > m_threshold)
    jjj = jj + i
    ooo = NULL
    if (bed_matrix[i] != 0) {
        jjjj = which(bed_matrix[jjj] != 0)
        jjjjj = jjj[jjjj]
        j_length = length(jjjjj)
        if (j_length >= 1) {
            for (k in 1:4) {
                m_all = which(bed_bin[, k] == i)
                m_all_length = length(m_all)
                if (m_all_length > 0) {
                  for (mn in 1:m_all_length) {
                    m = m_all[mn]
                    if (bedfile[m, 1] == chr) {
                      for (hh in 1:j_length) {
                        mj = jjjjj[hh]
                        for (kk in 1:4) {
                          mm_all = which(bed_bin[, kk] == mj)
                          mm_all_length = length(mm_all)
                          if (mm_all_length > 0) {
                            for (mmn in 1:mm_all_length) {
                              mm = mm_all[mmn]
                              if (bedfile[mm, 1] == chr) {
                                ooo = rbind(ooo, cbind(bedfile[m,
                                  1], bedfile[m, 2], bedfile[m,
                                  4], bedfile[mm, 1], bedfile[mm,
                                  2], bedfile[mm, 4], st_cmap[i,
                                  mj]))
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
            }
        }
    }
    return(ooo)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
