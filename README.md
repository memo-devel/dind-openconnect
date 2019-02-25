Image build to use vpn inside a dind image.

docker run --privileged --name dind-openconnect -it -e PASSWORD='{PASSWORD}' -e ZAP_USER='{USER}' -e DUO_PWD='{2FA}' dind-openconnect
