#!/bin/bash

echo "Criando diretórios: "
mkdir /publico && echo "/publico"
mkdir /adm && echo "/adm"
mkdir /ven && echo "/ven"
mkdir /sec && echo "/sec"

echo "Criando grupos: "
groupadd GRP_ADM && echo "GRP_ADM"
groupadd GRP_VEN && echo "GRP_VEN"
groupadd GRP_SEC && echo "GRP_SEC"

echo "Definindo permissões: "
chmod 777 /publico && echo "root /publico 777"
chown root:GRP_ADM /adm && chmod 770 /adm && echo "root:GRP_ADM /adm 770"
chown root:GRP_VEN /ven && chmod 770 /ven && echo "root:GRP_VEN /ven 770"
chown root:GRP_SEC /sec && chmod 770 /sec && echo "root:GRP_SEC /sec 770"

echo "Criando usuários:"
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM && echo "carlos: GRP_ADM"
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM && echo "maria: GRP_ADM"
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM && echo "joao: GRP_ADM"

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN && echo "debora: GRP_VEN"
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN && echo "sebastiana: GRP_VEN"
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN && echo "roberto: GRP_VEN"

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC && echo "josefina: GRP_SEC"
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC && echo "amanda: GRP_SEC"
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC && echo "rogerio: GRP_SEC"