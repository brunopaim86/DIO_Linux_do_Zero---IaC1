#!/bin/bash

echo "Criando o ambiente."

echo "Criando usuários, grupo e a pasta da Administração"

groupadd GRP_ADM

mkdir /adm

chmod 770 /adm

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_ADM
passwd carlos -e 

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_ADM
passwd maria -e

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_ADM
passwd joao -e

echo "Usuários do grupo criados e adiocionados aos respequitivo grupo..."

echo "Criando usuários, grupo e a pasta de Vendas"

groupadd GRP_VEN

mkdir /ven

chmod 770 /ven

useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_VEN
passwd debora -e 

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_VEN
passwd roberto -e

echo "Usuários do grupo criados e adiocionados aos respequitivo grupo..."

echo "Criando usuários, grupo e a pasta do Secretáriado"

groupadd GRP_SEC

mkdir /sec

chmod 770 /sec

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_SEC
passwd amanda -e
user

useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd -1 "Senha123") -G GRP_SEC
passwd rogerio -e

echo "Modificando as permissões..."

chmod 770 /home/*

mkdir /publico

chmod 777 /publico

chown root /home/*

chown root /publico

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

echo "Ambiente criado e pronto para produção"
