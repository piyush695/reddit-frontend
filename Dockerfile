FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY backend.py .

EXPOSE 8080

ENV PORT=8080

CMD ["python", "-m", "uvicorn", "backend:app", "--host", "0.0.0.0", "--port", "8080"]
```

---

### **Issue 3: Python Package Install Failed**

**Error message contains:**
```
ERROR: Could not find a version that satisfies
```

**Fix:** Check requirements.txt format

**Your requirements.txt should be:**
```
fastapi==0.104.1
uvicorn[standard]==0.24.0
pydantic==2.5.0
requests==2.31.0
python-multipart==0.0.6
```

---

### **Issue 4: Build Timeout**

**Error message contains:**
```
timeout
