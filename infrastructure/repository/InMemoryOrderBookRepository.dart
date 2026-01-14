import '../../domain/entities/OrderBook.dart';
import 'abstract/OrderBookRepository.dart';

class InMemoryOrderBookRepository implements OrderBookRepository {
  final List<OrderBook> _ordersBooks = [];

  @override
  OrderBook? getOrderBookBySymbol(Symbol symbol) {
    final index =
        _ordersBooks.indexWhere((orderBook) => orderBook.symbol == symbol);
    return index != -1 ? _ordersBooks[index] : null;
  }

  @override
  OrderBook? findFirstOrderBook() {
    return _ordersBooks.isNotEmpty ? _ordersBooks.first : null;
  }
  
  @override
  void addOrderBook(OrderBook orderBook) {
    _ordersBooks.add(orderBook);
  }
}