
import 'media.dart';

class Program {
  final Media product;
  final int numOfItem;

  Program({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Program> demoCarts = [
  Program(product: demoProducts[0], numOfItem: 2),
  Program(product: demoProducts[1], numOfItem: 1),
  Program(product: demoProducts[3], numOfItem: 1),
];
