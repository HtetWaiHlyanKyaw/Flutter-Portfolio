import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

class AppStrings {
  AppStrings._();

  static const String about = '''
I am a high school graduate from Myanmar with a strong ambition to grow academically and professionally. My interests span technology, software development, art, and education, shaped through hands-on projects, drawing and tutoring experiences.

I have a solid foundation in Java, Dart, PHP, and SQL, with practical experience in Flutter for mobile development and Laravel for web development. I am familiar with MySQL, Firebase Firestore, and Git, and I apply UI/UX design skills using Figma to build intuitive digital experiences.

Outside academics, I am a personal tutor, mentoring in IGCSE subjects and English, and I am an award-winning pencil portrait artist, delivering artworks nationwide. These experiences enhance my creativity, communication, and problem-solving skills.

Looking ahead, I aim to become a versatile developer and innovator, creating applications that improve everyday life, bridge technology and human needs, and remain accessible, sustainable, and meaningful to communities.''';

  static const String unitySourceDesc =
      'An e-commerce website with an admin dashboard, offering rich features, built with a team during my 3-month internship at Unity Source.';
  static const String unitySourceLink =
      'https://www.github.com/HtetWaiHlyanKyaw/e-commerce-mini';

  static const String wordleDesc =
      'Fun and educational wordle game with features like hints and high scores. Settings customization is also provided for personalized experience.';
  static const String wordleLink =
      'https://www.github.com/HtetWaiHlyanKyaw/flutter-wordle';

  static const String expentrixDesc =
      'Offline expense tracker for everyday use. This app offers features like monitoring expense details and totals by date, category and more.';
  static const String expentrixLink =
      'https://www.github.com/HtetWaiHlyanKyaw/Expentrix';

  static const String growthSproutDesc =
      'An online learning platform with free and affordable courses tailered for all professions with video-based self-paced learning experiences.';
  static const String growthSproutLink =
      'https://www.github.com/HtetWaiHlyanKyaw/Growth-Sprout';
}

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(color: AppColors.darkGray, fontSize: 14, height: 1.6),
        children: [
          const TextSpan(
            text: "I am a ",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          TextSpan(
            text: "high school graduate",
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              height: 28 / 16,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(
            text:
                " from Myanmar with a strong ambition to grow academically and professionally. My interests span technology, software development, art, and education, shaped through hands-on projects, drawing and tutoring experiences.\n\n",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          const TextSpan(
            text:
                "I have a solid foundation in Java, Dart, PHP, and SQL, with practical experience in ",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          TextSpan(
            text: "mobile development",
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              height: 28 / 16,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(
            text: " using Flutter and ",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          TextSpan(
            text: "web development",
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              height: 28 / 16,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(
            text:
                " using Laravel. I am familiar with MySQL, Firebase Firestore, and Git, and I apply UI/UX design skills using Figma to build intuitive digital experiences.\n\n",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          const TextSpan(
            text: "Outside academics, I am a ",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          TextSpan(
            text: "personal tutor",
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              height: 28 / 16,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(
            text: ", teaching IGCSE subjects and English, and I am an ",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          TextSpan(
            text: "award-winning pencil artist",
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 16,
              height: 28 / 16,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(
            text:
                ", delivering artworks nationwide. These experiences enhance my creativity, communication, and problem-solving skills.\n\n",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
          const TextSpan(
            text:
                "Looking ahead, I aim to become a versatile developer and innovator, creating applications that improve everyday life, bridge technology and human needs, and remain accessible, sustainable, and meaningful to communities.",
            style: TextStyle(
              fontFamily: 'Manrope',
              color: AppColors.darkGray,
              fontSize: 16,
              height: 28 / 16,
            ),
          ),
        ],
      ),
    );
  }
}
