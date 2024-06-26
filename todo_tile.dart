import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
   super.key, 
   required this.taskName,
   required this.taskCompleted,
   required this.onChanged,
   required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right:25.0,top:25.0,), // under to do words
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),

            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration( // color of boxes
            color: Colors.yellow[600],
            borderRadius: BorderRadius.circular(12),
            ),
          child: Row(
            children: [
              //checkbox
        
              //stopping point <--------------------  14:46
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.blue[700],
                ),
        
        
        
              // task name
              Text(
                taskName,
                style: TextStyle(
                fontSize: 18,
                decoration: taskCompleted ? 
                TextDecoration.lineThrough : 
                TextDecoration.none
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

