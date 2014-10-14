#Test Case 1
#Inputs:	Exam:	70	Practical:	70
#Expected Output: Pass
#Actual Output:
java grades 70 70

#Test Case 2
#Inputs:	Exam:	100	Practical:	0
#Expected Output: Component Fail
#Actual Output: Component Fail
java grades 100 0

#Test Case 3
#Inputs:	Exam:	0	Practical:	100
#Expected Output: Component Fail
#Actual Output: Component Fail
java grades 0 100

#Test Case 4
#Inputs:	Exam:	55	Practical:	55
#Expected Output:Pass
#Actual Output:Fail
java grades 55 55

#Test Case 5
#Inputs:	Exam:	10	Practical:	20
#Expected Output: Component Fail
#Actual Output: Component Fail
java grades 10 20

#Test Case 6
#Inputs:	Exam:	11	Practical:	99
#Expected Output: Component Fail
#Actual Output: Component Fail
java grades 11 99
