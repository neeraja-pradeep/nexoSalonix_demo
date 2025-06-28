import 'package:flutter/material.dart';
import 'package:salonix/consts.dart';

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.55;
    final imageSize = cardWidth;
    final cardHeight = cardWidth + screenWidth * 0.17;
    final spacing = screenWidth * 0.04;
    final smallPadding = screenWidth * 0.02;

    return SizedBox(
      height: cardHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.09),
          child: SizedBox(
            width: cardWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image(
                        image: AssetImage('assets/saloon.png'),
                        height: imageSize,
                        width: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: smallPadding*1.5,
                      right: smallPadding*2.5,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: smallPadding,
                          vertical: smallPadding/2 ,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3F72AF),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          "1.2km",
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                color: Colors.white,
                                fontSize: Responsive.fontSize(context, 0.08),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: spacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shop Name",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: Responsive.fontSize(context, 0.111),
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: smallPadding*2),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: Responsive.fontSize(context, 0.111),
                          ),
                          Text(
                            "4.5",
                            style:
                                Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      fontSize:
                                          Responsive.fontSize(context, 0.08),
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              
                Text(
                  "Address",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: Responsive.fontSize(context, 0.09),
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


