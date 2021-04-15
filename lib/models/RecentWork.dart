class RecentWork {
  final String image, category, title;
  final int id;
  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "ApParty",
    category: "Desing UI/UX",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "Programador Iniciante",
    category: "Mobile Flutter App",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "Gasto Semanal",
    category: "Mobile Flutter App",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "Luigi Gontijo Portifolio",
    category: "Javascript Portifolio Website",
    image: "assets/images/work_4.png",
  ),
];
