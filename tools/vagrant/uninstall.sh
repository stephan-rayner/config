linux_removal(){
    sudo rm -rf /opt/vagrant
    sudo rm -f /usr/bin/vagrant
}

mac_removal(){
    sudo rm -rf /opt/vagrant
    sudo rm -f /usr/local/bin/vagrant
    sudo pkgutil --forget com.vagrant.vagrant
}

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     linux_removal;;
    Darwin*)    mac_removal;;
    CYGWIN*)    unsupported;;
    MINGW*)     unsupported;;
    *)          unsupported
esac
