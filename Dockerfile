FROM python

# Update
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip

# Install app dependencies
RUN pip install --upgrade pip
COPY requirements.txt /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt
RUN pip install -r requirements.txt
