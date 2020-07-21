class Model{
  String name,profile,post;
  List<Comment> comment = [];
  bool like;
  Model({this.name,this.profile,this.post,this.comment,this.like});
}

class Comment{
  String name,profile,comment;
  bool like;
  Comment({this.name,this.profile,this.comment,this.like});
}

List<Model> posts = [
  Model(
    name: "Erthugrul Alb",
    profile: "assets/profile.jpg",
    post:"assets/urth.jpg",
    like: false,
    comment: [
      Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        ),
        Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        )
    ]
  ),
  Model(
    name: "Erthugrul Alb",
    profile: "assets/profile.jpg",
    post:"assets/urth.jpg",
    like: false,
    comment: [
      Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        ),
        Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        )
    ]
  ),
  Model(
    name: "Erthugrul Alb",
    profile: "assets/profile.jpg",
    post:"assets/urth.jpg",
    like: false,
    comment: [
      Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        ),
        Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        )
    ]
  ),
  Model(
    name: "Erthugrul Alb",
    profile: "assets/profile.jpg",
    post:"assets/urth.jpg",
    like: false,
    comment: [
      Comment(
        comment: "nice picture! nice picture! nice picture! nice picture! nice picture! nice picture! nice picture! nice picture! nice picture! nice picture! nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        ),
        Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        )
    ]
  ),
  Model(
    name: "Erthugrul Alb",
    profile: "assets/profile.jpg",
    post:"assets/urth.jpg",
    like: false,
    comment: [
      Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        ),
        Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        )
    ]
  ),
  Model(
    name: "Erthugrul Alb",
    profile: "assets/profile.jpg",
    post:"assets/urth.jpg",
    like: false,
    comment: [
      Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        ),
        Comment(
        comment: "nice picture!",
        name: "moha",
        profile: "assets/profile.jpg",
        like: false
        )
    ]
  ),
];