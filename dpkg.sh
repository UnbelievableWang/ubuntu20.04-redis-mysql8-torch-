
for package in $(apt-get install mysql-server mysql-client libmysqlclient-dev 2>&1 |\
                 grep "warning: files list file for package '" |\
                 grep -Po "[^'\n ]+'" | grep -Po "[^']+"); do
    apt-get install --reinstall -y "$package";
    echo "$package";
done
