FROM continuumio/anaconda3:4.8.3
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/
RUN conda update setuptools
RUN pip install -r requirements.txt
CMD python main.py
