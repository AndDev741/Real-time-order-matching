import '../../../domain/entities/OrderBook.dart';

abstract class OrderBookRepository {
  OrderBook? getOrderBookBySymbol(Symbol symbol);
  OrderBook? findFirstOrderBook();
  void addOrderBook(OrderBook orderBook);
}