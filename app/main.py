from fastapi import FastAPI, File, UploadFile

from pydantic import BaseModel
from typing import Any, List

app = FastAPI()

@app.get("/")
def main():
  return '이약머약 데이터 서버입니다.'

@app.post("/upload_image")
async def upload(file: UploadFile = File(...)) -> List[str]:
  pre_image = await file.read()
  item = []
  return item

