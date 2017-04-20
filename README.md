# tensor-decomposition
Overcomplete Tensor Decomposition via Convex Optimization
# Summary
This set of Matlab codes reproduce the experimental results published in our paper: 
> **Overcomplete Tensor Decomposition via Convex Optimization**.   
> Qiuwei Li, Ashley Prater, Lixin Shen and Gongguo Tang. https://arxiv.org/abs/1602.08614. 

+ Folder **toolbox_tensor.rar**:  collects the required toolboxes.
	- Gunzip **toolbox_tensor.rar** 
	
	- Run *demo_ADMM.m* to reproduce Rate of success for tensor decomposition using ADMM-G, ADMM-R and SOS-2 in Figure 4
	
	- Run *demo_SOS.m* to reproduce Rate of success for tensor decomposition using SOS-2 in Figure 4
	
	- Run *Example_7_1.m* to reproduce Table I and Table II.  Note that for this particular tensor, the tensor nuclear norms are unique hence we can be recover Table I while the tensor factores are not unique and depending on the initializations. Therefore, one might get different results for Table II

For questions or bug reports please send email to Qiuwei, qiuli@mines.edu
 
