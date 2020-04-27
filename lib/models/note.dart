class Note{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title , this._date, this._priority ,[this._description]);

  Note.withId(this._id ,   this._title , this._date, [this._description]);

  int get id => _id;

  String get title => _title;

  String get date => _date;

  String get description => _description;

  int get priority => _priority;


   set title(String newTitle){
     if(newTitle.length <= 255){
        this._title = newTitle;
     }
   }

  set description(String newDesription){
    if(newDesription.length <= 255){
      this._description = newDesription;
    }
  }

  set priority(int newpriority){
    if(newpriority >= 1 && newpriority <= 2 ){
      this._priority = newpriority;
    }
  }

  set date(String newDate ){
     this._date  = newDate;
  }

  Map<String , dynamic> toMap(){
    var map = Map<String , dynamic>();
    if(id != null){
      map['id'] = _id;
     }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] =_date;

    return map;
  }

  Note.fromMapObject(Map<String , dynamic> map){
     this._id = map['id'];
     this._title = map['title'];
     this._description = map['description'];
     this._priority = map['priority'];
     this.date = map['date'];

  }

}