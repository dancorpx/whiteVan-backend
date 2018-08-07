# mock data for diffeent tables
mock = {
  "users": [{
    "id": 1,
    "username": "dan",
    "thief_id": "201724076541",
    "area": "north chengdu"
  },
  {
    "id": 2,
    "username": "callum",
    "thief_id": "201725682152",
    "area": "south chengdu"
  },
  {
    "id": 3,
    "username": "jason",
    "thief_id": "201787056763",
    "area": "east chengdu"
  }
  ],
  "items": [{
    "id": 1
    "name": "Motorbike",
    "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    "category": "vehicle",
    "price": 5000,
    "seller_id": 1,
    "quantity": 1,
  },
  {
    "id": 2
    "name": "Shoes",
    "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    "category": "Clothing",
    "price": 300,
    "seller_id": 2,
    "quantity": 5,
  },
  {
    "id": 3
    "name": "Old dirty tools",
    "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    "category": "Construction",
    "price": 2400,
    "seller_id": 3,
    "quantity": 15,
  },
  {
    "id": 4
    "name": "Iphone X",
    "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    "category": "Electronics",
    "price": 9000,
    "seller_id": 1,
    "quantity": 2,
  },
  {
    "id": 5
    "name": "Necklace",
    "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit, voluptatibus.",
    "category": "Jewelry",
    "price": 30,
    "seller_id": 2,
    "quantity": 1,
  }
  ],
  "exchanges": [{
    "id": 1,
    "seller_id": 1,
    "item_id": 4,
    "buyer_id": 3,
    "lat": 30.665445785643275,
    "lng": 104.0931378099534,
    "sold?": false,
    "chat_record_id": 1
  },
  {
    "id": 2,
    "seller_id": 2,
    "item_id": 5,
    "buyer_id": 1,
    "lat": 30.672386202549067,
    "lng": 104.10840274616338,
    "sold?": false,
    "chat_record_id": 2
  }
  ],
  "chat_records": [{
    "id": 1,
    "message": "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    "user_id": 2,
  },
  {
    "id": 2,
    "message": "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    "user_id": 4,
  }]
}
