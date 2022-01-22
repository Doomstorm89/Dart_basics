class User {
  final String email;

  User(this.email);
}

class AdminUser extends User with GetMailMixin {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  final List<User> users = [];

  void addUser(User user) {
    users.add(user);
  }

  void removeUser(User user) {
    users.remove(user);
  }

  void printEmails() {
    for (var item in users) {
      if (item is GetMailMixin) {
        print(item.getMailSystem());
      } else {
        print(item.email);
      }
    }
  }
}

mixin GetMailMixin on User {
  String getMailSystem() {
    var symbol = '@';
    var i = email.indexOf(symbol) + 1;
    return email.substring(i, email.length);
  }
}
