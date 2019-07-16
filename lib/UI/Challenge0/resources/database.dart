import 'package:flutter_ui_challenge/UI/Challenge0/models/payment_card.dart';

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
