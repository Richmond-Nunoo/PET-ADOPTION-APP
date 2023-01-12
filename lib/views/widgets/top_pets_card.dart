import 'package:flutter/material.dart';
import 'like_animation.dart';

class TopPetsCard extends StatefulWidget {
  final String petName, petBreed, year, imageUrl;
  final int iD;
  final List likes;
  const TopPetsCard(
      {super.key,
      required this.petName,
      required this.petBreed,
      required this.year,
      required this.imageUrl,
      required this.iD,
      required this.likes});

  @override
  State<TopPetsCard> createState() => _TopPetsCardState();
}

class _TopPetsCardState extends State<TopPetsCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          height: 190,
          width: 210,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        widget.petName,
                        style: theme.bodyMedium,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "${widget.year} YRS",
                          style: theme.bodySmall!.copyWith(color: Colors.red),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        widget.petBreed,
                        style: theme.bodySmall,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 130,
            width: 190,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageUrl), fit: BoxFit.fill),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        Positioned(
          top: 18,
          right: 18,
          child: LikeAnimation(
            isAnimating: widget.likes.contains(widget.iD),
            smallLike: true,
            child: InkWell(
              onTap: () {
                setState(() {});

                if (widget.likes.contains(widget.iD)) {
                  widget.likes.remove(widget.iD);
                } else {
                  widget.likes.add(widget.iD);
                }
              },
              child: CircleAvatar(
                radius: 18,
                backgroundColor: widget.likes.contains(widget.iD)
                    ? Colors.purple
                    : Colors.white,
                child: widget.likes.contains(widget.iD)
                    ? const Icon(
                        Icons.favorite_sharp,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.purple,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
