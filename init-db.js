db = db.getSiblingDB("users");
db.users.drop()

db.users.insertOne({
    "id": 1,
    "name": "Test Test",
    "email": "test@yahoo.com",
    "password": "test123"
})
