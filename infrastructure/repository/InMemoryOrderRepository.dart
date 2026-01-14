import '../../domain/entities/Order.dart';
import 'abstract/OrderRepository.dart';

class InMemoryOrderRepository implements OrderRepository {
  final List<Order> _orders = [];
  int incrementalId = 0;

  @override
  void addOrder(Order order) {
    incrementalId++;
    _orders.add(order.copyWith(id: incrementalId));
  }

  @override
  List<Order> getAllOrders() {
    return _orders;
  }

  @override
  Order? getOrderById(int id) {
    final index = _orders.indexWhere((order) => order.id == id);
    return index != -1 ? _orders[index] : null;
  }

  @override
  void updateOrder(Order order) {
    final index = _orders.indexWhere((o) => o.id == order.id);
    if (index != -1) {
      _orders[index] = order;
    }
  }

  @override
  void deleteOrder(int id) {
    _orders.removeWhere((order) => order.id == id);
  }
}