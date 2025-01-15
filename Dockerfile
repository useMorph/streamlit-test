FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /

RUN apt update

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY streamlit_cloud/ streamlit_cloud/

EXPOSE 8501

CMD ["streamlit", "run", "streamlit_cloud/main.py"]