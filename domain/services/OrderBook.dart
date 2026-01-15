
import '../../infrastructure/repository/abstract/OrderBookRepository.dart';
import '../entities/Order.dart';
import '../entities/OrderBook.dart';

class OrderBookService {
  final OrderBookRepository _orderBookRepository;

  OrderBookService(this._orderBookRepository);

  List getAllOrderBooks() {
    return _orderBookRepository.getAllOrderBooks();
  }

  OrderBook? getOrderBookBySymbol(Symbol symbol) {
    return _orderBookRepository.getOrderBookBySymbol(symbol);
  }

  void createOrderBook(
    Symbol symbol,
    List<Order> buyOrders,
    List<Order> sellOrders,
  ) {
    OrderBook newOrderBook = OrderBook(
      symbol: symbol,
      buyOrders: buyOrders,
      sellOrders: sellOrders,
    );

    _orderBookRepository.addOrderBook(newOrderBook);
  }

  void updateOrderBook(OrderBook orderBook) {
    _orderBookRepository.updateOrderBook(orderBook);
  }

}