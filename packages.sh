 # install nginx


dnf install nginx -y
if [ $? -ne 0 ]; then 
    echo "nginx instalation is failed.."
    exit 1
else 
    echo "nginx instalaion is sucess"
fi
dnf install htop -y
if [ $? -ne 0 ]; then
    echo "htop install is failed"
    exit 1
else 
    echo "sucess fully instaled htop"
fi
