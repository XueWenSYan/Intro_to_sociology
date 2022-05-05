cd "G:\My Drive\7 Maths & Stats\CGSS\data" //change to the directory that contains the datafile
use "cgss2017.dta"

//Subjective social class and health status
tab a43e
cibar a15 if a43e<=5 & a15<=5,over1( a43e) ciopts(lcolor(gs12)) bargap(20) graph(ylab(1(1)5) ytitle("Mean self-reported health score") title("Self-rated Health over subjective social class (CGSS 2017)"))

catplot a15 a43e if a43e<=5 & a15<=5, stack asyvars percent(a43e) ytitle("% reporting each health status") title("Self-rated Health over subjective social class (CGSS 2017)", span)

graph combine g1 g2

//Education and health status
cibar a15 if a7a!=14 & a15<=5,over1( a7a) ciopts(lcolor(gs12)) bargap(20) graph(ylab(1(1)5) ytitle("Mean self-reported health score") title("Health over education (CGSS 2017)")) 

catplot a15 a7a if a7a!=14 & a15<=5,stack asyvars percent(a7a) ytitle("% reporting each health status") title("Self-rated Health over educational attainment (CGSS 2017)", span)

//Average person income and health status
cibar a8b if a8b<=1500000 & a15<=5,over1( a15) ciopts(lcolor(gs12)) bargap(20) graph(ytitle("Mean Annual Income") title("Income and Self-rated Health (CGSS 2017)")) 

twoway 	scatter a15 a8b if a8b<=500000 & a15<=5,jitter(5) msize(vsmall) || lowess a15 a8b if a8b<=500000 & a15<=5,title("Self-rated Health over Annual Income (CGSS 2017)")

//Hukou and health status
cibar a15 if a15<=5 & a18<=5,over1( a18) ciopts(lcolor(gs12)) bargap(20) graph(ylab(1(1)5) ytitle("Mean self-reported health score") title("Health over Hukou Status (CGSS 2017)")) 

cibar a15 if a15<=5,over1( isurban) ciopts(lcolor(gs12)) bargap(160) graph(ylab(1(1)5) ytitle("Mean self-reported health score") title("Health over Hukou Status (CGSS 2017)")) 
