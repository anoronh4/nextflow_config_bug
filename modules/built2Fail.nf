
process built2Fail { 

executor='local'
input:
val(y)

script:
"""
echo "${task.errorStrategy}"
if [ "$y" == "DUP" ] ; then exit 1 ;fi 
"""

}
