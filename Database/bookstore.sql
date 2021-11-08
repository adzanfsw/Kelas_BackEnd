
use bookstore

db.createCollection("buku");
db.buku.insertMany([
    {_id: 1, title: "Wawasan Pancasila", pengarangID: 1, penerbitID: 1, price: 71200, stats: {page: 324, weight: 300}, publishedAt: new Date("2018-10-01"), category: ["social", "politics"]},
    {_id: 2, title: "Mata Air Keteladanan", pengarangID: 1, penerbitID: 2, price: 106250, stats: {page: 672, weight: 650}, publishedAt: new Date("2017-09-01"), category: ["social", "politics"]},
    {_id: 3, title: "Revolusi Pancasila", pengarangID: 1, penerbitID: 1, price: 54400, stats: {page: 220, weight: 500}, publishedAt: new Date("2015-05-01"), category: ["social", "politics"]},
    {_id: 4, title: "Self Driving", pengarangID: 2, penerbitID: 1, price: 58650, stats:{page: 286, weight: 300}, publishedAt: new Date("2018-05-01"), category: ["self-development"]},
    {_id: 5, title: "Self Disruption", pengarangID: 2, penerbitID: 2, price: 83300, stats: {page: 400, weight: 800}, publishedAt: new Date("2018-05-01"), category: ["self-development"]}
]);


db.createCollection("pengarang");
db.pengarang.insertMany([
    {_id:1, firstName: "Yudi", lastName: "Latif"},
    {_id:2, firstName: "Rhenald", lastName: "Kasali"}
]);


db.createCollection("penerbit");
db.penerbit.insertMany([
    {_id: 1, publisherName: "Sabakgrip"},
    {_id: 2, publisherName: "Bentang Pustaka"}
]);


-- 1
db.buku.find({ $or: [{pengarangID: 1}, {pengarangID: 2}] })

-- 2
db.buku.find({ pengarangID: {$in: [1]} }, {'title': 1, 'price': 1} );

-- 3
db.buku.aggregate([ {$group: {_id: "$pengarangID", pageTotal: { $sum: "$stats.page" } }} ]);

-- 4
db.pengarang.aggregate([
    {
        $lookup:
            {
                from: "buku",
                localField: "_id",
                foreignField: "pengarangID",
                as: "buku"
            }
    }
])

-- 5
db.buku.aggregate([
    {
        $lookup:
            {
                from: "pengarang",
                localField: "pengarangID",
                foreignField: "_id",
                as: "pengarang"
            }
    },
    {
        $lookup:
            {
                from: "penerbit",
                localField: "penerbitID",
                foreignField: "_id",
                as: "penerbit"
            }
    }
])

-- 6


-- 7


-- 8


-- 9