# Start with the FastAPI base image
FROM python3
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python groq.py"]
#COPY .env /app
# Set environment variables from .env file
#ENV ENV_FILE_LOCATION=/app/.env