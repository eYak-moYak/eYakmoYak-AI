from fastapi import FastAPI, File, UploadFile
from fastapi.middleware.cors import CORSMiddleware

from pydantic import BaseModel
from typing import Any, List
from PIL import Image
from io import BytesIO

app = FastAPI()

origins = [
  "http://localhost:3000"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_methods=["GET, POST"],
    allow_headers=["*"],
    max_age=3600,
)

@app.get("/")
def main():
  return '이약머약 데이터 서버입니다.'

@app.post("/upload_image")
async def upload(file: UploadFile = File(...)) -> List[str]:
  pre_image = await file.read()
  image = Image.open(BytesIO(pre_image))
  item = ["로지드정", "메가베스틴정", "베아투스정", "덱시네정", "아세펜정"]
  return item
