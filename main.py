from fastapi import FastAPI

from src import Controller

app = FastAPI()

app.include_router(Controller.router)
