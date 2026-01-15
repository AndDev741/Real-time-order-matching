import '../../infrastructure/repository/abstract/OrderRepository.dart';
import '../entities/Order.dart';
import '../entities/enums/OrderStatus.dart';
import '../entities/enums/OrderType.dart';

class OrderService {
  final OrderRepository _orderRepository;

  OrderService(this._orderRepository);

  List getAllOrders() {
    return _orderRepository.getAllOrders();
  }

  Order? getOrderById(int orderId) {
    return _orderRepository.getOrderById(orderId);
  }

  void createOrder(
    int traderId,
    OrderType type,
    double price,
    int quantity,
    int remainingQuantity,
    OrderStatus status,
    DateTime createdAt,
  ) {
    Order newOrder = Order(
      id: 0, // Temporary ID, will be set by repository
      traderId: traderId,
      type: type,
      price: price,
      quantity: quantity,
      remainingQuantity: remainingQuantity,
      status: status,
      createdAt: createdAt,
    );

    _orderRepository.addOrder(newOrder);
  }

  void deleteOrder(int orderId) {
    _orderRepository.deleteOrder(orderId);
  }

  void updateOrder(Order updatedOrder) {
    _orderRepository.updateOrder(updatedOrder);
  }
}
