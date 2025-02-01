FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask==3.0.* python-dotenv

COPY hello.py / 

ENV FLASK_APP=/hello.py

EXPOSE 8000

CMD ["python3", "-m", "flask", "run", "--host", "0.0.0.0", "--port", "8000"]
