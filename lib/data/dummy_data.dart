import '../models/category.dart';
import '../models/meal.dart';

const AVAILABLE_CATEGORIES = [
  Category(id: 'c1', title: 'Italian', color: 'purple'),
  Category(id: 'c2', title: 'Quick & Easy', color: 'red'),
  Category(id: 'c3', title: 'Hamburgers', color: 'orange'),
  Category(id: 'c4', title: 'German', color: 'amber'),
  Category(id: 'c5', title: 'Light & Lovely', color: 'blue'),
  Category(id: 'c6', title: 'Exotic', color: 'green'),
  Category(id: 'c7', title: 'Breakfast', color: 'lightBlue'),
  Category(id: 'c8', title: 'Asian', color: 'lightGreen'),
  Category(id: 'c9', title: 'French', color: 'pink'),
  Category(id: 'c10', title: 'Summer', color: 'teal'),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
        'https://images.unsplash.com/photo-1621996346565-e3d5d62812ba?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)',
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heat up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    imageUrl:
        'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C',
    ],
    duration: 10,
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c3'],
    title: 'Classic Hamburger',
    imageUrl:
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns',
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly toast the buns',
      'Assemble burger with tomato, cucumber, onion and ketchup',
    ],
    duration: 45,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
];
