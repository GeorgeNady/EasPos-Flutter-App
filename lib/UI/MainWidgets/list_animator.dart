import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimator extends StatefulWidget {
  final List<Widget> data;
  final int duration;
  final double verticalOffset;
  final double horizontalOffset;

  const ListAnimator({
    Key key,
    this.data,
    this.duration,
    this.verticalOffset, this.horizontalOffset,
  }) : super(key: key);

  @override
  _ListAnimatorState createState() => _ListAnimatorState();
}

class _ListAnimatorState extends State<ListAnimator> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.data.length,
        itemBuilder: (_, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            delay: Duration(milliseconds: widget.duration ??50),
            child: SlideAnimation(
              duration: Duration(milliseconds:  400),
              verticalOffset: widget.verticalOffset ?? 50.0,
              child: FadeInAnimation(
                child: widget.data[index],
              ),
            ),
          );
        },
      ),
    );
  }
}