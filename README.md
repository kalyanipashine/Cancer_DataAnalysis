DEG
The goal of differential expression testing is to determine which genes are expressed at different levels between conditions.
These genes can offer biological insight into the processes affected by the condition(s) of interest.

Dataset:
https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE212991
This study sought to identify hub genes and prospective pathways that would help in comprehending the molecular mechanisms involved in the development of EOC. 

We first remove unwanted columns then convert the data in to the matrix inorder to produce cpm, log values and zscore, plot heatmap
then we split into test and control and find its mean followed by p value and log2FC convert into dataframe.
![image](https://user-images.githubusercontent.com/112052476/199169193-7574089d-8291-4856-96f2-8c6215d30067.png)



Interpretation:

HeatMap
![image](https://user-images.githubusercontent.com/112052476/199169516-2e6e5f5d-19f9-49c4-86bc-8becb5755c1f.png)


volcano plot
![image](https://user-images.githubusercontent.com/112052476/199170761-fbc72d81-9377-4c9c-afc8-2da045038e7a.png)
shows the genes  that are highly expressed:upregulated genes and downregulated genes.
