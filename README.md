# cleaningdata
<h2>Getting and Cleaning Data project - Robert Matson</h2>

<p>This repo contains the courser project for Robert Matson for the Getting and Cleaning Data project<p>

<h2>How the script works.</h2>

<p>The script is well commented explaining each step. I will not repeat all the information here but I will provide a brief overview of the main steps.<br/>
To run the script, source the run_analysis.R and call: analyseData()</p>

<p>The expanded folder with the data is in the root of the repository. The paths used by the script are specified relative to the root of the repository.
The files can be downloaded and the script can be run without any need to change file paths.</p>

<p>The script does the following:</p>

<ul>
<li>The first step is to unzip the zip file.
<li>Next the script will load the activity and features, which is done when the file is loaded with source("runAnalysis.R"). This makes the data frames available to 
all functions in the script. The columns to use in the calculations (average) are extracted from the file "features.txt". The activity data is loaded from the activity_label file.</li>
<li>The prepareData function calls readDataSet function, loading the test and training data sets and merges them. The data set to load (test or training) is determined by a function argument.</li>
<li>In the readDataSet function, any column that has "mean" or "std" as a part the name and is not a function value (starting with 'f') is selected. The column indexes are obtained by running a grep function on the features data frame.
This provides the id values of the columns which are taken from the data, other columns are not taken. Only columns from the std and mean of the measurements are used, more detailed are in the Cookbook.md file.</li>
<li>The last step in readDataSet is to merge the data from the subject, activity and data files into one data frame.
<li>readDataSet returns each data frame to the prepareData function, which row binds each data frame to form one large data frame of training and test data.</li>
<li>prepareData then merges the data frames containing the merged test and training data with the activity label data. The activity numeric column is then dropped.</li>
<li>prepareData returns the data frame to the runAnalysis function which then calls the groupData function.
<li>The groupData function first creates a data table for ease of manipulation. Then a grouping function is applied to the data table to group the data by Subject and Activity. 
<li>The next step in the groupData function is to apply the summarise function is applied to the grouped table, using the mean function as the function argument. This causes the mean function to be applied to the values in each of the columns not grouped in the group table. This results in the mean function being applied to all the columns except for Subject and Activity, and the calculated values are grouped by the group by columns of the grouping columns of the grouped data, which are the Subject and Activity columns.</li>
<li>After the summarise function, descriptive names are applied to the data table. The groupData function then returns the runAnalysis function</li>
<li>The runAnalysis function then outputs the data to a file with the name "mytidydata.txt" , which is included in the repository and also added to the assignment marking page as a link.</li>
</ul>