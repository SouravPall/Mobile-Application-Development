void main(){
  Book b1 = Book(bookName: 'The Three Musketeers', price: 1200.45, copies: 120);
  Book b2 = Book(bookName: 'The Alchemist', price: 340.50, copies: 200);
  Book b3 = Book(bookName: 'A Song of Ice and Fire', price: 688.90, copies: 500);
  
  b1.authorList = [
    Author(authorName: 'Alexandre Dumas', authorId: '8264', authorNumber: '212222251'),
  ];
  b2.authorList = [
    Author(authorName: 'Alexandre Dumas', authorId: '8264', authorNumber: '212222251'),
  ];
  b3.authorList = [
    Author(authorName: 'Alexandre Dumas', authorId: '8264', authorNumber: '212222251'),
  ];
  
  b1.publication = Publications(publicationName: 'Thomson Reuters', publicationDOI: '3123-1314-0012', publicationID: '173');
  b1.publication = Publications(publicationName: 'HarperCollins', publicationDOI: '747-724-8981', publicationID: '1554');
  b1.publication = Publications(publicationName: 'RELX', publicationDOI: '533-165-77486', publicationID: '254');

List bookList =[b1,b2,b3];

  for(var book in bookList){
    int serial = 1;
    final authorNameList = List.generate(book.authorList.length, (index) => book.authorList[index].authorName);
    final nameString = authorNameList.join(',');
    print('$serial. ${book.bookName} by $nameString from ${book.publication?.publicationName}');
  }

}
class Book{
  String bookName;
  double price;
  int copies;
  List<Author>? authorList;
  Publications? publication;

  Book({required this.bookName, required this.price, required this.copies, this.authorList, this.publication});


}
class Author{
  String authorName;
  String authorId;
  String authorNumber;
  Publications? publications;
  
  Author({required this.authorName, required this.authorId, required this.authorNumber,this.publications});

}
class Publications{
  String publicationName;
  String publicationDOI;
  String publicationID;

  Publications({required this.publicationName, required this.publicationDOI, required this.publicationID});
}