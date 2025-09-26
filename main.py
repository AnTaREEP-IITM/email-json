from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"status": "deployment-ready-ga2-e89677"}
