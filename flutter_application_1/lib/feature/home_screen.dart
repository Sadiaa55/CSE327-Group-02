import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/route/app_route_name.dart';
import 'package:flutter_application_1/feature/home/presentation/widget/banner_widget.dart';
import 'package:flutter_application_1/feature/genre_setting/category_widget.dart';
import 'package:flutter_application_1/feature/home/presentation/widget/now_playing_movie_widget.dart';
import 'package:flutter_application_1/feature/home/presentation/widget/section_title_widget.dart';
import 'package:flutter_application_1/feature/home/presentation/widget/upcoming_movie_widget.dart';
import 'package:flutter_application_1/feature/home/presentation/widget/customer_support_widget.dart'; 
import 'package:flutter_application_1/feature/home/presentation/widget/Search_widget.dart';
import 'package:flutter_application_1/feature/home/presentation/widget/vip_seat_booking_widget.dart';
import 'package:flutter_application_1/feature/ticket_refund/refund_widget.dart';  // Import the new widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chayachobi'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, AppRouteName.wishlist);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Welcome to Chayachobi",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Book your favorite Movie here!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: BannerWidget(),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SectionTitleWidget(title: "Category"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: CategoryWidget(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SectionTitleWidget(title: "Now Playing"),
            ),
            const SizedBox(height: 16),
            const NowPlayingMovieWidget(),

            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SectionTitleWidget(title: "Ticket Refund"),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Align(
                      child: ElevatedButton(
                         onPressed: () {
                          Navigator.pushNamed(context, AppRouteName.refund);
                         },
                         child: const Text("Go to Refund Page"),
                         ),
                      
              ),
              
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SectionTitleWidget(title: "Upcoming"),
            ),
            
            const SizedBox(height: 16),
            const SearchWidget(),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SectionTitleWidget(title: "Search"),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SectionTitleWidget(title: "VIP Seat Booking"),
      ),
            const SizedBox(height: 16),
            const VipSeatBookingWidget(),

            const SizedBox(height: 16),
            const UpcomingMovieWidget(),
            const SizedBox(height: 16),
            const CustomerSupportWidget(), // Add the new widget here


          ],
        ),
      ),
    );
  }
}
