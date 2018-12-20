FROM python

# Update
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip

# Install app dependencies
RUN pip install --upgrade pip
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
