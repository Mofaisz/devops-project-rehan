from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/")
def get_orders():
    return JSONResponse(content={"orders": ["item1", "item2"]})
