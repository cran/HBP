\name{run_hicpro}
\alias{run_hicpro}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
run the hic-pro
}
\description{
help users to map and normalize Hi-C raw dataset by HiC-Pro
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hicpro_path}{
if the path of HiC-Pro is already added to environment PATH, you can use hicpro_path = "HiC-Pro"
}
  \item{inputfile}{
the raw fastq data file folder. for example, my Hi-C data sequencing file is myhic_R1.fastq and myhic_R2,fastq, they should be placed in ../rawdata/myhic/myhic_R1.fastq and ../rawdata/myhic/myhic_R2.fastq.
}
  \item{configfile}{
the HiC-Pro config file, there is a example file in https://github.com/hechao0407/HBP/blob/master/config-hicpro.txt.

}
  \item{outdir}{
the output folder of this function
}
}
\details{
this function is used to help users to map and normalize Hi-C raw dataset by HiC-Pro. HiC-Pro can be download at http://github.com/nservant/HiC-Pro
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
