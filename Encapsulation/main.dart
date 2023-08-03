import 'getter.dart';
import 'setter.dart';
import 'task.dart';

void main() {
  Book book = Book('Harry poter', 4000.0);
  print('Getter');
  print(book.getBookName);
  print("${book.getBookPrize}\n------------------");
  // print('${book._name}'); wwe cant print value by calling book._name becauuse _name is private property need geeter name for print value

  Book1 book1 = Book1();
  book1.setBookName = 'Harry pooter';
  book1.setBookPrice = 90;
  print('Setter');
  book1
      .display(); //// here we use display method for printing values , we can also define get method for access value

  University university = University();
  university.name = 'Uok';
  university.year = 1851;
  print('==========task=============');
  university.display();
}
