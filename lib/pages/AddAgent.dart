import 'package:flutter/material.dart';

class AddAgent extends StatefulWidget {
  const AddAgent({super.key});

  @override
  State<AddAgent> createState() => _AddAgentState();
}

class _AddAgentState extends State<AddAgent> {

  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _role = '' ;
  int _kda = 0 ;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.redAccent,
     ),
     body: Container(
       margin: EdgeInsets.all(20),
       child: Form(
         key: _formKey,
         child: Column(
           children: [
             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
                 child: Text('Add Agent Stats',
                 style: TextStyle(
                   fontSize:25,
                   color: Colors.redAccent,
                   fontWeight: FontWeight.bold
                 ),),
             ),

             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
             ),
             TextFormField(
               decoration: InputDecoration(
                 labelText: 'Agent Name',
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.redAccent),
                   borderRadius: BorderRadius.circular(10)
                 )
               ),
               validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'Name is Missing!';
                 }
                 return null;
               },
             ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
             ),
             TextFormField(
               decoration: InputDecoration(
                   labelText: 'Role',
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                   ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.redAccent)
                 )
               ),
               validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'Role is Missing!';
                 }
                 return null;
               },
             ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
             ),
             TextFormField(
               decoration: InputDecoration(
                   labelText: 'K-D-A',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Colors.redAccent)
                   )
               ),
               validator: (value) {
                 if (value == null || value.isEmpty) {
                   return 'KDA is Missing!';
                 }
                 return null;
               },
             ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   FilledButton(
                     onPressed: (){
                       if(_formKey.currentState!.validate()){
                         print('The form is validated');
                       }

                     },
                     child: Text('Add Agent Stats'),
                     style: FilledButton.styleFrom(
                       backgroundColor: Colors.redAccent,

                     ),


                   )
                 ],
               ),
             )


           ],
         ),
       ),
     ),
   );
  }
}
