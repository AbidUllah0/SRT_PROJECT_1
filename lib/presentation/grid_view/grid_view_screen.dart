import 'package:flutter/material.dart';
import 'package:list_grid_ui/widgets/custom_text.dart';

import '../../models/product_model.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> productsList = [
      Product(
        name: 'Laptop',
        description: 'A high-performance laptop with 16GB RAM and 512GB SSD.',
        price: 999.99,
        imageUrl: 'assets/images/laptop.jpg',
      ),
      Product(
        name: 'Smartphone',
        description: 'A smartphone with 6.5-inch display and 128GB storage.',
        price: 699.99,
        imageUrl: 'assets/images/smartphone.jpeg',
      ),
      Product(
        name: 'Headphones',
        description: 'Noise-cancelling headphones with Bluetooth connectivity.',
        price: 199.99,
        imageUrl: 'assets/images/headphones.jpg',
      ),
      Product(
        name: 'Smartwatch',
        description: 'A smartwatch with health tracking features and GPS.',
        price: 299.99,
        imageUrl: 'assets/images/Smartwatch.jpeg',
      ),
      Product(
        name: 'Gaming Console',
        description:
            'A next-gen gaming console with 4K graphics and 1TB storage.',
        price: 499.99,
        imageUrl: 'assets/images/Gamin.jpg',
      ),
      Product(
        name: 'Tablet',
        description:
            'A 10-inch tablet with 256GB storage and high-resolution display.',
        price: 399.99,
        imageUrl: 'assets/images/Tablet.jpg',
      ),
      Product(
        name: 'Wireless Charger',
        description: 'Fast wireless charger for smartphones and other devices.',
        price: 49.99,
        imageUrl: 'assets/images/Wireless.jpg',
      ),
      Product(
        name: 'Bluetooth Speaker',
        description: 'Portable Bluetooth speaker with excellent sound quality.',
        price: 129.99,
        imageUrl: 'assets/images/Bluetooth.jpeg',
      ),
      Product(
        name: 'Drone',
        description:
            'A quadcopter drone with 4K camera for aerial photography.',
        price: 799.99,
        imageUrl: 'assets/images/Drone.jpeg',
      ),
      Product(
        name: 'Action Camera',
        description:
            'Waterproof action camera with 4K recording and Wi-Fi support.',
        price: 249.99,
        imageUrl: 'assets/images/Action.png',
      ),
      Product(
        name: 'Fitness Tracker',
        description:
            'Fitness tracker with heart rate monitor and step tracking.',
        price: 149.99,
        imageUrl: 'assets/images/Fitness.jpg',
      ),
      Product(
        name: 'VR Headset',
        description:
            'Virtual reality headset with 360-degree view and immersive experience.',
        price: 399.99,
        imageUrl: 'assets/images/vr.jpg',
      ),
      Product(
        name: 'Portable Projector',
        description: 'Mini portable projector with HD display for home cinema.',
        price: 299.99,
        imageUrl: 'assets/images/projector.jpg',
      ),
      Product(
        name: 'Mechanical Keyboard',
        description:
            'RGB mechanical keyboard with customizable keys for gaming.',
        price: 119.99,
        imageUrl: 'assets/images/keyboard.jpg',
      ),
      Product(
        name: 'Smart Doorbell',
        description: 'Smart doorbell with camera and mobile app integration.',
        price: 149.99,
        imageUrl: 'assets/images/Smart.jpg',
      ),
      Product(
        name: 'Electric Scooter',
        description:
            'Foldable electric scooter with a range of up to 25 miles.',
        price: 599.99,
        imageUrl: 'assets/images/Electric.jpeg',
      ),
      Product(
        name: 'Smart Thermostat',
        description:
            'Wi-Fi enabled smart thermostat for home temperature control.',
        price: 199.99,
        imageUrl: 'assets/images/Thermostat.jpg',
      ),
      Product(
        name: 'Portable SSD',
        description:
            'External portable SSD with 1TB storage and fast data transfer.',
        price: 179.99,
        imageUrl: 'assets/images/ssd.jpeg',
      ),
      Product(
        name: 'Smart Light Bulb',
        description:
            'Wi-Fi smart light bulb with voice control and adjustable brightness.',
        price: 29.99,
        imageUrl: 'assets/images/smart_light.jpg',
      ),
      Product(
        name: 'Camera Gimbal',
        description:
            '3-axis camera gimbal stabilizer for smooth video recording.',
        price: 249.99,
        imageUrl: 'assets/images/camera_gimbal.jpg',
      ),
    ];
    return GridView.builder(
        itemCount: productsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          var product = productsList[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridTile(
              footer: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: CustomText(
                  text: product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              header: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: CustomText(text: product.name),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  height: 100,
                  width: 100,
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
