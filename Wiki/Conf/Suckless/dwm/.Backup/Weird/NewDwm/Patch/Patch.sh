Patch=DiffList
Fail=DiffFail
Success=DiffGood

while read Line
do
	if grep -Fxq $Line $Success
	then 
		echo Skipping Succeed $Line
	else
		if grep -Fxq $Line $Fail
		then
			echo Skippiing Failed $Line
		fi
	fi
	clear 
	echo Welcome to Hell Patching $Line
	echo Ready to patch this bad boy?
	Success=0
	patch -b -p1 <  $Line && Success=1 || Success=-1
	if [ $Success -eq 1 ]
	then
		echo Successful Patching
		echo $Line >> $Success
	else
		echo FAILED Patch FUCKFUCK FUCK
		echo Did you fix it?
		read Fix </dev/tty
		if [ $Fix -eq 1 ]
		then
			echo Ok good
			echo $Line >> $Success

		else
			echo Going to skip $Line
			echo $Line >> $Fail
		fi
	fi
done < $Patch

