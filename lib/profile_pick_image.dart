import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


File ?selectedImage;

class PickImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading : IconButton(
            onPressed: () {  },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.edit_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          pickImageFunc();
                        } ,
                        child: CircleAvatar(
                          radius: 62.0,
                          child: ClipOval(
                            child: selectedImage==null?
                              const Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8buhkcsawXn5N6pYtHacXLt5lc7NhIZwfrQ&usqp=CAU'
                              ),
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ) :Image.file(
                              selectedImage!,
                              fit: BoxFit.fill,
                              height: 120,
                              width: 120,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${textMap['name']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${textMap['job']}',
                            style: const TextStyle(
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            rows[0]['icon'],
                          //  Icons.phone,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[0]['text']}',
                            style: const TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            rows[1]['icon'],
                            //  Icons.phone,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[1]['text']}',
                            style: const TextStyle(
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   Divider(
                    thickness: 3,
                    color: Colors.grey[300],
                  ) ,
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${textMap['140']}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${textMap['wallet']}',
                            style: const TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${textMap['12']}',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${textMap['order']}',
                            style: const TextStyle(
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15
                 ),
                   Divider(
                    thickness: 3,
                    color: Colors.grey[300],
                  ) ,
                  const SizedBox(
                      height: 10
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            rows[2]['icon'] ,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[2]['text']}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(
                            rows[3]['icon'] ,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[3]['text']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(
                            rows[4]['icon'] ,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[4]['text']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(
                            rows[5]['icon'] ,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[5]['text']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(
                            rows[6]['icon'] ,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[6]['text']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Icon(
                            rows[7]['icon'] ,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${rows[7]['text']}',
                            style: const TextStyle(
                              color: Colors.red,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),

//                  Column(
//                    children: [
//                      ...List.generate(rows.length, (index) => Row(
//                        children: [
//                          Icon(rows[index]['icon']),
//                          const SizedBox(
//                            width: 20,
//                          ),
//                          Text(
//                            '${rows[index]['text']}'
//                          ),
//                        ],
//                      ),
//                      ),
//                    ],
//                  )
                ],
              ),
            )
        )
    );
  }

  Map textMap  =
  {'name' : 'Ehab Sherif' ,
    'job' : 'Fashion Model' ,
    '140':'\$140.00',
    'wallet':'Wallet',
    '12':'12',
    'order':'Orders',
  };

  List rows=[
    {
      'icon' : Icons.phone ,
      'text' : '(581)-307-6902',
    },
    {
      'icon' : Icons.email_outlined ,
      'text' : 'ehab_sherif@gmail.com',
    },
    {
      'icon' : Icons.favorite_border ,
      'text' : 'Your Favourites',
    },
    {
      'icon' : Icons.payments ,
      'text' : 'Payment',
    },
    {
      'icon' : Icons.people_rounded,
      'text' : 'Tell Your Friends',
    },
    {
      'icon' : Icons.label_important_outline,
      'text' : 'Promotion',
    },
    {
      'icon' : Icons.settings ,
      'text' : 'Settings',
    },
    {
      'icon' : Icons.logout ,
      'text' : 'Log Out',
    },
  ];

//
//  pickImage() async {
//    //real device //network(thread)
//
//    final ImagePicker imagePicker = ImagePicker(); //obj
//    // ignore: deprecated_member_use
//    final image = await imagePicker.pickImage(source: ImageSource.gallery);
//    if (image == null) return;
//    selectedImage = File(image.path);
//    print(selectedImage);
  pickImageFunc()async{
    //await ImagePicker().getImage(source: source)
       final image1= await ImagePicker().pickImage(source: ImageSource.gallery);//
    selectedImage=File(image1!.path);
  }
}






