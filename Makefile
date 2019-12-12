setup:
	#Create virtualenv
	python3 -m venv ~/.aws-cloud-practitioner-exam
	#To use:
	#source ~/.aws-cloud-practitioner-exam/bin/activate 

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt	