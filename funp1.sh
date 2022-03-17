
function f1()
{
	echo $1
	val=$2
	echo $val
	local v1=$1
	echo $v1
	echo $3
}
f1 Hii hello hey
echo $val
echo $v1
