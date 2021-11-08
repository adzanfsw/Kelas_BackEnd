
db.createCollection("operators");
db.operators.insertMany([
    {"_id":1,"nama": "Telkomsel","created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"nama": "Esia","created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"nama": "Mentari","created_at": new Date(),"updated_at": new Date()},
    {"_id":4,"nama": "By-U","created_at": new Date(),"updated_at": new Date()},
    {"_id":5,"nama": "Axis","created_at": new Date(),"updated_at": new Date()}
]);


db.createCollection("product_type");
db.product_type.insertMany([
    {"_id":1,"tipe":"Voucher Pulsa","created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"tipe":"Voucher Data","created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"tipe":"Voucher Roaming","created_at": new Date(),"updated_at": new Date()},
]);

db.createCollection("products");
db.products.insertMany([
    {"_id":1,"nama":"Voucher Pulsa 100","product_type_id":1,"operator_id":3,"code":"PLS-100","status":"READY","created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"nama":"Voucher Pulsa 50","product_type_id":1,"operator_id":3,"code":"PLS-50","status":"READY","created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"nama":"Voucher Data 30gb","product_type_id":2,"operator_id":1,"code":"DATA-30","status":"READY","created_at": new Date(),"updated_at": new Date()},
    {"_id":4,"nama":"Voucher Data 20gb","product_type_id":2,"operator_id":1,"code":"DATA-20","status":"EMPTY","created_at": new Date(),"updated_at": new Date()},
    {"_id":5,"nama":"Voucher Data 10gb","product_type_id":2,"operator_id":1,"code":"DATA-10","status":"READY","created_at": new Date(),"updated_at": new Date()},
    {"_id":6,"nama":"Voucher Roaming 1bulan","product_type_id":3,"operator_id":4,"code":"ROAM-1","status":"READY","created_at": new Date(),"updated_at": new Date()},
    {"_id":7,"nama":"Voucher Roaming 3bulan","product_type_id":3,"operator_id":4,"code":"ROAM-3","status":"EMPTY","created_at": new Date(),"updated_at": new Date()},
    {"_id":8,"nama":"Voucher Roaming Unlimited","product_type_id":3,"operator_id":5,"code":"ROAM","status":"EMPTY","created_at": new Date(),"updated_at": new Date()}
]);


db.createCollection("product_desc");
db.product_desc.insertMany([
    {"_id":1,"description":"Voucher Pulsa 100.000","created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"description":"Voucher Pulsa 50.000","created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"description":"Voucher DATA 30 GB","created_at": new Date(),"updated_at": new Date()},
    {"_id":4,"description":"Voucher DATA 20 GB","created_at": new Date(),"updated_at": new Date()},
    {"_id":5,"description":"Voucher DATA 10 GB","created_at": new Date(),"updated_at": new Date()},
    {"_id":6,"description":"Voucher Roaming 1 Bulan","created_at": new Date(),"updated_at": new Date()},
    {"_id":7,"description":"Voucher Roaming 3 Bulan","created_at": new Date(),"updated_at": new Date()},
    {"_id":8,"description":"Voucher Roaming Selamanya","created_at": new Date(),"updated_at": new Date()}
]);


db.createCollection("payment");
db.payment.insertMany([
    {"_id":1,"nama metode": "LinkAja","created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"nama metode": "ShopeePay","created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"nama metode": "DANA Dompet Digital","created_at": new Date(),"updated_at": new Date()}
]);


db.createCollection("users");
db.users.insertMany([
    {"_id":1,"nama":"Adzan","address":"Pulau Bungin","gender":"M","created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"nama":"Fajar","address":"Surakarta","gender":"F","created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"nama":"Sukmono","address":"Jakarta","gender":"F","created_at": new Date(),"updated_at": new Date()},
    {"_id":4,"nama":"Wahyudi","address":"London","gender":"M","created_at": new Date(),"updated_at": new Date()},
    {"_id":5,"nama":"Adz","address":"Paris","gender":"M","created_at": new Date(),"updated_at": new Date()}
]);


db.createCollection("transactions");
db.transactions.insertMany([
    {"_id":1,"user_id":1,"paymentmethod_id":3,"status":"Pending","total_qty":1,"total_price":100.000,"created_at": new Date(),"updated_at": new Date()},
    {"_id":2,"user_id":2,"paymentmethod_id":1,"status":"Masuk","total_qty":4,"total_price":200.000,"created_at": new Date(),"updated_at": new Date()},
    {"_id":3,"user_id":3,"paymentmethod_id":2,"status":"Pending","total_qty":5,"total_price":120.000,"created_at": new Date(),"updated_at": new Date()},
    {"_id":4,"user_id":4,"paymentmethod_id":3,"status":"Masuk","total_qty":2,"total_price":500.000,"created_at": new Date(),"updated_at": new Date()},
    {"_id":5,"user_id":5,"paymentmethod_id":2,"status":"Pending","total_qty":2,"total_price":300.000,"created_at": new Date(),"updated_at": new Date()}
]);


db.createCollection("trans_detail");
db.trans_detail.insertMany([
    {"transaction_id":1,"product_id":1,"status":"Pending","qty":1,"price":100.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":2,"product_id":2,"status":"Pending","qty":4,"price":200.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":3,"product_id":2,"status":"Pending","qty":1,"price":50.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":3,"product_id":3,"status":"Masuk","qty":1,"price":30.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":3,"product_id":4,"status":"Masuk","qty":1,"price":20.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":3,"product_id":5,"status":"Masuk","qty":2,"price":10.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":4,"product_id":7,"status":"Pending","qty":2,"price":250.000,"created_at": new Date(),"updated_at": new Date()},
    {"transaction_id":5,"product_id":8,"status":"Pending","qty":2,"price":150.000,"created_at": new Date(),"updated_at": new Date()}
]);

-- Read
db.users.find({gender:"M"});
db.products.find({_id:3});
db.users.find({gender:"Wanita"}).count();
db.users.find().sort({nama:1});
db.products.find().limit(5);

-- Update
db.products.updateOne({_id:1}, {$set: {nama:"Product Dummy",updated_at: new Date()}});
db.trans_detail.updateMany({product_id:2}, {$set: {qty:3,updated_at: new Date()}});

-- Delete
db.products.remove({_id:1},{justOne: true});
db.products.deleteOne({_id:1});
db.products.remove({product_type_id:1});
db.products.deleteMany({product_type_id:1});
