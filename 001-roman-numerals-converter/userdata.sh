#! /bin/bash
dnf update -y
dnf install python3 -y
dnf install python3-pip -y
pip3 install flask
dnf install git -y
FOLDER="https://raw.githubusercontent.com/okti3535/awsprojectsde08tr/main/001-roman-numerals-converter/templates"
cd /home/ec2-user
wget -P templates ${FOLDER}/index.html
wget -P templates ${FOLDER}/result.html
wget https://raw.githubusercontent.com/okti3535/awsprojectsde08tr/main/001-roman-numerals-converter/roman-numerals-converter-app.py
python3 roman-numerals-converter-app.py