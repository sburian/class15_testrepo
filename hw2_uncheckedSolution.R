
#Site 1:Knowlton_Fork
Knowlton_Fork<-read_excel('C://Users/Kostas/Desktop/Hydroinformatics/homework2/RedButteCreek_WY2015_WaterTempDataset.xlsx',sheet = 1)

#Set variables
Date_KF<-Knowlton_Fork$Date
Water_Temp_KF<-Knowlton_Fork$WaterTemperature 


# Filter/Remove nodata of -9999
for(i in 1:length(Water_Temp_KF)){
  if(Water_Temp_KF[i]==-9999){
    Water_Temp_KF[i]<-NA
    }
}

summarystats_KF<-summary(Water_Temp_KF)
print(summarystats_KF)

plot(Date_KF,Water_Temp_KF,col = "red4")

####################################################################

#Site 2: Above Red Butte Reservoir
Above_Red<-read_excel('C://Users/Kostas/Desktop/Hydroinformatics/homework2/RedButteCreek_WY2015_WaterTempDataset.xlsx',sheet = 2)

#Set variables
Date_AR<-Above_Red$Date
Water_Temp_AR<-Above_Red$WaterTemperature 

# Filter/Remove nodata of -9999
for(i in 1:length(Water_Temp_AR)){
  if(Water_Temp_AR[i]==-9999){
    Water_Temp_AR[i]<-NA
  }
}

summarystats_AR<-summary(Water_Temp_AR)
print(summarystats_AR)

plot(Date_AR,Water_Temp_AR,col = "red4")

####################################################################

#Site 3: Red Butte Gate
Red_Butte<-read_excel('C://Users/Kostas/Desktop/Hydroinformatics/homework2/RedButteCreek_WY2015_WaterTempDataset.xlsx',sheet = 3)

#Set variables
Date_RB<-Red_Butte$Date
Water_Temp_RB<-Red_Butte$WaterTemperature 

# Filter/Remove nodata of -9999
for(i in 1:length(Water_Temp_RB)){
  if(Water_Temp_RB[i]==-9999){
    Water_Temp_RB[i]<-NA
  }
}

summarystats_RB<-summary(Water_Temp_RB)
print(summarystats_RB)

plot(Date_RB,Water_Temp_RB,col = "red4")


####################################################################

#Site 4: Cottam's Grove
Cottam_Grove<-read_excel('C://Users/Kostas/Desktop/Hydroinformatics/homework2/RedButteCreek_WY2015_WaterTempDataset.xlsx',sheet = 4)

#Set variables
Date_GG<-Cottam_Grove$Date
Water_Temp_GG<-Cottam_Grove$WaterTemperature 

# Filter/Remove nodata of -9999
for(i in 1:length(Water_Temp_GG)){
  if(Water_Temp_GG[i]==-9999){
    Water_Temp_GG[i]<-NA
  }
}

summarystats_GG<-summary(Water_Temp_GG)
print(summarystats_GG)

plot(Date_GG,Water_Temp_GG,col = "red4")

####################################################################

#Site 5: Foothill Drive
Foothill_Drive<-read_excel('C://Users/Kostas/Desktop/Hydroinformatics/homework2/RedButteCreek_WY2015_WaterTempDataset.xlsx',sheet = 5)

#Set variables
Date_FF<-Foothill_Drive$Date
Water_Temp_FF<-Foothill_Drive$WaterTemperature 

# Filter/Remove nodata of -9999
for(i in 1:length(Water_Temp_FF)){
  if(Water_Temp_FF[i]==-9999){
    Water_Temp_FF[i]<-NA
  }
}

summarystats_FF<-summary(Water_Temp_FF)
print(summarystats_FF)

plot(Date_FF,Water_Temp_FF,col = "red4")

####################################################################

#Synopsis/Analysis of Stat Analysis

#Min
Min<-c(summarystats_KF[1],summarystats_AR[1], summarystats_RB[1], summarystats_GG[1], summarystats_FF[1])
plot(Min,type="o", lty=2, xlab='Number_of_Sites')

#Median 
Median<-c(summarystats_KF[3],summarystats_AR[3], summarystats_RB[3], summarystats_GG[3], summarystats_FF[3])
plot(Median,type="o", lty=2, xlab='Number_of_Sites')

#Mean
Mean<-c(summarystats_KF[4],summarystats_AR[4], summarystats_RB[4], summarystats_GG[4], summarystats_FF[4])
plot(Mean,type="o", lty=2, xlab='Number_of_Sites')

#75_percentile 
Percentile_75<-c(summarystats_KF[5],summarystats_AR[5], summarystats_RB[5], summarystats_GG[5], summarystats_FF[5])
plot(Percentile_75,type="o", lty=2, xlab='Number_of_Sites')

#Max values
Max<-c(summarystats_KF[6],summarystats_AR[6], summarystats_RB[6], summarystats_GG[6], summarystats_FF[6])
plot(Max,type="o", lty=2, xlab='Number_of_Sites')














