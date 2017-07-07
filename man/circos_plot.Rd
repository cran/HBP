\name{circos_plot}
\alias{circos_plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Visualization of interactions and tracks
}
\description{
help user plot the circos picture with tracks
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{bedFile}{
the path of specific sites, should use BED format
}
  \item{wig_dir}{
the path of tracks file, which should be WIG or BEDGRAPH format
}
  \item{matrix_dir}{
the path of matrix, which is output by function generate_matirx()
}
  \item{bedWindow}{
the window of sites, Default is 0
}
  \item{outputpdf}{
the picture format of result, if set FALSE, result will be plotted at JPEG format, if TRUE, result will be ploted at PDF format
}
  \item{chrom}{
which chromatin will be analysis, Default is all
}
  \item{chrstart}{
where will start the analysis in the chromatin, default = 0
}
  \item{chrend}{
where will end the analysis in the chromatin, when set 0, the whole chromatin will be analysed. default = 0
}
  \item{resolution}{
the resolution of Hi-C dataset.
}
  \item{circosLineWidth}{
circos line width. default = 0.01
}
  \item{circosLinecolor}{
circos line color, if choose rainbow will use random color. default = rainbow
}
  \item{if_threshold}{
the threshold of interacion readcounts, default = 0
}
  \item{circosTrackWidth}{
circos Track width. default = 40
}
}
\details{
The package can visualize the interaction of interested sequences. It is compatible with the adding of some tracks such as histone modifications or transcription factors binding sites enrichment. From the graph, users can easily find out the association rules of the chromatin interactions and other genetic and epigenetic features of the interested sequences, put forward hypotheses and further design related experiments to verify.

can be used as following command:
circos_plot(bedFile,wig_dir="wig",matrix_dir="CTCF_dm3",chrom="chr2L",chrstart=100000,chrend=200000,resolution=50)
circos_plot(bedFile,wig_dir="wig",matrix_dir="CTCF_dm3",bedWindow=0,outputpdf="TRUE",chrom="chr2L",chrstart=100000,chrend=200000,resolution=50,if_threshold=15,circosLineWidth=0.01,circosLinecolor="ReadCounts",circosTrackWidth=40)
}
\author{
Chao He
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
