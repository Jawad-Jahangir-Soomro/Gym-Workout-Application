import 'package:flutter/material.dart';
import 'package:gym_workout_app/models/exercise.dart';

import '../models/category.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Cardio Vascular',
    color: Colors.purple,
    imageURL: "https://images.pexels.com/photos/3796802/pexels-photo-3796802.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c2',
    title: 'Chest',
    color: Colors.red,
    imageURL: "https://images.pexels.com/photos/1547248/pexels-photo-1547248.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c3',
    title: 'Wings/Back',
    color: Colors.orange,
    imageURL: "https://images.pexels.com/photos/13020532/pexels-photo-13020532.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c4',
    title: 'Shoulder',
    color: Colors.amber,
    imageURL: "https://images.pexels.com/photos/1865131/pexels-photo-1865131.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c5',
    title: 'Biceps',
    color: Colors.blue,
    imageURL: "https://images.pexels.com/photos/1431282/pexels-photo-1431282.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c6',
    title: 'Triceps',
    color: Colors.green,
    imageURL: "https://images.pexels.com/photos/4218662/pexels-photo-4218662.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c7',
    title: 'Legs',
    color: Colors.lightBlue,
    imageURL: "https://images.pexels.com/photos/2261477/pexels-photo-2261477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c8',
    title: 'Calf',
    color: Colors.lightGreen,
    imageURL: "https://images.pexels.com/photos/3756042/pexels-photo-3756042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
  Category(
    id: 'c9',
    title: 'Yoga/stretching',
    color: Colors.pink,
    imageURL: "https://images.pexels.com/photos/6698513/pexels-photo-6698513.jpeg?auto=compress&cs=tinysrgb&w=600"
  ),
  Category(
    id: 'c10',
    title: 'Abdominal',
    color: Colors.teal,
    imageURL: "https://images.pexels.com/photos/5327537/pexels-photo-5327537.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
];

const dummyMeals = [
  Exercise(
      id: 'e1',
      categories: [
        'c1'
      ],
      title: "Jumping Jacks",
      imageUrl: "https://global-uploads.webflow.com/5ca5fe687e34be0992df1fbe/603de9a87c4eb85a0a148140_2018-09-12_CARDIO2_02_WOMEN900LILAS---2641-----Expires-on-09-10-2022-min.jpeg",
      targets: [
        "Strengthen Bones",
        "Heart Health",
      ],
      steps: [
        "Stand upright with your legs together, arms at your sides.",
        "Bend your knees slightly, and jump into the air.",
        "As you jump, spread your legs to be about shoulder-width apart. Stretch your arms out and over your head.",
        "Jump back to starting position.",
        "Repeat",
      ],
      repetition: 50,
      sets: 5,
      complexity: Complexity.simple,
      affordability: Affordability.beginner,
      isCardioVascular: true,
      isFatLose: true,
      isMuscularStrength: true,
  ),
  Exercise(
    id: 'e2',
    categories: [
      'c1'
    ],
    title: "Running",
    imageUrl: "https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg?auto=compress&cs=tinysrgb&w=600",
    targets: [
      "Strengthen Bones",
      "Heart Health",
      "Boost Stamina"
    ],
    steps: [
      "Start with Run-Walk Intervals. If running for 3 miles straight or even a mile straight sounds intimidating, there's no need to worry. ...",
      "Keep Your Effort Easy. ...",
      "Build Your Base First. ...",
      "Introduce Faster Running Gradually. ...",
      "Keep a Training Log. ...",
      "Invest in Injury Prevention.",
    ],
    repetition: 00,
    sets: 00,
    complexity: Complexity.simple,
    affordability: Affordability.beginner,
    isCardioVascular: true,
    isFatLose: true,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e3',
    categories: [
      'c1'
    ],
    title: "Cycling",
    imageUrl: "https://images.pexels.com/photos/3771806/pexels-photo-3771806.jpeg?auto=compress&cs=tinysrgb&w=600",
    targets: [
      "Strengthen Bones",
      "Heart Health",
      "Boost Stamina"
    ],
    steps: [
      "Get familiar with the controls. The most basic aspect of learning to ride a bike is understanding the primary controls of a two-wheeler.",
      "Practice more and more"
    ],
    repetition: 00,
    sets: 00,
    complexity: Complexity.challenging,
    affordability: Affordability.intermediate,
    isCardioVascular: true,
    isFatLose: true,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e4',
    categories: [
      'c2'
    ],
    title: "Push-Ups",
    imageUrl: "https://images.pexels.com/photos/4162491/pexels-photo-4162491.jpeg?auto=compress&cs=tinysrgb&w=600",
    targets: [
      "Chest",
      "Triceps",
      "Core",
      "Deltoid",
      "Shoulder"
    ],
    steps: [
      "Get down on all fours, placing your hands slightly wider than your shoulders.",
      "Straighten your arms and legs.",
      "Lower your body until your chest nearly touches the floor.",
      "Pause, then push yourself back up.",
      "Repeat"
    ],
    repetition: 15,
    sets: 3,
    complexity: Complexity.challenging,
    affordability: Affordability.intermediate,
    isCardioVascular: false,
    isFatLose: false,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e5',
    categories: [
      'c2'
    ],
    title: "Bench Press",
    imageUrl: "https://images.pexels.com/photos/812746/pexels-photo-812746.jpeg?auto=compress&cs=tinysrgb&w=600",
    targets: [
      "Chest",
      "Triceps",
      "Core",
      "Deltoid",
      "Shoulder"
    ],
    steps: [
      "Set up the equipment: Start by adjusting the bench to a flat position and placing it in a power rack or a bench press station. Adjust the safety bars or spotters to a level just above your chest.",
      "Warm up: Prior to the bench press, warm up your upper body with light cardio exercises like jogging or cycling. Then, perform dynamic stretches for your chest, shoulders, and arms to increase blood flow and flexibility.",
      "Position yourself: Sit on the bench with your feet flat on the floor, shoulder-width apart. Lie back and ensure that your eyes are directly below the barbell. Grip the bar slightly wider than shoulder-width apart, with your palms facing forward.",
      "Arch your back: Create a slight arch in your lower back while keeping your glutes and shoulder blades firmly planted on the bench. This provides a stable base and reduces the risk of injury.",
      "Unrack the bar: Take a deep breath, brace your core, and lift the bar off the rack. Make sure your arms are fully extended, and the bar is directly above your shoulders.",
      "Lower the bar: Begin the descent by tucking your elbows slightly, allowing the bar to come down toward the middle of your chest. Keep your wrists straight and maintain tension in your upper body.",
      "Press the bar: When the bar touches your chest, explode upward by driving your feet into the floor, engaging your chest, shoulders, and triceps. Push the bar in a straight line until your arms are fully extended.",
      "Repeat and maintain control: Complete the desired number of repetitions, focusing on maintaining control throughout the movement. Avoid bouncing the bar off your chest or using excessive momentum.",
      "Rack the bar: Once you finish your final repetition, lock out your arms, and carefully return the barbell to the rack by following the same path as the descent.",
      "Cool down and stretch: After your bench press session, take a few minutes to cool down with light cardio and perform static stretches for your chest, shoulders, and arms to promote muscle recovery and flexibility."
    ],
    repetition: 15,
    sets: 3,
    complexity: Complexity.challenging,
    affordability: Affordability.intermediate,
    isCardioVascular: false,
    isFatLose: false,
    isMuscularStrength: true,
  ),
  Exercise(
    id: 'e6',
    categories: [
      'c3'
    ],
    title: "Pull-Ups",
    imageUrl: "https://images.pexels.com/photos/5750626/pexels-photo-5750626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Wings",
      "Biceps",
      "Deltoid",
      "Shoulder"
    ],
    steps: [
      "Start with your hands on the bar approximately shoulder-width apart with your palms facing forward.",
      "With arms extended above you, stick your chest out and curve your back slightly. ...",
      "Pull yourself up towards the bar using your back until the bar is at chest level while breathing out.",
    ],
    repetition: 15,
    sets: 3,
    complexity: Complexity.hard,
    affordability: Affordability.intermediate,
    isCardioVascular: false,
    isFatLose: true,
    isMuscularStrength: true,
  ),
  Exercise(
    id: 'e7',
    categories: [
      'c4'
    ],
    title: "dumbBell Shoulder Press",
    imageUrl: "https://images.pexels.com/photos/7289370/pexels-photo-7289370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Deltoid",
      "Shoulder"
    ],
    steps: [
      "Sit on an upright bench holding a dumbbell in each hand at shoulder height with your palms facing away from you.",
      "Keep your chest up, brace your core and look straight forwards throughout the move.",
      "Press the weights directly upwards until your arms are almost straight and the dumbbells are directly above your shoulders.",
    ],
    repetition: 15,
    sets: 3,
    complexity: Complexity.challenging,
    affordability: Affordability.intermediate,
    isCardioVascular: false,
    isFatLose: false,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e8',
    categories: [
      'c5'
    ],
    title: "Biceps Curl",
    imageUrl: "https://images.pexels.com/photos/3838389/pexels-photo-3838389.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Biceps",
      "ForeArms"
    ],
    steps: [
      "Stand with feet shoulder-width apart, holding dumbbells with palms facing forward.",
      "Keep core engaged and maintain good posture.",
      "Curl dumbbells up, squeezing biceps at the top.",
      "Lower the dumbbells in a controlled manner.",
      "Repeat for desired number of repetitions, focusing on strict form and muscle engagement.",
    ],
    repetition: 15,
    sets: 3,
    complexity: Complexity.challenging,
    affordability: Affordability.intermediate,
    isCardioVascular: false,
    isFatLose: false,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e9',
    categories: [
      'c6'
    ],
    title: "Triceps Dips",
    imageUrl: "https://images.pexels.com/photos/5496589/pexels-photo-5496589.jpeg?auto=compress&cs=tinysrgb&w=600",
    targets: [
      "Triceps",
    ],
    steps: [
      "Sit on the edge of a sturdy bench or chair, placing your hands next to your hips, fingers facing forward.",
      "Slide your hips forward off the bench and lower your body by bending your elbows, keeping them close to your sides.",
      "Lower until your upper arms are parallel to the ground, creating a 90-degree angle at the elbow.",
      "Push through your hands to straighten your arms, lifting your body back up to the starting position.",
      "Repeat for the desired number of repetitions, focusing on maintaining control and engaging your triceps throughout the movement.",
    ],
    repetition: 15,
    sets: 3,
    complexity: Complexity.simple,
    affordability: Affordability.beginner,
    isCardioVascular: false,
    isFatLose: false,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e10',
    categories: [
      'c7'
    ],
    title: "Squats",
    imageUrl: "https://images.pexels.com/photos/371049/pexels-photo-371049.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Legs",
      "Quads",
      "Hamstring",
      "Glut's",
    ],
    steps: [
      "Stand with your feet slightly wider than shoulder-width apart, toes pointed slightly outward.",
      "Engage your core, keep your chest up, and maintain a neutral spine.",
      "Bend your knees and lower your hips back and down as if sitting into a chair, keeping your weight on your heels.",
      "Descend until your thighs are parallel to the ground or slightly below, while keeping your knees in line with your toes.",
      "Push through your heels, engage your glutes, and extend your hips and knees to return to the starting position.",
    ],
    repetition: 10,
    sets: 4,
    complexity: Complexity.challenging,
    affordability: Affordability.advance,
    isCardioVascular: false,
    isFatLose: true,
    isMuscularStrength: true,
  ),

  Exercise(
    id: 'e11',
    categories: [
      'c9'
    ],
    title: "Downward Facing Dog",
    imageUrl: "https://images.pexels.com/photos/4534689/pexels-photo-4534689.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Strengthen Upper Body",
      "Strengthen Hands, Wrist, Fingers",
    ],
    steps: [
      "Start on your hands and knees, with your hands shoulder-width apart and your knees hip-width apart.",
      "Press your palms into the ground, tuck your toes under, and lift your knees off the floor, straightening your legs as much as possible.",
      "Push your hips up and back, creating an inverted V shape with your body.",
      "Keep your arms straight, with your shoulder blades drawn down and away from your ears.",
      "Relax your head and neck, allowing them to hang freely between your arms.",
    ],
    repetition: 00,
    sets: 00,
    complexity: Complexity.challenging,
    affordability: Affordability.beginner,
    isCardioVascular: true,
    isFatLose: true,
    isMuscularStrength: true,
  ),


  Exercise(
    id: 'e12',
    categories: [
      'c10'
    ],
    title: "Plank",
    imageUrl: "https://images.pexels.com/photos/3768901/pexels-photo-3768901.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Abs",
      "Core"
    ],
    steps: [
      "Start by getting into a push-up position with your hands directly under your shoulders and your toes touching the ground.",
      "Engage your core muscles by drawing your belly button toward your spine and squeezing your glutes.",
      "Keep your body in a straight line from your head to your heels, ensuring your back is neither arched nor sagging.",
      "Hold the position, focusing on maintaining proper alignment and breathing deeply.",
      "Aim to hold the plank for a specific duration, gradually increasing the time as you build strength and endurance.",
    ],
    repetition: 00,
    sets: 3,
    complexity: Complexity.challenging,
    affordability: Affordability.beginner,
    isCardioVascular: true,
    isFatLose: true,
    isMuscularStrength: false,
  ),

  Exercise(
    id: 'e13',
    categories: [
      'c10'
    ],
    title: "Abdominal Crunches",
    imageUrl: "https://images.pexels.com/photos/4127500/pexels-photo-4127500.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    targets: [
      "Abs",
      "Core"
    ],
    steps: [
      "Lie flat on your back with your knees bent and feet flat on the floor, hip-width apart.",
      "Place your hands lightly behind your head, supporting your neck, or cross your arms over your chest.",
      "Engage your core by drawing your belly button toward your spine.",
      "Slowly lift your head, shoulder blades, and upper back off the ground, using your abdominal muscles. Focus on exhaling as you crunch up.",
      "Pause at the top of the movement, squeezing your abs, and then slowly lower back down to the starting position while inhaling.",
    ],
    repetition: 25,
    sets: 4,
    complexity: Complexity.challenging,
    affordability: Affordability.beginner,
    isCardioVascular: true,
    isFatLose: true,
    isMuscularStrength: false,
  ),
];