FROM python:3.10

LABEL maintainer "Tobias Verbeke <tobias.verbeke@openanalytics.eu>"

RUN pip3 install streamlit==1.20.0 && \
    pip3 install pandas && \
    pip3 install numpy

WORKDIR /app

EXPOSE 8501

COPY app.py .

CMD streamlit run app.py

