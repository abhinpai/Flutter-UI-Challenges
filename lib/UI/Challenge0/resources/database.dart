import 'package:flutter_ui_challenge/UI/Challenge0/models/payment.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/payment_card.dart';
import 'package:flutter_ui_challenge/UI/Challenge0/models/user.dart';

List<PaymentCard> getCards() {
  List<PaymentCard> cards = [];
  cards.add(PaymentCard(
      "4616900007729988",
      "https://resources.mynewsdesk.com/image/upload/ojf8ed4taaxccncp6pcp.png",
      "Abhin Pai",
      "06/23",
      "192"));
  cards.add(PaymentCard(
      "3015788947523652",
      "https://resources.mynewsdesk.com/image/upload/ojf8ed4taaxccncp6pcp.png",
      "Arjun Pai",
      "04/25",
      "217"));
  return cards;
}

List<User> getUsers() {
  List<User> users = [];
  users.add(User("Abhin Pai",
      "https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Batman-512.png"));
  users.add(User("Sunder Pichai",
      "https://www.thefamouspeople.com/profiles/images/sundar-pichai-5.jpg"));
  users.add(User("Arjun Pai",
      "https://cdn2.iconfinder.com/data/icons/ballicons-2-vol-2/100/caps_shield-512.png"));
  return users;
}


List<Payment> getPayments() {
    
    List<Payment> payments=[];
    payments.add(Payment("https://www.iosicongallery.com/icons/netflix-2018-11-01/512.png", "Netflix", "Entertainment", "12 Mar 2019", 400.0, -1));
    payments.add(Payment("https://seeklogo.com/images/C/Coca-Cola-logo-108E6559A3-seeklogo.com.png", "Coca Cola", "Food and Snacks", "12 Mar 2019", 175.0, -1));
    payments.add(Payment("https://cdn-images-1.medium.com/fit/c/200/200/1*n8a5ynNw0XqBlgwugpFrtg.png", "Swiggy", "Food and Snacks", "12 Mar 2019", 368.0, -1));
    payments.add(Payment("https://i.pinimg.com/originals/f7/64/15/f76415d3d9779400d610a0f089f551e5.jpg", "Coursera", "Swiggy", "12 Mar 2019", 250.0, -1));
    return payments;
}

