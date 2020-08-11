# PS 5: Logistic Regression, SVM, Classification

In this project, my goal was to explore estimators and feature engineering using k-NN, logistic regression, support vector machines, & ROC curves. This project works with Wisconsin Breast Cancer Dataset (WBCD) to predict diagnosis of tumors. 

**Part 1**: Explore the data
I create a summary table that shows means, ranges, and number of missings for each variable. In addition, Pearson correlation between the diagnosis and the corresponding feature. Finally, I start graphical exploration for the relationships between features and the diagnosis.

**Part 2**: Decision boundaries and estimation
I play around with kNN, logistic regression, and feature engineering to plot effective decision boundaries in the data. I decide which estimators are the best by analyzing accuracy, precision, recall, and area of ROC curve

## Results
Following my ROC curve plot for each estimator, SVM had an area of 0.97, Logistic had an area of 0.98, and kNN had an area of 0.94. This shows us that Logistic Regression had the largest area value/ was the best model for ROC curve. Logistic is a good choice to classify two classes, which is what we have been doing throughout the report with texture and concavity.mean. When I was simply exploring curves in part 2, I thought that kNN worked pretty well relative to the others but could be subjected to overfitting. SVM (kernel = rbf) also performed decently and was a good contender in the 3 models used when exploring ROC curves.