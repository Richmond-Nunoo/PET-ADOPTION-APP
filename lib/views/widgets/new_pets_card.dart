import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/widgets/like_animation.dart';

class NewPetsCard extends StatefulWidget {
  final String petName, petBreed, year, imageUrl;
  final int iD;
  final List likes;
  const NewPetsCard(
      {super.key,
      required this.petName,
      required this.petBreed,
      required this.year,
      required this.imageUrl,
      required this.iD,
      required this.likes});

  @override
  State<NewPetsCard> createState() => _NewPetsCardState();
}

class _NewPetsCardState extends State<NewPetsCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          height: 140,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imageUrl), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.petName,
                    style: theme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 120,
                    child: Text(
                      widget.petBreed,
                      style: theme.bodySmall,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
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
              const Spacer(),
              LikeAnimation(
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
            ],
          ),
        ),
      ],
    );
  }
}
