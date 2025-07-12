from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/login/")
def login():
    return JSONResponse(content={"message": "Login successful"})
    