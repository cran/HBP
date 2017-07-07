\name{statistical_analysis}
\alias{statistical_analysis}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
Statistical significance tests
}
\description{
help user make statistical analysis and make clusters
}


%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{bedFile}{
the path of specific sites, should use BED format
}
  \item{wig_dir}{
the path of tracks file, which should be WIG or BEDGRAPH format
}
  \item{bedWindow}{
the window of sites, Default is 0
}
  \item{matrix_dir}{
the path of matrix, which is output by function generate_matirx()
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
  \item{groupNum}{
the random group number. Default is 100
}
  \item{dist_method}{
the method to calculater the statistical distance, can be chosen from manhattan,euclidean,minkowski,chebyshev,mahalanobis,canberra. default = euclidean
}
  \item{clust_method}{
the method to make tracks enrichment clusters , can be chosen from average,centroid,median,complete,single,ward.D. default = complete
}
  \item{clust_label}{
add labels at the cluster tree picture or not. default = FALSE
}
  \item{clust_k}{
the cluster number to make. default = 4
}
  \item{threshold}{
analysis threshold. default = 0
}
  \item{hm_trace}{
whether plot the trace in the heatmap, default = TRUE
}
}
\details{
HBP can perform cluster analysis using histone modifications or transcription factors binding tracks, and make Kruskal-Wallis rank sum or T test to evaluate the statistical difference of interaction frequency, or the interaction strength of the specific sites respectively. These tests will tell us whether there exist significant differences, suggesting different properties of these sites and the interactions.

can be used as following command:
statistical_analysis(bedFile="dm3_mars.bed",wig_dir="wig",matrix_dir="CTCF_dm3",chrom="chr2L",chrstart=100000,chrend=200000,resolution=50)

statistical_analysis(bedFile="dm3_mars.bed",wig_dir="wig",bedWindow=0,matrix_dir="CTCF_dm3",outputpdf=TRUE,chrom="chr2L",chrstart=100000,chrend=200000,resolution=50,groupNum=20,dist_method="euclidean",clust_method="complete",clust_label=FALSE,clust_k=3,threshold=15,hm_trace=TRUE)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
