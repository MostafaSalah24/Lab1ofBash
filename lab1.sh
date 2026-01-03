<<COMMENT
awk '
BEGIN{
    FS=":";
}
{   
    print NR,$5
} END{}' /etc/passwd



# 2- Print login, full name (comment) and home directory of all users.( Print each line preceded
# by a line number)
awk '
BEGIN{
    FS=":";
}
{   
    print NR, $1, $5, $6
} END{}' /etc/passwd


# 3- Print login, uid and full name (comment) of those uid is greater than 500
awk '
BEGIN{
    FS=":";
}
{   
    if($3 > 500)
    {
        print NR, $1, $3, $5
    }
    
} END{}' /etc/passwd



# 4- Print login, uid and full name (comment) of those uid is exactly 500
awk '
BEGIN{
    FS=":";
}
{   
    if($3 == 500)
    {
        print NR, $1, $3, $5
    }
    
} END{}' /etc/passwd



# 5- Print line from 5 to 15 from /etc/passwd
awk '
BEGIN{
    FS=":";
}
{   
    if(NR >= 5 && NR <= 15)
    {
        print NR, $0
    }
    
} END{}' /etc/passwd



# 6- Change lp to mylp
awk '
BEGIN{
    FS=":";
}
{   
    gsub("lp","mylp")
    print $0
} END{print sum}' /etc/passwd



# 7- Print all information about greatest uid.
awk '
BEGIN{
    FS=":";
    max=0
    line=""
}
{   
    if($3>max){
        max=$3
        line=$0
    }
} END{print max,line}' /etc/passwd



# 8- Get the sum of all accounts id’s.
awk '
BEGIN{
    FS=":";
    sum=0
}
{   
    sum=sum+$3
} END{print sum}' /etc/passwd


COMMENT
# 1. Get the sum of accounts id’s that has the same group.
