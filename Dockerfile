FROM python:3.8
WORKDIR flask-blog
COPY backend/* ./backend
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn", "-b", ":5000", "backend:app"]