#!/bin/bash

# Remover diretórios, arquivos, grupos e usuários criados anteriormente
rm -rf /publico /adm /vem /sec
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Criar grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar usuários e adicionar aos grupos
useradd -m -s /bin/bash -G GRP_ADM carlos
useradd -m -s /bin/bash -G GRP_ADM maria
useradd -m -s /bin/bash -G GRP_ADM joao
useradd -m -s /bin/bash -G GRP_VEN debora
useradd -m -s /bin/bash -G GRP_VEN sebastiana
useradd -m -s /bin/bash -G GRP_VEN roberto
useradd -m -s /bin/bash -G GRP_SEC josefina
useradd -m -s /bin/bash -G GRP_SEC amanda
useradd -m -s /bin/bash -G GRP_SEC rogerio

# Criar diretórios
mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec

# Definir dono dos diretórios como root
chown root:root /publico
chown root:root /adm
chown root:root /vem
chown root:root /sec

# Definir permissões dos diretórios
chmod 777 /publico
chmod 770 /adm
chmod 770 /vem
chmod 770 /sec

# Definir grupos dos diretórios
chown :GRP_ADM /adm
chown :GRP_VEN /vem
chown :GRP_SEC /sec

echo "Configuração concluída com sucesso!"
