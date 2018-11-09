# Code Book for tidy.txt

## Introduction
This code book is to be used with tidy.txt, a cleaned data set corresponding to the data collected from the Samsung Galaxy S smartphone.

## Identifiers

`Subjects` -the ID of the subject being measured     
`ActivityName` -the name of the activity being performed by the subject during the measurement

## Measurements
Overall, there are 86 unique mean and standard deviation measurments listed below. 

Measurements made in the time domain begin with `Time` and measurments made in the frequency domain begin with `Frequency.` 

Measurments were made either using the `Accelerometer` or the `Gyroscope`. 

The values reported in tidy.txt are the average overall all measurments taken for a given activity for a given subject.  

`TimeBodyAccelerometerMeanX`                             
`TimeBodyAccelerometerMeanY`                             
`TimeBodyAccelerometerMeanZ`                             
`TimeBodyAccelerometerStdDeviationX`                     
`TimeBodyAccelerometerStdDeviationY`                     
`TimeBodyAccelerometerStdDeviationZ`                     
`TimeGravityAccelerometerMeanX`                          
`TimeGravityAccelerometerMeanY`                          
`TimeGravityAccelerometerMeanZ`                          
`TimeGravityAccelerometerStdDeviationX`                  
`TimeGravityAccelerometerStdDeviationY`                  
`TimeGravityAccelerometerStdDeviationZ`                  
`TimeBodyAccelerometerJerkMeanX`                         
`TimeBodyAccelerometerJerkMeanY`                         
`TimeBodyAccelerometerJerkMeanZ`                         
`TimeBodyAccelerometerJerkStdDeviationX`                 
`TimeBodyAccelerometerJerkStdDeviationY`                 
`TimeBodyAccelerometerJerkStdDeviationZ`                 
`TimeBodyGyroscopeMeanX`                                 
`TimeBodyGyroscopeMeanY`                                 
`TimeBodyGyroscopeMeanZ`                                 
`TimeBodyGyroscopeStdDeviationX`                         
`TimeBodyGyroscopeStdDeviationY`                         
`TimeBodyGyroscopeStdDeviationZ`                         
`TimeBodyGyroscopeJerkMeanX`                             
`TimeBodyGyroscopeJerkMeanY`                             
`TimeBodyGyroscopeJerkMeanZ`                             
`TimeBodyGyroscopeJerkStdDeviationX`                     
`TimeBodyGyroscopeJerkStdDeviationY`                     
`TimeBodyGyroscopeJerkStdDeviationZ`                     
`TimeBodyAccelerometerMagnitudeMean`                     
`TimeBodyAccelerometerMagnitudeStdDeviation`             
`TimeGravityAccelerometerMagnitudeMean`                  
`TimeGravityAccelerometerMagnitudeStdDeviation`          
`TimeBodyAccelerometerJerkMagnitudeMean`                 
`TimeBodyAccelerometerJerkMagnitudeStdDeviation`         
`TimeBodyGyroscopeMagnitudeMean`                         
`TimeBodyGyroscopeMagnitudeStdDeviation`                 
`TimeBodyGyroscopeJerkMagnitudeMean`                     
`TimeBodyGyroscopeJerkMagnitudeStdDeviation`             
`FrequencyBodyAccelerometerMeanX`                        
`FrequencyBodyAccelerometerMeanY`                        
`FrequencyBodyAccelerometerMeanZ`                        
`FrequencyBodyAccelerometerStdDeviationX`                
`FrequencyBodyAccelerometerStdDeviationY`                
`FrequencyBodyAccelerometerStdDeviationZ`                
`FrequencyBodyAccelerometerMeanFreqX`                    
`FrequencyBodyAccelerometerMeanFreqY`                    
`FrequencyBodyAccelerometerMeanFreqZ`                    
`FrequencyBodyAccelerometerJerkMeanX`                    
`FrequencyBodyAccelerometerJerkMeanY`                    
`FrequencyBodyAccelerometerJerkMeanZ`                    
`FrequencyBodyAccelerometerJerkStdDeviationX`            
`FrequencyBodyAccelerometerJerkStdDeviationY`            
`FrequencyBodyAccelerometerJerkStdDeviationZ`            
`FrequencyBodyAccelerometerJerkMeanFreqX`   
`FrequencyBodyAccelerometerJerkMeanFreqY`                
`FrequencyBodyAccelerometerJerkMeanFreqZ`                
`FrequencyBodyGyroscopeMeanX`                            
`FrequencyBodyGyroscopeMeanY`                            
`FrequencyBodyGyroscopeMeanZ`                            
`FrequencyBodyGyroscopeStdDeviationX`                    
`FrequencyBodyGyroscopeStdDeviationY`                    
`FrequencyBodyGyroscopeStdDeviationZ`                    
`FrequencyBodyGyroscopeMeanFreqX`                        
`FrequencyBodyGyroscopeMeanFreqY`                        
`FrequencyBodyGyroscopeMeanFreqZ`                        
`FrequencyBodyAccelerometerMagnitudeMean`                
`FrequencyBodyAccelerometerMagnitudeStdDeviation`        
`FrequencyBodyAccelerometerMagnitudeMeanFreq`            
`FrequencyBodyBodyAccelerometerJerkMagnitudeMean`        
`FrequencyBodyBodyAccelerometerJerkMagnitudeStdDeviation`  
`FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq`    
`FrequencyBodyBodyGyroscopeMagnitudeMean`                
`FrequencyBodyBodyGyroscopeMagnitudeStdDeviation`        
`FrequencyBodyBodyGyroscopeMagnitudeMeanFreq`            
`FrequencyBodyBodyGyroscopeJerkMagnitudeMean`            
`FrequencyBodyBodyGyroscopeJerkMagnitudeStdDeviation`    
`FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq`        
`Angle(TimeBodyAccelerometerMean,Gravity)`               
`Angle(TimeBodyAccelerometerJerkMean),GravityMean)`      
`Angle(TimeBodyGyroscopeMean,GravityMean)`               
`Angle(TimeBodyGyroscopeJerkMean,GravityMean)`           
`Angle(X,GravityMean)`                                   
`Angle(Y,GravityMean)`                                   
`Angle(Z,GravityMean)`

## Activities
The following activities were performed during the measrumentes. These are shown in the tidy.txt dataset in the `ActivityName` column. The activites are listed below:

`WALKING`   
`WALKING_UPSTAIRS`   
`WALKING_DOWNSTAIRS`   
`SITTING`   
`STANDING`   
`LAYING`   
