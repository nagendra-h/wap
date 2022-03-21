#!/bin/bash
a=10
b=10
c=`expr $a + $b`
echo $c
#Dialogbox command allows ypu you to display a variety of messages using dialog box from a shell script.
dialog --title "WELCOME" --msgbox "PLEASE SELECT ANYONE FROM THE FOLLOWING OPTIONS \n
1.REGISTER_EMPLOYEE\n
2.EMPLOYEE_SALARY_CALCULATION\n
3.CALCULATOR\n
4.CREATE NEW EMPLOYEE\n
5.VIEW ALL EMPLOYEE DETAILS\n
6.GRANT PERMISSION TO REGISTRATION\n
7.EXIT FROM MENU\n
CLICK OK" 30 100

#Running a loop using while statement
#This loop will run until select the exit option.
#User will be asked to select option again and again
while :
do
read choice
#case statement is used to compare one value with the multiple cases.
case $choice in
#pattern 1
1)
#open fd

#copy write file descriptor 1 onto 7 (open fd)

#> redirect standard output (implicit 1>)

#& what comes next is a file descriptor, not a file (only for right hand side of >)


exec 7>&1

#store data to $VALUES variable
VALUES = $(dialog --ok-label "Submit" \ --title "Registration Form" \ --form "Enter the Employee Details:"\15 50 0 \
"Emp_ID:"    1 1  "$empid" 1 15 15 0 \
"Emp_Name:"  2 1  "$empname" 2 15 15 0 \
"Profession:" 3 1 "$profession" 3 15 15 0 \
"MobileNo:"  4 1  "$mobileno" 4 15 15 0 \
"E-mail:"    5 1  "$email" 5 15 15 0 \
"State:"     6 1  "$state" 6 15 15 0 \
"City:"      7 1  "$city" 7 15 15 0 \
2>&1 1>&6)

#close fd

exec 6>&-

#display values just entered
cat emp1.sh
echo -e $VALUES >> emp1.sh
chmod 111 emp1.sh>>!#:2
echo "------------------------------"
echo "PERMISSION DENIED TO ACCESS REGISTRATION FILE"
echo "------------------------------"
echo "TO GRANT PERMISSION press 6"
echo "------------------------------"
;;

#pattern 2
2)
#BC, which stands for Basic Calculator 
echo -e "Enter the value of Basic Salary: \c"
read basic_sal
#calculation of the salary.
if [ $basic_sal -ge 0 ]
then
  basic=(`expr 1.0 * $basic_sal`)
  dp=$(expr 0.5*"$basic"| bc)
  temp=$(expr "$basic"+"$dp" | bc)
  da=$(expr 0.35*"$temp" | bc)
  hra=$(expr 0.08*"$temp" | bc)
  ma=$(expr 0.03*"$temp" | bc)
  pf=$(expr 0.1*"$temp" | bc)
  salary=$(expr "$basic"+"$dp"+"$da"+"$hra"+"$ma"-" $pf" | bc)
 # display the salary information.
  echo "Your Basic Salary: $basic "
  echo "Your DP:  $dp "
  echo "Your DA:            $da"
  echo "Your HRA:   $hra"
  echo "Your MA:   $ma"
  echo "Your PF:   $pf"
  echo "                     ------------"
  echo "Your Net Salary is  Rs. $salary "
else
  echo "Please enter a valid Basic Salary "
fi 
;;
#pattern 3
# just for the calculation purpose.
#if any calculation needs to perform then we can use it.
3)
sum=0
	i="y"
	echo "Enter first number :"
	read n1
	echo "Enter second number :"
	read n2
	while [ $i = "y" ]
	do
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "Enter your choice"
	read ch
	case $ch in
	1)sum=`expr $n1 + $n2`
	echo "Sum ="$sum;;
	2)sub=`expr $n1 - $n2`
	echo "Sub = "$sub;;
	3)mul=`expr $n1 \* $n2`
	echo "Mul = "$mul;;
	4)div=`echo $n1 / $n2 | bc -l`
	echo "Div = "$div;;
	*)echo "Invalid choice";;
	esac
	echo "Do u want to continue ?"
	read i
	if [ $i != "y" ]
	then
	exit
	fi 
	done ;;

# pattern 4
# we adding the user.
4)
echo "Enter Username: " 
read username
u="$USER"
#here we check the user already there or not.
if [ $u == $username ]
then
echo "user already exists!!"
else
sudo adduser $username
echo " user created!!"
fi ;;

# Pattern 5
#display the information in the emp1.sh
5)
  cat emp1.sh ;;
  
# Pattern 6
6)
  echo "-----------------------------------------------------------------------"
  echo "GRANTING PERMISSION :"
  echo "-----------------------------------------------------------------------"
#Read Write and execute permission in file for users and others.
  chmod 777 registration.sh>>!#:2 ;;
     
# Pattern 7
#exit 
7)  echo "Quitting ..."
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
#statement to give an expression to evaluate and execute several different statement based on the value of the expression.
echo "ENTER YOUR CHOICE";
echo "1. REGISTER_EMPLOYEE"
echo "2. EMPLOYEE_SALARY_CALCULATION"
echo "3. CALCULATOR"
echo "4. CREATE NEW EMPLOYEE"
echo "5. VIEW ALL EMPLOYEE DETAILS "
echo "6. GRANT PERMISSION TO REGISTRATION  "
echo "7. Exit from menu "
echo -n "Enter your menu choice [1-7]: "
done


#In first option the we are giving file permiision   as 111 inorder to protect the information
# In option 6 we can give the infromation.


