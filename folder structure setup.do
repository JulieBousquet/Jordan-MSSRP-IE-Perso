
	global github 	"C:/Users/julie/OneDrive/Documents/GitHub/Jordan-MSSRP-IE-Perso"
	global dropbox	"C:\Users\julie\Dropbox\Jordan MSSRP_Perso"
	
	
	
	foreach folder in github dropbox {
	
		* Create project folder
		iefolder new project, projectfolder(${`folder'}) 
		* Create round folder
		iefolder new round Baseline, projectfolder(${`folder'}) abbrev(bl)
		
		* Create randomization folder
		iefolder new round Randomization, projectfolder(${`folder'}) abbrev(rand)
		
	}
	
	* Create placeholders on github project strucutre
	iegitaddmd, folder(${github})
