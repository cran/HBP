\name{network_analysis}
\alias{network_analysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Interaction network topological analysis
}
\description{
help user plot interaction network picture and make clusters
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{bedFile}{
the path of specific sites, should use BED format
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
  \item{bedWindow}{
the window of sites, Default is 0
}
  \item{netplot}{
draw the network plot,when node number is too much,it may be not working. default = TRUE
}
  \item{net_layout}{
the layout of net plot, can be choose from layout.auto,layout.circle and layout.fruchterman.reingold. default = layout.fruchterman.reingold
}
  \item{NetClusterType}{
the method of topological clustering, can be choose from NULL,multileve,edgeBetweenness,walktrap,labelPropagation. default = multileve
}
  \item{NetVertexSize}{
network vertex size. default = 2
}
  \item{NetVertexChangeSize}{
the parameter to change the node vertex, can be choose from NULL,degree,closeness,betweenness,Local_cluster_coefficient,Eigenvector_centrality. default = degree
}
  \item{NetVertexLableDist}{
distance between label and vertex in the network. default = 0.1
}
  \item{NetVertexColor}{
the color of vertex. default = #7fbc41
}
  \item{NetVertexLabelCex}{
the size of network vertex label. default = 0.3
}
  \item{if_threshold}{
the threshold of interacion readcounts, default = 0
}
}
\details{
HBP maps sequence sites of interest to the probability matrix, and calculate the interaction frequency and pinpoint the interaction networks mediated by these sites. The igraph package was used to plot an interaction network graph and make topological cluster analysis. According to the clustering results, users can classify all sites of interest into different types or clusters, and examine their potential differential properties respectively.

can be used as following command:
network_analysis(bedFile="CTCF_hg19_encodeCluster_GM12878.bed",matrix_dir="CTCF_GM12878",chrom="chr1",chrstart=145000000,chrend=150000000,resolution=50)

network_analysis(bedFile="CTCF_hg19_encodeCluster_GM12878.bed",matrix_dir="CTCF_GM12878",outputpdf=TRUE,chrom="chr1",chrstart=145000000,chrend=150000000,resolution=50,bedWindow=0,net_layout="layout.auto",netplot=TRUE,NetClusterType="multileve",NetVertexSize=1,NetVertexChangeSize="degree",NetVertexLableDist=0.1,NetVertexColor="#7fbc41",NetVertexLabelCex=0.3,if_threshold=5)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
