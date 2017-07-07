\name{generate_enzyme_file}
\alias{generate_enzyme_file}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
generate enzyme file
}
\description{
help user generate enzyme file
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{enzyme}{
the restriction enzyme name.
}
  \item{enzymesite}{
the restriction enzyme cutting sites
}
  \item{chrom_file}{
the chromatin information file
}
  \item{enzymedir}{
the output dir of this function
}
  \item{enzymeoverhangs5}{
5' overhangs on the DNA resulted from the cutting
}
  \item{genomeName}{
the name of genome
}
}
\details{
this function is used to generate restriction fragment annotation files. and some annotation files were generated in https://github.com/hechao0407/HBP/tree/master/annotation

can be used as following command:
generate_enzyme_file(enzyme="DpnII",enzymesite="GATC",chrom_file="chrom_dm3.sizes",enzymedir="annotation",enzymeoverhangs5=0,genomeName="dm3")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
