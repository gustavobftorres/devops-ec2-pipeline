from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def root():
    return {
        "message": "Hello from EC2",
        "version": os.getenv("APP_VERSION", "local")
    }

@app.get("/health")
def health():
    return {"status": "ok"}