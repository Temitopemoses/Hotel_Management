INSERT INTO smartstay_state (id, data)
VALUES ('main', '{
  "rooms":[
    {"id":"R101","number":"101","type":"Standard","price":45000,"capacity":2,"status":"Available","amenities":["Wi-Fi","Air conditioning","TV"],"description":"Comfortable room for a relaxing stay.","image":"https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900"},
    {"id":"R102","number":"102","type":"Standard","price":45000,"capacity":2,"status":"Available","amenities":["Wi-Fi","Air conditioning","TV"],"description":"A bright, welcoming room with modern essentials.","image":"https://images.unsplash.com/photo-1611892440504-42a792e24d32?w=900"},
    {"id":"R201","number":"201","type":"Deluxe","price":68000,"capacity":2,"status":"Available","amenities":["Wi-Fi","King bed","Mini bar"],"description":"Extra space and comfort for business or leisure.","image":"https://images.unsplash.com/photo-1590490360182-c33d57733427?w=900"},
    {"id":"R202","number":"202","type":"Deluxe","price":68000,"capacity":3,"status":"Available","amenities":["Wi-Fi","King bed","Mini bar"],"description":"Elegant accommodation with thoughtful amenities.","image":"https://images.unsplash.com/photo-1590490360182-c33d57733427?w=900"},
    {"id":"R301","number":"301","type":"Executive","price":95000,"capacity":2,"status":"Available","amenities":["Wi-Fi","Lounge access","Work desk"],"description":"Premium space designed for productive stays.","image":"https://images.unsplash.com/photo-1566665797739-1674de7a421a?w=900"},
    {"id":"R401","number":"401","type":"Presidential Suite","price":180000,"capacity":4,"status":"Available","amenities":["Wi-Fi","Living room","Jacuzzi","Butler service"],"description":"Our most spacious and luxurious accommodation.","image":"https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=900"}
  ],
  "guests":[
    {"id":"G001","name":"Amaka Okafor","email":"amaka@example.com","phone":"+234 803 111 2233","category":"Returning","visits":3,"spent":204000,"notes":"Prefers a quiet room."},
    {"id":"G002","name":"Daniel James","email":"daniel@example.com","phone":"+234 802 444 5566","category":"VIP","visits":5,"spent":475000,"notes":"Business traveller."},
    {"id":"G003","name":"Zainab Bello","email":"zainab@example.com","phone":"+234 806 777 8899","category":"New","visits":1,"spent":68000,"notes":""}
  ],
  "reservations":[
    {"id":"BK-1001","guestId":"G001","guest":"Amaka Okafor","email":"amaka@example.com","phone":"+234 803 111 2233","roomId":"R201","room":"201","category":"Deluxe","checkIn":"2026-11-06","checkOut":"2026-11-09","guests":2,"amount":204000,"status":"Confirmed","paymentStatus":"Paid","createdAt":"2026-11-01"},
    {"id":"BK-1002","guestId":"G002","guest":"Daniel James","email":"daniel@example.com","phone":"+234 802 444 5566","roomId":"R301","room":"301","category":"Executive","checkIn":"2026-11-06","checkOut":"2026-11-08","guests":1,"amount":190000,"status":"Checked-in","paymentStatus":"Paid","createdAt":"2026-11-02"},
    {"id":"BK-1003","guestId":"G003","guest":"Zainab Bello","email":"zainab@example.com","phone":"+234 806 777 8899","roomId":"R102","room":"102","category":"Standard","checkIn":"2026-11-07","checkOut":"2026-11-10","guests":2,"amount":135000,"status":"Pending","paymentStatus":"Pending","createdAt":"2026-11-04"}
  ],
  "payments":[
    {"id":"TX-2001","reservationId":"BK-1001","guest":"Amaka Okafor","amount":204000,"method":"Card","status":"Successful","date":"2026-11-01"},
    {"id":"TX-2002","reservationId":"BK-1002","guest":"Daniel James","amount":190000,"method":"Bank Transfer","status":"Successful","date":"2026-11-02"},
    {"id":"TX-2003","reservationId":"BK-1003","guest":"Zainab Bello","amount":135000,"method":"POS","status":"Pending","date":"2026-11-04"}
  ],
  "expenses":[
    {"id":"EX-001","category":"Utilities","description":"Electricity and water","amount":85000,"date":"2026-11-02"},
    {"id":"EX-002","category":"Maintenance","description":"Air conditioning service","amount":35000,"date":"2026-11-03"},
    {"id":"EX-003","category":"Supplies","description":"Guest room supplies","amount":42000,"date":"2026-11-04"}
  ],
  "employees":[
    {"id":"ST-001","name":"Grace Adebayo","department":"Reception","role":"Front Desk Officer","phone":"+234 803 555 0101","salary":180000,"status":"Active"},
    {"id":"ST-002","name":"Ibrahim Musa","department":"Housekeeping","role":"Housekeeping Supervisor","phone":"+234 802 555 0102","salary":150000,"status":"Active"},
    {"id":"ST-003","name":"Chika Nwosu","department":"Accounting","role":"Accountant","phone":"+234 806 555 0103","salary":220000,"status":"Active"},
    {"id":"ST-004","name":"Tunde Balogun","department":"Security","role":"Security Officer","phone":"+234 809 555 0104","salary":120000,"status":"On leave"}
  ],
  "attendance":[
    {"id":"AT-001","employeeId":"ST-001","employee":"Grace Adebayo","date":"2026-11-06","clockIn":"08:02","clockOut":"","status":"Present"},
    {"id":"AT-002","employeeId":"ST-002","employee":"Ibrahim Musa","date":"2026-11-06","clockIn":"07:55","clockOut":"","status":"Present"},
    {"id":"AT-003","employeeId":"ST-003","employee":"Chika Nwosu","date":"2026-11-06","clockIn":"","clockOut":"","status":"Absent"}
  ],
  "shifts":[{"id":"SH-001","employee":"Grace Adebayo","department":"Reception","date":"2026-11-06","time":"08:00 - 16:00"},{"id":"SH-002","employee":"Ibrahim Musa","department":"Housekeeping","date":"2026-11-06","time":"07:00 - 15:00"}],
  "feedback":[
    {"id":"FB-001","guest":"Amaka Okafor","reservationId":"BK-1001","rating":5,"cleanliness":5,"service":5,"comment":"Warm welcome and very clean room. I enjoyed my stay.","date":"2026-11-04","resolved":true},
    {"id":"FB-002","guest":"Daniel James","reservationId":"BK-1002","rating":4,"cleanliness":5,"service":4,"comment":"Great facilities. Breakfast service could be faster.","date":"2026-11-05","resolved":false}
  ],
  "communications":[]
}'::jsonb)
ON CONFLICT (id) DO NOTHING;