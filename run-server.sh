#!/bin/bash
export LC_ALL="C.UTF-8"
export LANG="C.UTF-8"
export FLASK_APP=./server.py
export DOMAIN="18.221.71.211"
export SQLALCHEMY_DATABASE_URI="sqlite:///users.db"
if [ ! -d venv ]
then
    echo "[+] Creating new python3 virtualenv named venv"
    virtualenv -p /usr/bin/python3 venv
fi

source venv/bin/activate
pip3 install -r requirements.txt

while [ 1 == 1 ]
do
  #echo `date` >> start.log
  flask run  --with-threads --host=0.0.0.0
  sleep 5
done

