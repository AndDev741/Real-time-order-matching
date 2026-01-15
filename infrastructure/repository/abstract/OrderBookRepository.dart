import '../../../domain/entities/OrderBook.dart';

abstract class OrderBookRepository {
  OrderBook? getOrderBookBySymbol(Symbol symbol);
  List<OrderBook> getAllOrderBooks();
  void addOrderBook(OrderBook orderBook);
  void updateOrderBook(OrderBook orderBook);
}