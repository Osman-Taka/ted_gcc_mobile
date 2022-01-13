import '../models/article_model.dart';
import '../models/article_content.dart';

class Articles{
  static List<ArticleModel> FetchAll(){
    return [
      ArticleModel(
          "What is the UN doing for Human Rights",
          "https://www.un.org/development/desa/indigenouspeoples/wp-content/uploads/sites/19/2016/11/United-Nations-Human-Rights-Commission-LOGO.jpg",
          <ArticleContent> [
            ArticleContent("Ulaş Kuşçu", "text here."),
          ]
      ),
      ArticleModel(
          "The Effects of the Lack of Citizenship in Bangladesh",
          "https://im-media.voltron.voanews.com/Drupal/01live-166/styles/sourced/s3/2020-12/AP20338335728231.jpg?itok=Hr8r12zJ",
          <ArticleContent> [
            ArticleContent("Zeynep Rana Yavuz", "Article here"),
          ]
      ),
      ArticleModel(
          "What Is Citizenship ?",
          "https://images2.minutemediacdn.com/image/upload/c_crop,h_1125,w_2000,x_0,y_349/v1554993859/shape/mentalfloss/518685-istock-514930514.jpg?itok=qoapx9En",
          <ArticleContent> [
            ArticleContent("Greta Gilbertson", "Citizenship is a multidimensional concept that means membership in a specific nation-state and the formal rights and obligations that this membership entails. Citizenship can also be understood as a status and an identity. The principle premise of citizenship is that nation-states can set and control the parameters of membership."),

          ]
      )
    ];
  }
}