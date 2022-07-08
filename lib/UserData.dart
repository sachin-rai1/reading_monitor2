class User {
  late int Rowid;
  late String Email;
  late String Pass;
  User(this.Rowid ,this.Email ,this.Pass);
  Map<String , dynamic>toMap()
  {
    var map = <String , dynamic > {'Rowid' : Rowid, 'Email' : Email, 'Pass' : Pass};
    return map;
  }
    User.fromMap(Map<String , dynamic> map)
   {
    Rowid = map['Rowid'];
    Email = map['Email'];
    Pass = map['Pass'];
  }
}