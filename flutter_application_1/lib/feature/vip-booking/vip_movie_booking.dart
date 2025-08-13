import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_color.dart';

class VIPSeatBookingScreen extends StatefulWidget {
  const VIPSeatBookingScreen({super.key});

  @override
  State<VIPSeatBookingScreen> createState() => _VIPSeatBookingScreenState();
}

class _VIPSeatBookingScreenState extends State<VIPSeatBookingScreen> {
  // Using ValueNotifier to track selected seats
  final selectedSeats = ValueNotifier<List<String>>([]);

  // Determine if a seat is VIP
  bool isVipSeat(String seatNumber) {
    final row = seatNumber[0];
    final col = int.tryParse(seatNumber.substring(1)) ?? 0;
    return (row == 'C' || row == 'D') && col >= 3 && col <= 6;
  }

  // Calculate total price based on seat types
  int calculateTotalPrice(List<String> seats) {
    int total = 0;
    for (var seat in seats) {
      total += isVipSeat(seat) ? 600 : 400;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VIP Seat Booking'),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text('Select Seats', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          Expanded(
            child: ValueListenableBuilder<List<String>>(
              valueListenable: selectedSeats,
              builder: (context, value, _) {
                return Column(
                  children: [
                    for (int i = 1; i <= 6; i++) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int j = 1; j <= 8; j++) ...[
                            String seatNumber = "${String.fromCharCode(i + 64)}$j";
                            SeatWidget(
                              seatNumber: seatNumber,
                              isSelected: value.contains(seatNumber),
                              isVip: isVipSeat(seatNumber),
                              onTap: () {
                                if (value.contains(seatNumber)) {
                                  selectedSeats.value = List.from(value)..remove(seatNumber);
                                } else {
                                  selectedSeats.value = List.from(value)..add(seatNumber);
                                }
                              },
                            ),
                          ]
                        ],
                      ),
                      const SizedBox(height: 8),
                    ]
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ValueListenableBuilder<List<String>>(
              valueListenable: selectedSeats,
              builder: (context, value, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: ৳${calculateTotalPrice(value)}',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ElevatedButton(
                      onPressed: value.isEmpty
                          ? null
                          : () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Booked seats: ${value.join(', ')}'),
                                ),
                              );
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text('Book Now'),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Reusable SeatWidget following your modular style
class SeatWidget extends StatelessWidget {
  final String seatNumber;
  final bool isSelected;
  final bool isVip;
  final VoidCallback onTap;

  const SeatWidget({
    super.key,
    required this.seatNumber,
    required this.isSelected,
    this.isVip = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColor.primaryColor
              : isVip
                  ? Colors.orange
                  : Colors.green,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          seatNumber,
          style: const TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
