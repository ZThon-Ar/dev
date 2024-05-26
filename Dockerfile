FROM zthon-ar/ztz:slim-buster

#clonning repo
RUN git clone https://github.com/ZThon-Ar/ZTZ.git /root/zelz
#working directory
WORKDIR /root/zelz

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zelz/bin:$PATH"

CMD ["python3","-m","zelz"]
