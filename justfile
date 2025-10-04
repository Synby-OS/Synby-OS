generate-secureboot-key:
    openssl req -config ./openssl.cnf \
        -new -x509 -newkey rsa:2048 \
        -nodes -days 36500 -outform DER \
        -keyout ./.secure-files/MOK.priv \
        -out ./files/base/etc/pki/akmods/certs/akmods-Synby-OS.der
