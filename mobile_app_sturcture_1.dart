import '../models/location_fact.dart';
import '../models/location.dart';

class MockLocation{
  static List<Location> FetchAll(){
    return [
      Location(
          "What is the UN doing for Human Rights",
          "https://www.un.org/development/desa/indigenouspeoples/wp-content/uploads/sites/19/2016/11/United-Nations-Human-Rights-Commission-LOGO.jpg",
          <LocationFact> [
            LocationFact("Ulaş Kuşçu", "text here."),
          ]
      ),
      Location(
          "The Effects of the Lack of Citizenship in Bangladesh",
          "https://im-media.voltron.voanews.com/Drupal/01live-166/styles/sourced/s3/2020-12/AP20338335728231.jpg?itok=Hr8r12zJ",
          <LocationFact> [
            LocationFact("Zeynep Rana Yavuz", "Article here"),
          ]
      ),
      Location(
          "What Is Citizenship ?",
          "https://images2.minutemediacdn.com/image/upload/c_crop,h_1125,w_2000,x_0,y_349/v1554993859/shape/mentalfloss/518685-istock-514930514.jpg?itok=qoapx9En",
          <LocationFact> [
            LocationFact("Greta Gilbertson", "Citizenship is a multidimensional concept that means membership in a specific nation-state and the formal rights and obligations that this membership entails. Citizenship can also be understood as a status and an identity. The principle premise of citizenship is that nation-states can set and control the parameters of membership."),
           
          ]
      ),
      Location(
          "Who is a World Citizen ?",
           "https://www.kosmosjournal.org/wp-content/uploads/2018/12/connect-1024x512.png",
            <LocationFact> [
            LocationFact("While it may mean different things to different people, the most common definition of a citizen of the world is the idea that all people have responsibilities to the world rather than just their country and immediate community.Global citizens are curious about human cultures, the environment and economics, and how they all connect with each other. They have a desire to contribute to communities and the world at large in a positive way in order to improve the lives of others."),
           
          ]
      ),  
      Location(
          "What is Racism ?",
          "https://pailondon.org.uk/wp-content/uploads/2020/09/dafddaec-2780-496c-954d-88091dfb204f.png",
          <LocationFact> [
            LocationFact("Anup Shah", "Racism is the belief that characteristics and abilities can be attributed to people simply on the basis of their race and that some racial groups are superior to others. Racism and discrimination have been used as powerful weapons encouraging fear or hatred of others in times of conflict and war, and even during economic downturns."),
          ]

      ),


    ];
  }
  static Location FetchAny(){
    return (FetchAll()..shuffle())[0];
  }
}
