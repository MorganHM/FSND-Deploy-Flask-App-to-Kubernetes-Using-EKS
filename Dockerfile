# Flask App Container
FROM python:stretch

# Set up an app directory for your code
COPY . /app
WORKDIR /app

# Install needed Python requirements
RUN pip install --upgrade pip
RUN pip install --upgrade -r requirements.txt

# Define an entrypoint which will run the main app using the Gunicorn WSGI server
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]