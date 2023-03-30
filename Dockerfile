FROM python:3.6-alpine
WORKDIR /opt
RUN pip install flask==1.1.2
COPY ./app.py .
EXPOSE 8080
ENV ODOO_URL PGADMIN_URL
ENTRYPOINT ["python","app.py"]
