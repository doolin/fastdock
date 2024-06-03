from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def greet():
    return {"status": "ok", "message": "hello world!"}

