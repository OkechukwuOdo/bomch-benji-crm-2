
import 'package:flutter/material.dart';

class UsersRaiewAndRating extends StatelessWidget {
  const UsersRaiewAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image/lady.png")),
              shape: BoxShape.circle, ),
              child: const Center(
                // child: Image.asset("assets/images/Rectangle 1532.png"),
              ),
        ),
        
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: const Color(0XFFF2F2F2 ),
                borderRadius: BorderRadius.circular(20)),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("May 22nd 2024"),
                          const SizedBox(height: 8,),
                        const Text("Tariq Flen"),
                          const SizedBox(height: 4,),
                        Row(
                          children: List.generate(5, (index)=>const Icon(Icons.star_rate_rounded,color: Colors.amber,)),
                        )
                       
                      ],
                    ), 
                    const Spacer(),
                    const Text("Reply"),
          
                    ],
                ),
                const SizedBox(height: 16,),
                 const Text(
                   "This Food so tasty & delicious. Breakfast so fast Delivered in my place. Chef is very friendly. I’m really like chef for Home Food Order. Thanks. "),
              ],
            ),
          ),
        )
      ],
    );
  }
}
