class Booking {
  Booking({
    required this.eventName,
    required this.isAllDay,
    required this.open,
    required this.from,
    required this.duration,
    required this.to,
    required this.close,
    required this.status,
  });

  final String eventName;

  final bool isAllDay;

  final String open;
  final int status;
  final String close;

  final DateTime from;
  final int duration;

  final DateTime to;
}

// final DateTime today = DateTime.now();

// final List<Booking> bookings = <Booking>[
//   Booking(
//     eventName: 'Pendding',
//     from: DateTime(today.year, today.month, 1, 7),
//     to: DateTime(today.year, today.month, 1, 8),
//     open: '',
//     status: 1,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
//   Booking(
//     eventName: 'lll',
//     from: DateTime(today.year, today.month, 2, 7),
//     to: DateTime(today.year, today.month, 2, 8),
//     open: 'hh',
//     status: 2,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
//   Booking(
//     eventName: 'lll',
//     from: DateTime(today.year, today.month, 1, 9),
//     to: DateTime(today.year, today.month, 1, 10),
//     open: 'hh',
//     status: 1,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
//   Booking(
//     eventName: 'lll',
//     from: DateTime(today.year, today.month, 1, 10),
//     to: DateTime(today.year, today.month, 1, 14),
//     open: 'hh',
//     status: 1,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
//   Booking(
//     eventName: 'qerf',
//     from: DateTime(today.year, today.month, 2, 2),
//     to: DateTime(today.year, today.month, 2, 5),
//     open: 'hh',
//     status: 3,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
//   Booking(
//     eventName: 'qerf',
//     from: DateTime(today.year, today.month, 2, 12),
//     to: DateTime(today.year, today.month, 2, 13),
//     open: 'hh',
//     status: 2,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
//   Booking(
//     eventName: 'Conference',
//     from: DateTime(today.year, 6, 9, 9),
//     to: DateTime(today.year, 6, 10, 1),
//     open: 'ddd',
//     status: 2,
//     isAllDay: false,
//     close: '20:10',
//     duration: 1,
//   ),
// ];
