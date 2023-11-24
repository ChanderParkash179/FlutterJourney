import 'package:flutter_journey/projects/meal_app/model/meal.dart';

const availableMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2', 'c3'],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/05/14/18/23/spaghetti-1392272_640.jpg',
    ingredients: ['Spaghetti', 'Tomato Sauce', 'Garlic', 'Onions', 'Olive Oil'],
    steps: [
      'Boil spaghetti',
      'Cook garlic and onions in olive oil',
      'Add tomato sauce',
      'Combine with spaghetti'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c4', 'c5', 'c6'],
    title: 'Chicken Alfredo Pasta',
    imageUrl: 'https://shorturl.at/hsxDM',
    ingredients: [
      'Chicken',
      'Fettuccine Pasta',
      'Alfredo Sauce',
      'Parmesan Cheese',
      'Garlic'
    ],
    steps: [
      'Cook chicken in a skillet',
      'Boil pasta',
      'Combine pasta with Alfredo sauce',
      'Top with grilled chicken and Parmesan'
    ],
    duration: 45,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c7', 'c8', 'c9'],
    title: 'Vegetarian Stir-Fry',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/06/21/22/44/paella-2428945_640.jpg',
    ingredients: ['Tofu', 'Broccoli', 'Bell Peppers', 'Soy Sauce', 'Ginger'],
    steps: [
      'Sauté tofu in a pan',
      'Stir-fry vegetables with soy sauce',
      'Combine tofu and vegetables',
      'Serve hot'
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c2', 'c5', 'c8'],
    title: 'Margherita Pizza',
    imageUrl:
        'https://cdn.pixabay.com/photo/2021/04/23/07/43/pizza-6200962_640.jpg',
    ingredients: [
      'Pizza Dough',
      'Tomato Sauce',
      'Fresh Mozzarella',
      'Basil',
      'Olive Oil'
    ],
    steps: [
      'Roll out pizza dough',
      'Spread tomato sauce',
      'Add mozzarella and basil',
      'Bake until crust is golden'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm5',
    categories: ['c3', 'c6', 'c9'],
    title: 'Salmon with Lemon Dill Sauce',
    imageUrl: 'https://shorturl.at/lzR35',
    ingredients: [
      'Salmon fillets',
      'Lemon',
      'Dill',
      'Olive Oil',
      'Salt',
      'Pepper'
    ],
    steps: [
      'Season salmon with salt and pepper',
      'Pan-sear salmon in olive oil',
      'Prepare lemon dill sauce',
      'Serve hot'
    ],
    duration: 35,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm6',
    categories: ['c1', 'c4', 'c7'],
    title: 'Pesto Pasta with Cherry Tomatoes',
    imageUrl: 'https://shorturl.at/aCUW9',
    ingredients: [
      'Pasta',
      'Pesto Sauce',
      'Cherry Tomatoes',
      'Parmesan Cheese',
      'Garlic'
    ],
    steps: [
      'Boil pasta',
      'Toss with pesto sauce',
      'Add halved cherry tomatoes',
      'Top with Parmesan and garlic'
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm7',
    categories: ['c2', 'c5', 'c8'],
    title: 'Beef Tacos',
    imageUrl:
        'https://cdn.pixabay.com/photo/2021/02/02/21/22/food-5975493_640.jpg',
    ingredients: [
      'Ground Beef',
      'Taco Shells',
      'Lettuce',
      'Tomatoes',
      'Cheese',
      'Sour Cream'
    ],
    steps: [
      'Cook ground beef with taco seasoning',
      'Assemble tacos with desired toppings',
      'Serve hot'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c3', 'c6', 'c9'],
    title: 'Caprese Salad',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/21/03/47/food-3337621_640.jpg',
    ingredients: [
      'Tomatoes',
      'Fresh Mozzarella',
      'Basil',
      'Balsamic Glaze',
      'Salt',
      'Pepper'
    ],
    steps: [
      'Slice tomatoes and mozzarella',
      'Arrange on a plate with basil leaves',
      'Drizzle with balsamic glaze',
      'Season with salt and pepper'
    ],
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c1', 'c4', 'c7'],
    title: 'Chicken Caesar Salad',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/03/19/14/59/italian-salad-2156719_640.jpg',
    ingredients: [
      'Chicken Breast',
      'Romaine Lettuce',
      'Croutons',
      'Parmesan Cheese',
      'Caesar Dressing'
    ],
    steps: [
      'Grill chicken breast',
      'Toss lettuce with croutons, Parmesan, and dressing',
      'Top with sliced grilled chicken'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c8'],
    title: 'Shrimp Scampi',
    imageUrl:
        'https://cdn.pixabay.com/photo/2021/06/21/15/03/salmon-6353898_640.jpg',
    ingredients: [
      'Shrimp',
      'Linguine Pasta',
      'Garlic',
      'Lemon',
      'White Wine',
      'Butter'
    ],
    steps: [
      'Cook linguine pasta',
      'Sauté shrimp with garlic in butter and white wine',
      'Squeeze lemon over the dish',
      'Serve hot'
    ],
    duration: 35,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
];
