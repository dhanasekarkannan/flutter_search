
import 'dart:collection';

class Search {
  final String name;
  Search(this.name);
}

class SearchModel {
  List<Search> _nameList = [
    Search("Dhana"),
    Search("Mani"),
    Search("Mohan"),
    Search("Arun"),
    Search("Madhav"),
    Search("Amja"),
    Search("Dinesh"),
    Search("Arul"),
    Search("Niranjan"),
    Search("Jithu"),

  ];

  UnmodifiableListView<Search> get nameList => UnmodifiableListView(_nameList) ;

}
