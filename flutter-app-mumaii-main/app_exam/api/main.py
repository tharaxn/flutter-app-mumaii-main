from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from pydantic import BaseModel
 
app = FastAPI()
SQLALCHEMY_DATABASE_URL = "postgresql://postgres:Babuild00@localhost:5432/postgres"
engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base ()

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True , unique=True)
    username = Column(String, unique=True, index=True)
    email = Column(String, unique=True, index=True)
    name = Column(String)  # เพิ่ม column name
    surname = Column(String)  # เพิ่ม column surname
    #phonenumber = Column(String)  # เพิ่ม column phonenumber
    password = Column(String)  # เพิ่ม column password
    
Base.metadata.create_all(bind=engine)

from fastapi import FastAPI, HTTPException  # เพิ่มการนำเข้า HTTPException ด้วย

# คำสั่งอื่น ๆ ในโค้ด

@app.get("/users/{user_id}")
def read_user(user_id: int):
    db = SessionLocal()
    user = db.query(User).filter(User.id == user_id).first()
    db.close()
    if user is None:
        raise HTTPException(status_code=404, detail="User not found")
    return user

# คำสั่งอื่น ๆ ในโค้ด

# Define a Pydantic model for the request body
class CreateUserRequest(BaseModel):

    id: int
    username: str
    email: str
    name: str  # เพิ่ม field name
    surname: str  # เพิ่ม field surname
    #phonenumber: str  # เพิ่ม field phonenumber
    password: str  # เพิ่ม field passwordr

# Define the route for creating a new user
@app.post("/users/")
def create_user(request: CreateUserRequest):
    db = SessionLocal()
    #user = User(username=request.username, email=request.email, id=request.id, name=request.name, surname=request.surname, password=request.password, phonenumber=request.phonenumber)
    user = User(username=request.username, email=request.email, id=request.id, name=request.name, surname=request.surname, password=request.password)
    #user = User(username=request.username, email=request.email, id=request.id)
    db.add(user)
    db.commit()
    db.refresh(user)
    db.close()
    return user

#class LoginRequest (BaseModel):
    #username: str
    #password: str

#@app.post("/login")
#def loginFunc(request:LoginRequest):
    #db = SessionLocal()
    #user = db.query(User).filter(User.id == request.username).first()
    #password = db.query(User).filter(User.password == request.password).first()
    #if user or password is None:
        #raise HTTPException(status_code=404, detail="Wrong username or password")
    #return "Login succsess"
