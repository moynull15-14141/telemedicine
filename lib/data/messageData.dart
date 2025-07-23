import 'package:tlmdcin/model/messageModel.dart';

List<Messagemodel> dummyMessages = [
  Messagemodel(
    text: "Hello Doctor, আমার বেশ কিছুদিন ধরে দাঁতে ব্যথা করছে।",
    senderId: "me", // আমি পাঠিয়েছি
    time: "10:20 AM",
  ),
  Messagemodel(
    text: "Hello, আপনার সমস্যাটি বিস্তারিত বলুন। কোন দাঁতে ব্যথা করছে?",
    senderId: "doctor", // ডাক্তার পাঠিয়েছেন
    time: "10:21 AM",
  ),
  Messagemodel(
    text: "আমার মাড়ির শেষের দিকের দাঁতে। মাঝে মাঝে খুব ব্যথা হয়।",
    senderId: "me",
    time: "10:22 AM",
  ),
  Messagemodel(
    text: "আচ্ছা, ঠাণ্ডা বা গরম কিছু খেলে কি ব্যথা বাড়ে?",
    senderId: "doctor",
    time: "10:23 AM",
  ),
  Messagemodel(
    text: "জি, ঠাণ্ডা পানি খেলে ব্যথাটা বেড়ে যায়।",
    senderId: "me",
    time: "10:25 AM",
  ),
  Messagemodel(
    text:
        "প্রাথমিকভাবে মনে হচ্ছে আপনার দাঁতে ক্যাভিটি হতে পারে। আপনার একটি অ্যাপয়েন্টমেন্ট নেওয়া প্রয়োজন।",
    senderId: "doctor",
    time: "10:26 AM",
  ),
];
