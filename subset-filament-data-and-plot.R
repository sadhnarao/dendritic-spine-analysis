
#-- TO READ IN AND PLOT SPINE PARAMETERS FROM IMARIS SPINE STATS
# colors from http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
# color theory for biological scientists http://jfly.iam.u-tokyo.ac.jp/color/

#-- load packages
install.packages("ggpubr")
library(ggpubr)

#reading in all GFP filaments

gfp_1<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_1-1_Statistics\\040218_dg_GFP_63x_1-1_Average.csv") #read .csv data file into R
gfp_2<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_1-2_Statistics\\040218_dg_GFP_63x_1-2_Average.csv") #read .csv data file into R
gfp_3<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_2-1_Statistics\\040218_dg_GFP_63x_2-1_Average.csv") #read .csv data file into R
gfp_4<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_2-2_Statistics\\040218_dg_GFP_63x_2-2_Average.csv") #read .csv data file into R
gfp_5<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_2-3_Statistics\\040218_dg_GFP_63x_2-3_Average.csv") #read .csv data file into R
gfp_6<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_3-1_Statistics\\040218_dg_GFP_63x_3-1_Average.csv") #read .csv data file into R
gfp_7<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_4-1_Statistics\\040218_dg_GFP_63x_4-1_Average.csv") #read .csv data file into R
gfp_8<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_4-2_Statistics\\040218_dg_GFP_63x_4-2_Average.csv") #read .csv data file into R
gfp_9<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_6-1_Statistics\\040218_dg_GFP_63x_6-1_Average.csv") #read .csv data file into R
gfp_10<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_6-2_Statistics\\040218_dg_GFP_63x_6-2_Average.csv") #read .csv data file into R
gfp_11<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_7-1_Statistics\\040218_dg_GFP_63x_7-1_Average.csv") #read .csv data file into R
gfp_12<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_7-2_Statistics\\040218_dg_GFP_63x_7-2_Average.csv") #read .csv data file into R
gfp_13<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_8-1_Statistics\\040218_dg_GFP_63x_8-1_Average.csv") #read .csv data file into R
gfp_14<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\040218_dg_GFP_63x_8-2_Statistics\\040218_dg_GFP_63x_8-2_Average.csv") #read .csv data file into R
gfp_15<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041618_dg_gfp_63x_1-1_Statistics\\041618_dg_gfp_63x_1-1_Average.csv") #read .csv data file into R
gfp_16<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041618_dg_gfp_63x_2-1_Statistics\\041618_dg_gfp_63x_2-1_Average.csv") #read .csv data file into R
gfp_17<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041618_dg_gfp_63x_3-1_Statistics\\041618_dg_gfp_63x_3-1_Average.csv") #read .csv data file into R
gfp_18<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041618_dg_gfp_63x_5-1_Statistics\\041618_dg_gfp_63x_5-1_Average.csv") #read .csv data file into R
gfp_19<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041618_dg_gfp_63x_6-1_Statistics\\041618_dg_gfp_63x_6-1_Average.csv") #read .csv data file into R

#reading in all TSH filaments


tsh_1<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041218_dg_tsh_63x_1-1_Statistics\\041218_dg_tsh_63x_1-1_Average.csv", skip=3) #read .csv data file into R
tsh_2<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041218_dg_tsh_63x_2-1_Statistics\\041218_dg_tsh_63x_2-1_Average.csv", skip=3) #read .csv data file into R
tsh_3<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041218_dg_tsh_63x_3-1_Statistics\\041218_dg_tsh_63x_3-1_Average.csv", skip=3) #read .csv data file into R
tsh_4<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041218_dg_tsh_63x_4-1_Statistics\\041218_dg_tsh_63x_4-1_Average.csv", skip=3) #read .csv data file into R
tsh_5<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_5-1_Statistics\\041318_dg_tsh_63x_5-1_Average.csv", skip=3) #read .csv data file into R
tsh_6<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_6-1_Statistics\\041318_dg_tsh_63x_6-1_Average.csv", skip=3) #read .csv data file into R
tsh_7<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_7-1_Statistics\\041318_dg_tsh_63x_7-1_Average.csv", skip=3) #read .csv data file into R
tsh_8<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_8-1_Statistics\\041318_dg_tsh_63x_8-1_Average.csv", skip=3) #read .csv data file into R
tsh_9<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_9-1_Statistics\\041318_dg_tsh_63x_9-1_Average.csv", skip=3) #read .csv data file into R
tsh_10<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_10-1_Statistics\\041318_dg_tsh_63x_10-1_Average.csv", skip=3) #read .csv data file into R
tsh_11<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_11-1_Statistics\\041318_dg_tsh_63x_11-1_Average.csv", skip=3) #read .csv data file into R
tsh_12<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_12-1_Statistics\\041318_dg_tsh_63x_12-1_Average.csv", skip=3) #read .csv data file into R
tsh_13<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_13-1_Statistics\\041318_dg_tsh_63x_13-1_Average.csv", skip=3) #read .csv data file into R
tsh_14<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_14-1_Statistics\\041318_dg_tsh_63x_14-1_Average.csv", skip=3) #read .csv data file into R
tsh_15<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_15-1_Statistics\\041318_dg_tsh_63x_15-1_Average.csv", skip=3) #read .csv data file into R
tsh_16<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_16-1_Statistics\\041318_dg_tsh_63x_16-1_Average.csv", skip=3) #read .csv data file into R
tsh_17<-read.csv("C:\\Users\\sadhnara\\Desktop\\rstudio-temp\\imaris_segmentation\\041318_dg_tsh_63x_17-1_Statistics\\041318_dg_tsh_63x_17-1_Average.csv", skip=3) #read .csv data file into R



#extracting spine length information, datafile not being read in subsetting

#nfiles=1:20
#for (i in nfiles){
 # filename<-noquote(paste("gfp_",i, sep=""))
 # newfilename<-noquote(paste("spl",i, sep=""))
#assign(newfilename, subset(filename, Variable == "Spine Length"))
#}

# spine length -----------------------------------------------------
sp_length1= subset(gfp_1, Variable == "Spine Length")
sp_length2 = subset(gfp_2, Variable == "Spine Length")
sp_length3 = subset(gfp_3, Variable == "Spine Length")
sp_length4 = subset(gfp_4, Variable == "Spine Length")
sp_length5 = subset(gfp_5, Variable == "Spine Length")
sp_length6 = subset(gfp_6, Variable == "Spine Length")
sp_length7 = subset(gfp_7, Variable == "Spine Length")
sp_length8 = subset(gfp_8, Variable == "Spine Length")
sp_length9 = subset(gfp_9, Variable == "Spine Length")
sp_length10 = subset(gfp_10, Variable == "Spine Length")
sp_length11 = subset(gfp_11, Variable == "Spine Length")
sp_length12 = subset(gfp_12, Variable == "Spine Length")
sp_length13= subset(gfp_13, Variable == "Spine Length")
sp_length14 = subset(gfp_14, Variable == "Spine Length")
sp_length15 = subset(gfp_15, Variable == "Spine Length")
sp_length16 = subset(gfp_16, Variable == "Spine Length")
sp_length17 = subset(gfp_17, Variable == "Spine Length")
sp_length18 = subset(gfp_18, Variable == "Spine Length")
sp_length19 = subset(gfp_19, Variable == "Spine Length")

sp_length21= subset(tsh_1, Variable == "Spine Length")
sp_length22 = subset(tsh_2, Variable == "Spine Length")
sp_length23 = subset(tsh_3, Variable == "Spine Length")
sp_length24 = subset(tsh_4, Variable == "Spine Length")
sp_length25 = subset(tsh_5, Variable == "Spine Length")
sp_length26 = subset(tsh_6, Variable == "Spine Length")
sp_length27 = subset(tsh_7, Variable == "Spine Length")
sp_length28 = subset(tsh_8, Variable == "Spine Length")
sp_length29 = subset(tsh_9, Variable == "Spine Length")
sp_length30 = subset(tsh_10, Variable == "Spine Length")
sp_length31 = subset(tsh_11, Variable == "Spine Length")
sp_length32 = subset(tsh_12, Variable == "Spine Length")
sp_length33= subset(tsh_13, Variable == "Spine Length")
sp_length34 = subset(tsh_14, Variable == "Spine Length")
sp_length35 = subset(tsh_15, Variable == "Spine Length")
sp_length36 = subset(tsh_16, Variable == "Spine Length")
sp_length37 = subset(tsh_17, Variable == "Spine Length")

mean_spine_length<-c(sp_length1$Mean, sp_length2$Mean, sp_length3$Mean, sp_length4$Mean, sp_length5$Mean, sp_length6$Mean, sp_length7$Mean, sp_length8$Mean, sp_length9$Mean, sp_length10$Mean, sp_length11$Mean, sp_length12$Mean
                     ,sp_length13$Mean, sp_length14$Mean, sp_length15$Mean, sp_length16$Mean, sp_length17$Mean, sp_length18$Mean, sp_length19$Mean)

genotype<-c("gfp")

my_imaris_data<-data.frame(genotype, mean_spine_length)

tsh_data<-data.frame(genotype="tsh", mean_spine_length=c(sp_length21$Mean,sp_length22$Mean, sp_length23$Mean, sp_length24$Mean,sp_length25$Mean, sp_length26$Mean, sp_length27$Mean,sp_length28$Mean,sp_length29$Mean,sp_length30$Mean,sp_length31$Mean,sp_length32$Mean,sp_length33$Mean, sp_length34$Mean,sp_length36$Mean, sp_length37$Mean))
                                                         
my_imaris_data<-rbind(my_imaris_data, tsh_data)   

library(ggplot2)
                                                        
spinedata<-ggplot(my_imaris_data, aes(y= mean_spine_length, x= genotype,  color= genotype)) + 
  geom_boxplot(size =1, width = 0.5) + 
  scale_color_manual(values=c("#D3D3D3", "#E69F00"))+
  #geom_jitter(shape=19, position=position_jitter(0.2), color= "#D55E00", size=2)+
  labs(title="", x="", y = "Mean Spine Length")+
  scale_x_discrete(breaks=c("gfp","tsh"),
                   labels=c("GFP", "TIAM1shRNA"))+
  stat_summary(fun.y=mean, geom="point", shape=23, size=3, fill = "#708090")+
  theme_classic()+
  theme(axis.line = element_line(colour = 'black', size = 1), axis.ticks = element_line(colour = "black", size = 1), axis.text=element_text(size=14,face="bold"), axis.title.x=element_text(size=14,face="bold"), axis.title.y=element_text(size=14,face="bold"), legend.position="none")                                                          
#stat_compare_means(method = "wilcox.test",  ref.group = "gfp", label = "p.signif",
                  # label.y = c(3.5))     


                                                         

wilcox.test(mean_spine_length~ genotype, data = my_imaris_data)

                                                        

# Spine neck diameter -----------------------------------------------------

                                                         
neckdia1= subset(gfp_1, Variable == "Spine Neck Mean Diameter")
neckdia2 = subset(gfp_2, Variable == "Spine Neck Mean Diameter")
neckdia3 = subset(gfp_3, Variable == "Spine Neck Mean Diameter")
neckdia4 = subset(gfp_4, Variable == "Spine Neck Mean Diameter")
neckdia5 = subset(gfp_5, Variable == "Spine Neck Mean Diameter")
neckdia6 = subset(gfp_6, Variable == "Spine Neck Mean Diameter")
neckdia7 = subset(gfp_7, Variable == "Spine Neck Mean Diameter")
neckdia8 = subset(gfp_8, Variable == "Spine Neck Mean Diameter")
neckdia9= subset(gfp_9, Variable == "Spine Neck Mean Diameter")
neckdia10 = subset(gfp_10, Variable == "Spine Neck Mean Diameter")
neckdia11 = subset(gfp_11, Variable == "Spine Neck Mean Diameter")
neckdia12 = subset(gfp_12, Variable == "Spine Neck Mean Diameter")
neckdia13= subset(gfp_13, Variable == "Spine Neck Mean Diameter")
neckdia14 = subset(gfp_14, Variable == "Spine Neck Mean Diameter")
neckdia15 = subset(gfp_15, Variable == "Spine Neck Mean Diameter")
neckdia16 = subset(gfp_16, Variable == "Spine Neck Mean Diameter")
neckdia17 = subset(gfp_17, Variable == "Spine Neck Mean Diameter")
neckdia18 = subset(gfp_18, Variable == "Spine Neck Mean Diameter")
neckdia19 = subset(gfp_19, Variable == "Spine Neck Mean Diameter")

neckdia21= subset(tsh_1, Variable == "Spine Neck Mean Diameter")
neckdia22 = subset(tsh_2, Variable == "Spine Neck Mean Diameter")
neckdia23 = subset(tsh_3, Variable == "Spine Neck Mean Diameter")
neckdia24 = subset(tsh_4, Variable == "Spine Neck Mean Diameter")
neckdia25 = subset(tsh_5, Variable == "Spine Neck Mean Diameter")
neckdia26 = subset(tsh_6, Variable == "Spine Neck Mean Diameter")
neckdia27 = subset(tsh_7, Variable == "Spine Neck Mean Diameter")
neckdia28 = subset(tsh_8, Variable == "Spine Neck Mean Diameter")
neckdia29 = subset(tsh_9, Variable == "Spine Neck Mean Diameter")
neckdia30 = subset(tsh_10, Variable == "Spine Neck Mean Diameter")
neckdia31 = subset(tsh_11, Variable == "Spine Neck Mean Diameter")
neckdia32 = subset(tsh_12, Variable == "Spine Neck Mean Diameter")
neckdia33= subset(tsh_13, Variable == "Spine Neck Mean Diameter")
neckdia34 = subset(tsh_14, Variable == "Spine Neck Mean Diameter")
neckdia35 = subset(tsh_15, Variable == "Spine Neck Mean Diameter")
neckdia36 = subset(tsh_16, Variable == "Spine Neck Mean Diameter")
neckdia37 = subset(tsh_17, Variable == "Spine Neck Mean Diameter")                                                        
                                                         
                                                        
mean_spine_neck_dia<-c(neckdia1$Mean, neckdia2$Mean, neckdia3$Mean, neckdia4$Mean, neckdia5$Mean, neckdia6$Mean, neckdia7$Mean, neckdia8$Mean, neckdia9$Mean, neckdia10$Mean, neckdia11$Mean, neckdia12$Mean
                     ,neckdia13$Mean, neckdia14$Mean, neckdia15$Mean, neckdia16$Mean, neckdia17$Mean, neckdia18$Mean, neckdia19$Mean)

genotype<-c("gfp") 
my_imaris_data2<-data.frame(genotype, mean_spine_neck_dia)

tsh_data2<-data.frame(genotype="tsh", mean_spine_neck_dia=c(neckdia21$Mean,neckdia22$Mean, neckdia23$Mean, neckdia24$Mean,neckdia25$Mean, neckdia26$Mean, neckdia27$Mean,neckdia28$Mean,neckdia29$Mean,neckdia30$Mean,neckdia31$Mean,neckdia32$Mean,neckdia33$Mean, sp_length34$Mean,neckdia36$Mean, neckdia37$Mean))

my_imaris_data2<-rbind(my_imaris_data2, tsh_data2)                                               


spinedata2<-ggplot(my_imaris_data2, aes(y= mean_spine_neck_dia, x= genotype, color= genotype)) + 
  geom_boxplot(size =1, width = 0.8) + 
  
  scale_color_manual(values=c("#999999", "#CC79A7"))+
  #geom_jitter(shape=19, position=position_jitter(0.2), color= "#D55E00", size=2)+
  labs(title="", x="", y = "Mean Neck Diameter")+
  scale_x_discrete(breaks=c("gfp","tsh"),
                   labels=c("GFP", "TIAM1shRNA"))+
  stat_summary(fun.y=mean, geom="point", shape=23, size=3, fill = "#D55E00", stroke = 1.5, color = "#000000")+
  theme_classic()   +
  theme(axis.line = element_line(colour = 'black', size = 1), axis.ticks = element_line(colour = "black", size = 1), axis.text=element_text(size=14,face="bold"), axis.title.x=element_text(size=14,face="bold"), axis.title.y=element_text(size=14,face="bold"), legend.position="none") +
 # stat_compare_means(method = "wilcox.test",  ref.group = "gfp", label = "p.signif",
                                                                # label.y = c(1))     






wilcox.test(mean_spine_neck_dia~ genotype, data = my_imaris_data2)


# spine neck length -------------------------------------------------------

necklen1= subset(gfp_1, Variable == "Spine Neck Length")
necklen2 = subset(gfp_2, Variable == "Spine Neck Length")
necklen3 = subset(gfp_3, Variable == "Spine Neck Length")
necklen4 = subset(gfp_4, Variable == "Spine Neck Length")
necklen5 = subset(gfp_5, Variable == "Spine Neck Length")
necklen6 = subset(gfp_6, Variable == "Spine Neck Length")
necklen7 = subset(gfp_7, Variable == "Spine Neck Length")
necklen8 = subset(gfp_8, Variable == "Spine Neck Length")
necklen9= subset(gfp_9, Variable == "Spine Neck Length")
necklen10 = subset(gfp_10, Variable == "Spine Neck Length")
necklen11 = subset(gfp_11, Variable == "Spine Neck Length")
necklen12 = subset(gfp_12, Variable == "Spine Neck Length")
necklen13= subset(gfp_13, Variable == "Spine Neck Length")
necklen14 = subset(gfp_14, Variable == "Spine Neck Length")
necklen15 = subset(gfp_15, Variable == "Spine Neck Length")
necklen16 = subset(gfp_16, Variable == "Spine Neck Length")
necklen17 = subset(gfp_17, Variable == "Spine Neck Length")
necklen18 = subset(gfp_18, Variable == "Spine Neck Length")
necklen19 = subset(gfp_19, Variable == "Spine Neck Length")

necklen21= subset(tsh_1, Variable == "Spine Neck Length")
necklen22 = subset(tsh_2, Variable == "Spine Neck Length")
necklen23 = subset(tsh_3, Variable == "Spine Neck Length")
necklen24 = subset(tsh_4, Variable == "Spine Neck Length")
necklen25 = subset(tsh_5, Variable == "Spine Neck Length")
necklen26 = subset(tsh_6, Variable == "Spine Neck Length")
necklen27 = subset(tsh_7, Variable == "Spine Neck Length")
necklen28 = subset(tsh_8, Variable == "Spine Neck Length")
necklen29 = subset(tsh_9, Variable == "Spine Neck Length")
necklen30 = subset(tsh_10, Variable == "Spine Neck Length")
necklen31 = subset(tsh_11, Variable == "Spine Neck Length")
necklen32 = subset(tsh_12, Variable == "Spine Neck Length")
necklen33= subset(tsh_13, Variable == "Spine Neck Length")
necklen34 = subset(tsh_14, Variable == "Spine Neck Length")
necklen35 = subset(tsh_15, Variable == "Spine Neck Length")
necklen36 = subset(tsh_16, Variable == "Spine Neck Length")
necklen37 = subset(tsh_17, Variable == "Spine Neck Length")                                                        


mean_spine_neck_len<-c(necklen1$Mean, necklen2$Mean, necklen3$Mean, necklen4$Mean, necklen5$Mean, necklen6$Mean, necklen7$Mean, necklen8$Mean, necklen9$Mean, necklen10$Mean, necklen11$Mean, necklen12$Mean
                       ,necklen13$Mean, necklen14$Mean, necklen15$Mean, necklen16$Mean, necklen17$Mean, necklen18$Mean, necklen19$Mean)

genotype<-c("gfp") 
my_imaris_data3<-data.frame(genotype, mean_spine_neck_len)

tsh_data3<-data.frame(genotype="tsh", mean_spine_neck_len=c(necklen21$Mean,necklen22$Mean, necklen23$Mean, necklen24$Mean,necklen25$Mean, necklen26$Mean, necklen27$Mean,necklen28$Mean,necklen29$Mean,necklen30$Mean,necklen31$Mean,necklen32$Mean,necklen33$Mean, necklen33$Mean,necklen36$Mean, necklen37$Mean))

my_imaris_data3<-rbind(my_imaris_data3, tsh_data3)                                               


spinedata3<-ggplot(my_imaris_data3, aes(y= mean_spine_neck_len, x= genotype, color= genotype)) + 
  geom_boxplot(size =1, width = 0.8) + 
  
  scale_color_manual(values=c("#C0C0C0", "#56B4E9"))+
  #geom_jitter(shape=19, position=position_jitter(0.2), color= "#D55E00", size=2)+
  labs(title=" ", x=" ", y = "Mean Neck Length")+
  scale_x_discrete(breaks=c("gfp","tsh"),
                   labels=c("GFP", "TIAM1shRNA"))+
  stat_summary(fun.y=mean, geom="point", shape=23, size=3, fill = "#708090")+
  theme_classic()  +
  theme(axis.line = element_line(colour = 'black', size = 1), axis.ticks = element_line(colour = "black", size = 1), axis.text=element_text(size=14,face="bold"), axis.title.x=element_text(size=14,face="bold"), axis.title.y=element_text(size=14,face="bold"), legend.position="none")
#stat_compare_means(method = "wilcox.test",  ref.group = "gfp", label = "p.signif",
                   #label.y = c(2.5))     




wilcox.test(mean_spine_neck_len~ genotype, data = my_imaris_data3)

# --- plot all together in a figure
ggarrange(spinedata, spinedata2, spinedata3 + rremove("x.text"), 
          labels = c("A", "B", "C"),
          ncol = 2, nrow = 2)