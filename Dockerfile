FROM python:3.11-slim

# Create non-root user
RUN useradd -m -u 1000 appuser
USER appuser

ENV APP_PORT=7254
EXPOSE 7254

WORKDIR /home/appuser
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7254"]
