import 'package:asadelic_social_app2/model/comment.dart';
import 'package:asadelic_social_app2/model/like_acc.dart';
import 'package:asadelic_social_app2/model/story.dart';

class Feed {
  String name;
  String clock;
  String imageAsset;
  String paragraph;
  String content;
  int likes;
  String comment;
  List<LikeAcc> likedBy;
  List<Comment> commentedBy;

  Feed({
    required this.name,
    required this.clock,
    required this.imageAsset,
    required this.paragraph,
    required this.content,
    required this.likes,
    required this.comment,
    required this.likedBy,
    required this.commentedBy,
  });
}

var feedList = [
  Feed(
    name: 'Asadel',
    clock: '10.37 am',
    imageAsset: 'images/asadel.png',
    paragraph: 'Menyambut harapan baru dengan keindahan matahari terbit.',
    content: 'images/content1.jpg',
    likes: 547,
    comment: '379',
    likedBy: [
      LikeAcc(imageAsset: 'images/marcel.png', isActive: true),
      LikeAcc(imageAsset: 'images/ridho.png', isActive: false),
      LikeAcc(imageAsset: 'images/farhan.png', isActive: true),
      LikeAcc(imageAsset: 'images/saif.png', isActive: false),
      LikeAcc(imageAsset: 'images/zhafran.png', isActive: true),
      LikeAcc(imageAsset: 'images/asadel2.png', isActive: false),
    ],
    commentedBy: [
      Comment(
        comment: 'Matahari terbit yang cantik! Terus berkarya!',
        time: '11.00 am',
        like: 3,
        reply: 'reply',
        isLike: false,
        account: storyList[3], // Saif
      ),
      Comment(
        comment: 'Indah sekali! Saya suka saat matahari terbit seperti ini.',
        time: '10.45 am',
        like: 10,
        reply: 'reply',
        isLike: false,
        account: storyList[0], // Farhan
      ),
      Comment(
        comment: 'Gambar yang luar biasa, menggugah semangat!',
        time: '11.10 am',
        like: 6,
        reply: 'reply',
        isLike: false,
        account: storyList[4], // Zhafran
      ),
      Comment(
        comment: 'Memukau! Energi positif untuk memulai hari.',
        time: '10.50 am',
        like: 5,
        reply: 'reply',
        isLike: false,
        account: storyList[1], // Marcel
      ),
      Comment(
        comment: 'Sangat inspiratif, Asadel! Semoga harimu menyenangkan.',
        time: '10.55 am',
        like: 7,
        reply: 'reply',
        isLike: false,
        account: storyList[2], // Ridho
      ),
      Comment(
        comment: 'Luar biasa, semangat terus Asadel!',
        time: '11.15 am',
        like: 2,
        reply: 'reply',
        isLike: false,
        account: storyList[3], // Saif
      ),
      Comment(
        comment: 'Wah, sejuk sekali! Membuatku ingin berwisata ke pantai.',
        time: '11.20 am',
        like: 4,
        reply: 'reply',
        isLike: false,
        account: storyList[4], // Zhafran
      ),
      Comment(
        comment: 'Cahaya pagi selalu memberi harapan baru!',
        time: '11.25 am',
        like: 5,
        reply: 'reply',
        isLike: false,
        account: storyList[1], // Marcel
      ),
      Comment(
        comment: 'Foto yang sangat menarik! Terus berkarya!',
        time: '11.30 am',
        like: 3,
        reply: 'reply',
        isLike: false,
        account: storyList[0], // Farhan
      ),
      Comment(
        comment: 'Bagus banget! Semoga harimu menyenangkan.',
        time: '11.35 am',
        like: 4,
        reply: 'reply',
        isLike: false,
        account: storyList[2], // Ridho
      ),
    ],
  ),
  Feed(
    name: 'Asadel',
    clock: '13.28 pm',
    imageAsset: 'images/asadel.png',
    paragraph: 'Bersantai di tengah pasir putih, melupakan kesibukan.',
    content: 'images/content3.jpg',
    likes: 747,
    comment: '673',
    likedBy: [
      LikeAcc(imageAsset: 'images/ridho.png', isActive: true),
      LikeAcc(imageAsset: 'images/farhan.png', isActive: false),
      LikeAcc(imageAsset: 'images/saif.png', isActive: true),
      LikeAcc(imageAsset: 'images/marcel.png', isActive: false),
      LikeAcc(imageAsset: 'images/asadel2.png', isActive: true),
      LikeAcc(imageAsset: 'images/zhafran.png', isActive: false),
    ],
    commentedBy: [
      Comment(
        comment: 'Sangat menginspirasi! Kapan kita bisa ke sini?',
        time: '13.45 pm',
        like: 15,
        reply: 'reply',
        isLike: false,
        account: storyList[0], // Farhan
      ),
      Comment(
        comment: 'Wah, sepertinya sangat menyenangkan! Enak sekali.',
        time: '13.50 pm',
        like: 10,
        reply: 'reply',
        isLike: false,
        account: storyList[3], // Saif
      ),
      Comment(
        comment: 'Bersantai di pantai adalah cara terbaik menghilangkan stres!',
        time: '13.55 pm',
        like: 12,
        reply: 'reply',
        isLike: false,
        account: storyList[4], // Zhafran
      ),
      Comment(
        comment: 'Momen yang sangat tenang. Suka sekali!',
        time: '14.00 pm',
        like: 8,
        reply: 'reply',
        isLike: false,
        account: storyList[1], // Marcel
      ),
      Comment(
        comment: 'Pasir putih dan laut biru, kombinasi yang sempurna!',
        time: '14.05 pm',
        like: 6,
        reply: 'reply',
        isLike: false,
        account: storyList[2], // Ridho
      ),
      Comment(
        comment: 'Ceritakan lebih banyak tentang pengalamanmu di sini!',
        time: '14.10 pm',
        like: 5,
        reply: 'reply',
        isLike: false,
        account: storyList[0], // Farhan
      ),
      Comment(
        comment:
            'Sangat rindu suasana seperti ini. Semoga bisa ke pantai segera!',
        time: '14.15 pm',
        like: 7,
        reply: 'reply',
        isLike: false,
        account: storyList[3], // Saif
      ),
      Comment(
        comment: 'Bersantai di tengah pasir putih, suara ombak... sempurna!',
        time: '14.20 pm',
        like: 9,
        reply: 'reply',
        isLike: false,
        account: storyList[4], // Zhafran
      ),
      Comment(
        comment: 'Keindahan yang luar biasa! Tetaplah menikmati waktu!',
        time: '14.25 pm',
        like: 11,
        reply: 'reply',
        isLike: false,
        account: storyList[2], // Ridho
      ),
      Comment(
        comment: 'Saya suka foto ini! Membuatku merasa ingin berlibur.',
        time: '14.30 pm',
        like: 4,
        reply: 'reply',
        isLike: false,
        account: storyList[1], // Marcel
      ),
    ],
  ),
  Feed(
    name: 'Asadel',
    clock: '14.23 pm',
    imageAsset: 'images/asadel.png',
    paragraph: 'Menelusuri hutan rimba, merasakan ketenangan alam.',
    content: 'images/content2.jpg',
    likes: 348,
    comment: '328',
    likedBy: [
      LikeAcc(imageAsset: 'images/farhan.png', isActive: true),
      LikeAcc(imageAsset: 'images/saif.png', isActive: true),
      LikeAcc(imageAsset: 'images/marcel.png', isActive: false),
      LikeAcc(imageAsset: 'images/zhafran.png', isActive: true),
      LikeAcc(imageAsset: 'images/ridho.png', isActive: false),
      LikeAcc(imageAsset: 'images/asadel2.png', isActive: true),
    ],
    commentedBy: [
      Comment(
        comment: 'Suasana yang tenang sekali! Saya ingin ke sana!',
        time: '14.40 pm',
        like: 12,
        reply: 'reply',
        isLike: false,
        account: storyList[1], // Marcel
      ),
      Comment(
        comment:
            'Menakjubkan! Alam selalu memiliki cara untuk menenangkan jiwa.',
        time: '14.45 pm',
        like: 8,
        reply: 'reply',
        isLike: false,
        account: storyList[3], // Saif
      ),
      Comment(
        comment: 'Bersyukur bisa merasakan keindahan alam seperti ini.',
        time: '14.50 pm',
        like: 10,
        reply: 'reply',
        isLike: false,
        account: storyList[4], // Zhafran
      ),
      Comment(
        comment: 'Hutan rimba memang luar biasa, bikin betah berlama-lama.',
        time: '14.55 pm',
        like: 15,
        reply: 'reply',
        isLike: false,
        account: storyList[0], // Farhan
      ),
      Comment(
        comment: 'Kembali ke alam adalah terapi terbaik! Lanjutkan menjelajah!',
        time: '15.00 pm',
        like: 6,
        reply: 'reply',
        isLike: false,
        account: storyList[2], // Ridho
      ),
      Comment(
        comment:
            'Foto yang indah! Sepertinya hutan ini menyimpan banyak cerita.',
        time: '15.05 pm',
        like: 9,
        reply: 'reply',
        isLike: false,
        account: storyList[3], // Saif
      ),
      Comment(
        comment: 'Harus banget ada adventure ke sini! Terlihat seru!',
        time: '15.10 pm',
        like: 7,
        reply: 'reply',
        isLike: false,
        account: storyList[1], // Marcel
      ),
      Comment(
        comment: 'Banyak pepohonan hijau, keren banget! Sehat untuk pikiran.',
        time: '15.15 pm',
        like: 5,
        reply: 'reply',
        isLike: false,
        account: storyList[4], // Zhafran
      ),
      Comment(
        comment: 'Cinta dengan alam dan semua keindahan yang ditawarkannya!',
        time: '15.20 pm',
        like: 11,
        reply: 'reply',
        isLike: false,
        account: storyList[2], // Ridho
      ),
      Comment(
        comment: 'Seru sekali! Jangan lupa ceritakan pengalamanmu di sini.',
        time: '15.25 pm',
        like: 4,
        reply: 'reply',
        isLike: false,
        account: storyList[0], // Farhan
      ),
    ],
  ),
];
