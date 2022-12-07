Flight.destroy_all
Flight.create!([
                 { flight_no: 401, operator: 'Indigo', origin: 'Bangalore', destination: 'Delhi', duration: 162 },
                 { flight_no: 402, operator: 'Indigo', origin: 'Mumbai', destination: 'Delhi', duration: 172 },
                 { flight_no: 403, operator: 'Indigo', origin: 'Chennai', destination: 'Bangalore', duration: 52 },
                 { flight_no: 404, operator: 'Indigo', origin: 'Pune', destination: 'Delhi', duration: 183 },
                 { flight_no: 405, operator: 'Indigo', origin: 'Bangalore', destination: 'Delhi', duration: 154 },
                 { flight_no: 406, operator: 'Indigo', origin: 'Delhi', destination: 'Goa', duration: 166 },
                 { flight_no: 407, operator: 'Indigo', origin: 'Bangalore', destination: 'Dehradun', duration: 172 },
                 { flight_no: 408, operator: 'Indigo', origin: 'Bangalore', destination: 'Delhi', duration: 157 },
                 { flight_no: 501, operator: 'SpiceJet', origin: 'Bangalore', destination: 'Delhi', duration: 171 },
                 { flight_no: 502, operator: 'SpiceJet', origin: 'Chennai', destination: 'Bangalore', duration: 47 },
                 { flight_no: 503, operator: 'SpiceJet', origin: 'Delhi', destination: 'Goa', duration: 168 },
                 { flight_no: 504, operator: 'SpiceJet', origin: 'Bangalore', destination: 'Mumbai', duration: 163 },
                 { flight_no: 505, operator: 'SpiceJet', origin: 'Bangalore', destination: 'Delhi', duration: 177 },
                 { flight_no: 506, operator: 'SpiceJet', origin: 'Bangalore', destination: 'Chennai', duration: 142 },
                 { flight_no: 601, operator: 'Vistara', origin: 'Bangalore', destination: 'Delhi', duration: 192 },
                 { flight_no: 602, operator: 'Vistara', origin: 'Bangalore', destination: 'Goa', duration: 72 },
                 { flight_no: 603, operator: 'Vistara', origin: 'Bangalore', destination: 'Dehradun', duration: 224 },
                 { flight_no: 604, operator: 'Vistara', origin: 'Mumbai', destination: 'Delhi', duration: 161 },
                 { flight_no: 701, operator: 'Air-India', origin: 'Bangalore', destination: 'Delhi', duration: 220 },
                 { flight_no: 702, operator: 'Air-India', origin: 'Bangalore', destination: 'Mumbai', duration: 108 }
               ])
p "Created #{Flight.count} flights"

Schedule.destroy_all
Schedule.create!([
                   { flight_id: 401, departure: '2022-11-16 06:42:10' },
                   { flight_id: 501, departure: '2022-11-16 07:32:10' },
                   { flight_id: 503, departure: '2022-11-16 07:56:10' },
                   { flight_id: 701, departure: '2022-11-16 08:45:10' },
                   { flight_id: 602, departure: '2022-11-16 09:42:10' },
                   { flight_id: 403, departure: '2022-11-16 10:22:10' },
                   { flight_id: 401, departure: '2022-11-16 11:33:10' },
                   { flight_id: 402, departure: '2022-11-16 13:42:10' },
                   { flight_id: 502, departure: '2022-11-16 15:42:10' },
                   { flight_id: 601, departure: '2022-11-16 16:52:10' },
                   { flight_id: 702, departure: '2022-11-16 16:59:10' },
                   { flight_id: 404, departure: '2022-11-16 17:22:10' },
                   { flight_id: 604, departure: '2022-11-16 17:43:10' },
                   { flight_id: 601, departure: '2022-11-16 18:45:10' },
                   { flight_id: 503, departure: '2022-11-16 19:10:10' },
                   { flight_id: 402, departure: '2022-11-16 19:15:10' },
                   { flight_id: 501, departure: '2022-11-16 19:34:10' },
                   { flight_id: 702, departure: '2022-11-16 20:09:10' },
                   { flight_id: 408, departure: '2022-11-16 20:27:10' },
                   { flight_id: 407, departure: '2022-11-16 22:32:10' },
                   { flight_id: 505, departure: '2022-11-16 23:40:10' },
                   { flight_id: 503, departure: '2022-11-17 04:24:10' },
                   { flight_id: 406, departure: '2022-11-17 04:56:10' },
                   { flight_id: 407, departure: '2022-11-17 06:12:10' },
                   { flight_id: 603, departure: '2022-11-17 06:34:10' },
                   { flight_id: 404, departure: '2022-11-17 08:12:10' },
                   { flight_id: 501, departure: '2022-11-17 08:42:10' },
                   { flight_id: 401, departure: '2022-11-17 09:42:10' },
                   { flight_id: 701, departure: '2022-11-17 10:12:10' },
                   { flight_id: 601, departure: '2022-11-17 11:20:10' },
                   { flight_id: 504, departure: '2022-11-17 11:52:10' },
                   { flight_id: 506, departure: '2022-11-17 12:42:10' },
                   { flight_id: 604, departure: '2022-11-17 18:15:10' },
                   { flight_id: 702, departure: '2022-11-18 07:42:10' },
                   { flight_id: 407, departure: '2022-11-18 09:34:10' },
                   { flight_id: 506, departure: '2022-11-18 11:47:10' },
                   { flight_id: 404, departure: '2022-11-18 13:12:10' },
                   { flight_id: 505, departure: '2022-11-18 15:52:10' },
                   { flight_id: 406, departure: '2022-11-18 17:12:10' },
                   { flight_id: 501, departure: '2022-11-18 18:22:10' },
                   { flight_id: 503, departure: '2022-11-18 19:23:10' },
                   { flight_id: 403, departure: '2022-11-18 20:33:10' },
                   { flight_id: 408, departure: '2022-11-18 21:06:10' },
                   { flight_id: 604, departure: '2022-11-18 21:24:10' },
                   { flight_id: 403, departure: '2022-11-18 22:32:10' },
                   { flight_id: 501, departure: '2022-11-18 23:08:10' },
                   { flight_id: 701, departure: '2022-11-18 23:25:10' },
                   { flight_id: 604, departure: '2022-11-18 23:54:10' },
                   { flight_id: 401, departure: '2022-11-19 07:42:10' },
                   { flight_id: 505, departure: '2022-11-19 07:56:10' },
                   { flight_id: 701, departure: '2022-11-19 08:42:10' },
                   { flight_id: 602, departure: '2022-11-19 10:21:10' },
                   { flight_id: 701, departure: '2022-11-19 11:32:10' },
                   { flight_id: 405, departure: '2022-11-19 14:47:10' },
                   { flight_id: 601, departure: '2022-11-19 16:11:10' },
                   { flight_id: 506, departure: '2022-11-19 17:42:10' },
                   { flight_id: 401, departure: '2022-11-19 18:52:10' },
                   { flight_id: 702, departure: '2022-11-19 20:32:10' },
                   { flight_id: 503, departure: '2022-11-19 22:41:10' },
                   { flight_id: 402, departure: '2022-11-19 23:45:10' },
                   { flight_id: 701, departure: '2022-11-20 06:49:10' },
                   { flight_id: 602, departure: '2022-11-20 07:45:10' },
                   { flight_id: 403, departure: '2022-11-20 10:32:10' },
                   { flight_id: 501, departure: '2022-11-21 09:49:10' },
                   { flight_id: 604, departure: '2022-11-21 12:46:10' },
                   { flight_id: 702, departure: '2022-11-21 19:25:10' },
                   { flight_id: 408, departure: '2022-11-22 03:52:10' },
                   { flight_id: 505, departure: '2022-11-22 07:12:10' },
                   { flight_id: 601, departure: '2022-11-22 11:40:10' },
                   { flight_id: 701, departure: '2022-11-22 16:42:10' },
                   { flight_id: 407, departure: '2022-11-22 21:17:10' },
                   { flight_id: 403, departure: '2022-11-23 03:52:10' },
                   { flight_id: 506, departure: '2022-11-23 05:47:10' },
                   { flight_id: 602, departure: '2022-11-23 07:09:10' },
                   { flight_id: 401, departure: '2022-11-23 10:26:10' },
                   { flight_id: 702, departure: '2022-11-23 15:26:10' },
                   { flight_id: 501, departure: '2022-11-23 19:48:10' },
                   { flight_id: 505, departure: '2022-11-23 23:16:10' }
                 ])
p "Created #{Schedule.count} flight schedules"


Schedule.destroy_all
Schedule.create!([
                   { flight_id:1, departure: '2022-11-16 06:42:10'},
                   { flight_id:9, departure: '2022-11-16 07:32:10'},
                   { flight_id:11, departure: '2022-11-16 07:56:10'},
                   { flight_id:19, departure: '2022-11-16 08:45:10'},
                   { flight_id:16, departure: '2022-11-16 09:42:10'},
                   { flight_id:3, departure: '2022-11-16 10:22:10'},
                   { flight_id:1, departure: '2022-11-16 11:33:10'},
                   { flight_id:2, departure: '2022-11-16 13:42:10'},
                   { flight_id:10, departure: '2022-11-16 15:42:10'},
                   { flight_id:15, departure: '2022-11-16 16:52:10'},
                   { flight_id:20, departure: '2022-11-16 16:59:10'},
                   { flight_id:4, departure: '2022-11-16 17:22:10'},
                   { flight_id:18, departure: '2022-11-16 17:43:10'},
                   { flight_id:15, departure: '2022-11-16 18:45:10'},
                   { flight_id:11, departure: '2022-11-16 19:10:10'},
                   { flight_id:2, departure: '2022-11-16 19:15:10'},
                   { flight_id:9, departure: '2022-11-16 19:34:10'},
                   { flight_id:20, departure: '2022-11-16 20:09:10'},
                   { flight_id:8, departure: '2022-11-16 20:27:10'},
                   { flight_id:7, departure: '2022-11-16 22:32:10'},
                   { flight_id:13, departure: '2022-11-16 23:40:10'},
                   { flight_id:11, departure: '2022-11-17 04:24:10'},
                   { flight_id:6, departure: '2022-11-17 04:56:10'},
                   { flight_id:7, departure: '2022-11-17 06:12:10'},
                   { flight_id:17, departure: '2022-11-17 06:34:10'},
                   { flight_id:4, departure: '2022-11-17 08:12:10'},
                   { flight_id:9, departure: '2022-11-17 08:42:10'},
                   { flight_id:1, departure: '2022-11-17 09:42:10'},
                   { flight_id:19, departure: '2022-11-17 10:12:10'},
                   { flight_id:15, departure: '2022-11-17 11:17:10'},
                   { flight_id:12, departure: '2022-11-17 11:52:10'},
                   { flight_id:14, departure: '2022-11-17 12:42:10'},
                   { flight_id:18, departure: '2022-11-17 18:15:10'},
                   { flight_id:20, departure: '2022-11-18 07:42:10'},
                   { flight_id:7, departure: '2022-11-18 09:34:10'},
                   { flight_id:14, departure: '2022-11-18 11:47:10'},
                   { flight_id:4, departure: '2022-11-18 13:12:10'},
                   { flight_id:13, departure: '2022-11-18 15:52:10'},
                   { flight_id:6, departure: '2022-11-18 17:12:10'},
                   { flight_id:9, departure: '2022-11-18 18:22:10'},
                   { flight_id:11, departure: '2022-11-18 19:23:10'},
                   { flight_id:3, departure: '2022-11-18 20:33:10'},
                   { flight_id:8, departure: '2022-11-18 21:06:10'},
                   { flight_id:18, departure: '2022-11-18 21:24:10'},
                   { flight_id:3, departure: '2022-11-18 22:32:10'},
                   { flight_id:9, departure: '2022-11-18 23:08:10'},
                   { flight_id:19, departure: '2022-11-18 23:25:10'},
                   { flight_id:18, departure: '2022-11-18 23:54:10'},
                   { flight_id:1, departure: '2022-11-19 07:42:10'},
                   { flight_id:13, departure: '2022-11-19 07:56:10'},
                   { flight_id:19, departure: '2022-11-19 08:42:10'},
                   { flight_id:16, departure: '2022-11-19 10:21:10'},
                   { flight_id:19, departure: '2022-11-19 11:32:10'},
                   { flight_id:5, departure: '2022-11-19 14:47:10'},
                   { flight_id:15, departure: '2022-11-19 16:11:10'},
                   { flight_id:14, departure: '2022-11-19 17:42:10'},
                   { flight_id:1, departure: '2022-11-19 18:52:10'},
                   { flight_id:20, departure: '2022-11-19 20:32:10'},
                   { flight_id:11, departure: '2022-11-19 22:41:10'},
                   { flight_id:2, departure: '2022-11-19 23:45:10'},
                   { flight_id:19, departure: '2022-11-20 06:49:10'},
                   { flight_id:16, departure: '2022-11-20 07:45:10'},
                   { flight_id:3, departure: '2022-11-20 10:32:10'},
                   { flight_id:9, departure: '2022-11-21 09:49:10'},
                   { flight_id:18, departure: '2022-11-21 12:46:10'},
                   { flight_id:20, departure: '2022-11-21 19:25:10'},
                   { flight_id:8, departure: '2022-11-22 03:52:10'},
                   { flight_id:13, departure: '2022-11-22 07:12:10'},
                   { flight_id:15, departure: '2022-11-22 11:40:10'},
                   { flight_id:19, departure: '2022-11-22 16:42:10'},
                   { flight_id:7, departure: '2022-11-22 21:17:10'},
                   { flight_id:3, departure: '2022-11-23 03:52:10'},
                   { flight_id:14, departure: '2022-11-23 05:47:10'},
                   { flight_id:16, departure: '2022-11-23 07:09:10'},
                   { flight_id:1, departure: '2022-11-23 10:26:10'},
                   { flight_id:20, departure: '2022-11-23 15:26:10'},
                   { flight_id:9, departure: '2022-11-23 19:48:10'},
                   { flight_id:13, departure: '2022-11-23 23:16:10'}
                 ])
p "Created #{Schedule.count} flight schedules"