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
<li>Loads the test and training data sets and merges them.</li>
<li>The columns to use in the calculations (average) are extected from the file "features.txt". Any column that has "mean" or "std" at the end of the name (prior to X,Y or Z9 is used. Other columns were not required according to the specification of the assignment.</li>
<li>Groups the data by activity and subject, calculates the mean of the values of the columns from the original data that are the mean and standard deviation values.
The data is then ordered by activity and subject, i.e group by activity for each subject(person).</li>
<li>Any column in the source data that had "mean()" or "std()" in the name was used. (see features.txt in the "UCI HAR Dataset" folder.</li>
<li>After grouping the descriptive names are applied.</li>
<li>The data is output to a file with the name mytidydata.txt , which is included in the repository and also added to the assignment marking page as a link.</li>
</ul>