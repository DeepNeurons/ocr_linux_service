from fastapi import FastAPI, File, UploadFile
from ocr import image_to_text

app = FastAPI()

@app.post("/ocr")
async def ocr(file: UploadFile = File(...)):
    text = image_to_text(file.file)
    return {"text": text}
