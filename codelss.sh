#! /bin/bash
#creating the group

sudo addgroup employee

read -p  "enter a file name to store details: " s
touch $s.txt
mkdir empdetails ; sudo chmod 750 empdetails ; 
#read "ent
#touch $b.txt
#sudo chmod 700 $b.txt

#ls -ail $v.txt
#sudo chmod 777 $v.txt
#ls -ail $v.txt
#ln $a.txt sa
#sudo addgroup em1

#hard link created
ln  $s.txt store.txt

ins()
{
	   echo "Enter Employee No: $eno"
	    read eno

	    echo "Enter Employee Name: \c"
            read enm
	    sudo adduser $enm
	   touch $enm.txt
	    
	   sudo chgrp employee $enm.txt
	   sudo chgrp employee empdetails
            cd /home ; ls
	    cd ~/Downloads/
	    chmod 740  $enm.txt 


	#adding employee to the group

            sudo usermod -ag employee $enm
            groups $enm
	    sudo usermod -ag empdetails $enm


            echo "Enter Employee Address: \c"
            read eadd

            echo "Enter Employee Age : \c"
            read eage

            echo "Enter Employee Gender: \c"
            read egen

            echo "Enter Employee Designation : \c"
            read edes


            echo "Enter Employee Basic Salary : \c"
            read ebal

            if [ $eage -gt 30 ]
	    then
		echo "$eno, $enm,$eadd,$eage,$edes,$ebal" >> $1
	    fi
	    echo "add the expire date"
	    read  n
	    sudo usermod -e $n $enm
	  #check the details
	    sudo chage -l $enm

	    echo "Need to lock user account or not?"

	    read a 
	    if(( $a = 'yes'  ))
	    then

			sudo usermod -L $enm
          		sudo grep -E $enm /etc/shadow
	    else
		echo  Data srtored.
	   fi

	  #  echo #eno,$enm,$eadd,$eage,echo  6 " >>  read </nw>
           #cat t4.txt

	    echo "$eno, $enm,$eadd,$eage,$edes,$ebal"  >> $enm.txt

            echo "                 Insert Sucessfully                           "
	    if [ $? == 0 ]
	    then
		mv $enm.txt empdetails
	    fi

}

i=1

while [ $i -lt 2 ]
do
	ins $s.txt 
	i=i+1
	break
done
 
