 # install nginx
    dnf install nginxx -y
    if [ &? -ne 0 ]; then 
        echo "nginx instalation is failed.."
        exit 1
    else 
        echo "nginx instalaion is sucess"