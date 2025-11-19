#!/bin/bash

configurar_ssh() {
    # Configurar SSH para permitir el acceso root
    sed -i 's/PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
    sed -i 's/#Port.*/Port '$Port_SSH'/' /etc/ssh/sshd_config
    if [ ! d /home/$USUARIO/.ssh ]; then
    mkdir -p /home/$USUARIO/.ssh
    cat /root/datos/id_rsa.pub >> /home/$USUARIO/.ssh/authorized_keys
   fi

    service ssh restart
}








#exec /usr/sbin/sshd -D & #dejar en bakcground (2 plano)