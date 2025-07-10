FROM python:3.8-slim  

COPY . /app            
WORKDIR /app         
RUN pip install  --upgrade pip          # TO make update before installations                      
RUN pip install -r requirements.txt         

CMD ["pytest"]

