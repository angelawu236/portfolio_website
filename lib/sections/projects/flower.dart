import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/card.dart';
import 'package:portfolio_website/sections/projects/video.dart';
import 'package:url_launcher/url_launcher.dart';

class Flower extends StatelessWidget {
  const Flower({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Flower Species Classification",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
            Text(
              "August 2024",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
        const Text(
            "Machine Learning Project to classify flower species using a dataset of images. ",
            style: TextStyle(color: Colors.cyanAccent, fontSize: 14)),
        const Text(
          "Built With: Python, TensorFlow, Pandas, JavaScript, CSS/HTML, Jupyter Notebook ",
          style: TextStyle(color: Colors.lightBlueAccent, fontSize: 14),
        ),
        const SizedBox(height: 10),

        const SizedBox(
          height: 300,
          child: ProjectWidget(
            video1: 'assets/flower_project.mp4',
            video2: 'assets/flower_project2_small.mp4',
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "This convolutional neural network (CNN) model was trained on a dataset of flower images using Python and TensorFlow. The project involved splitting the dataset into training and validation sets, performing preprocessing and augmentation, model building, training, and evaluation. The final model achieved over 80% accuracy in classifying flower species based on their images.",
        style: TextStyle(color: Colors.white70, fontSize: 14),),
        const Text("Beyond the model itself, we developed a front-end interface with HTML, CSS, and JavaScript and deployed it with ngrok, allowing users to upload images and receive real-time predictions.",
        style: TextStyle(color: Colors.white70, fontSize: 14),),
        RichText(

          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
              fontSize: 14,
            ),
            children: [
              const TextSpan(
                text:
                "I worked on this project with a partner as part of ",
              ),
              TextSpan(
                text: "SPIS",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.lightBlueAccent,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationThickness: 2,
                  decorationColor: Colors.lightBlueAccent,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    final uri = Uri.parse("https://spis.ucsd.edu/");
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri, mode: LaunchMode.externalApplication);
                    }
                  },
              ),
              const TextSpan(
                text:
                ", a computer science and engineering program at UC San Diego for freshmen.",
              ),
            ],
          ),
        ),
      ]
      ),
    );
  }
}
