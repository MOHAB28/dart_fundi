enum WeekDays {
  saturday('Sat'),
  sunday('Sun'),
  monday('Mon');

  final String dayShorts;
  const WeekDays(this.dayShorts);
}

class User {
  final String userName;
  final String email;

  User({required this.userName, required this.email});
}

enum TicketType { regular, vip }

abstract class Tikcet {
  double getPrice();
}

class VIPTikcet implements Tikcet {
  @override
  double getPrice() => 80.0;
}

class RegularTikcet implements Tikcet {
  @override
  double getPrice() => 30.0;
}

class BookingSysmt {
  final User user;
  BookingSysmt(this.user);

  List<Tikcet> tickets = [];

  void addTicket(Tikcet ticket) {
    tickets.add(ticket);
  }

  double getToltalPrice() {
    double total = 0.0;
    for (Tikcet tikcet in tickets) {
      total += tikcet.getPrice();
    }
  }
}
