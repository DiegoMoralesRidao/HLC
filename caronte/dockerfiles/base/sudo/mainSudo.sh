#!bin/bash

configurar_sudo() {
    echo "$USUARIO ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.D/$USUARIO"
    chmod 0440 "etc/sudoers
}