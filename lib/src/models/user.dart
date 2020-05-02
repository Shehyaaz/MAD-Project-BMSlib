class Admin {
  final String uid;
  final String name;
  final String type;

  Admin(
    this.uid,
    this.name,
    this.type,
  );
}

class User {
  final String uid; // user id : library card number
  final String name; // user name
  final String email; // user email
  final String phone; // user phone number
  final int borrowed; // number of borrowed books
  final List<Bag> bag; // user's bag

  User({
    this.uid,
    this.name,
    this.email,
    this.phone,
    this.borrowed,
    this.bag,
  });
}

class Bag {
  final String bookID; // id of the borrowed book
  final DateTime issueDate; // date of issue
  final DateTime returnDate; // date of return is 3 days later
  final double fine;

  Bag(
    this.bookID,
    this.issueDate,
    this.fine,
  ) : returnDate = issueDate.add(new Duration(days: 3));
}