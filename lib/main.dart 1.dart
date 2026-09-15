import 'package:flutter/material.dart';

void main() => runApp(MyApp());

enum Complexity { simple, challenging, hard }

enum Affordability { affordable, pricey, luxurious }

class Category {
  final String id;
  final String title;
  final String color;

  const Category({
    required this.id,
    required this.title,
    this.color = 'orange',
  });
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}

const availableCategories = [
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

const dummyMeals = [
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
      'Cheese',
    ],
    steps: [
      'Cut tomatoes and onion.',
      'Boil water and cook spaghetti.',
      'Heat oil, add onions and tomatoes, and simmer.',
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2', 'c3'],
    title: 'Classic Hamburger',
    imageUrl:
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      '300g Beef Patty',
      '1 Tomato',
      '1 Cucumber',
      'Onion',
      'Ketchup',
      '2 Burger Buns',
    ],
    steps: [
      'Form patties and fry 4 mins per side.',
      'Toast buns.',
      'Assemble burger with toppings.',
    ],
    duration: 45,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    imageUrl:
        'https://images.unsplash.com/photo-1599599810694-b5b37b04c89f?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      '80g Veal Cutlets',
      'Eggs',
      'Bread Crumbs',
      'Flour',
      'Butter',
      'Lemon',
    ],
    steps: [
      'Tenderize veal.',
      'Coat in flour, egg, and breadcrumbs.',
      'Fry in golden butter until crispy.',
    ],
    duration: 30,
    complexity: Complexity.challenging,
    affordability: Affordability.luxurious,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm4',
    categories: ['c5'],
    title: 'Salad with Smoked Salmon',
    imageUrl:
        'https://images.unsplash.com/photo-1540420773420-3366772f4999?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      'Arugula',
      'Smoked Salmon',
      'Olive Oil',
      'Lemon Juice',
      'Pine Nuts',
    ],
    steps: [
      'Wash arugula.',
      'Top with sliced smoked salmon.',
      'Drizzle with olive oil and lemon juice.',
    ],
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c6'],
    title: 'Exotic Thai Curry',
    imageUrl:
        'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      'Coconut Milk',
      'Red Curry Paste',
      'Chicken Breast',
      'Bamboo Shoots',
      'Basil',
    ],
    steps: [
      'Heat curry paste with coconut milk.',
      'Add sliced chicken and simmer.',
      'Garnish with fresh basil leaves.',
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
    categories: ['c7'],
    title: 'Pancakes',
    imageUrl:
        'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      '1.5 Cups Flour',
      '3.5 Teaspoons Baking Powder',
      '1 Cup Milk',
      '1 Egg',
      'Butter',
    ],
    steps: [
      'Mix dry ingredients.',
      'Whisk milk, egg, and melted butter.',
      'Pour batter onto hot griddle until golden.',
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
    id: 'm7',
    categories: ['c8'],
    title: 'Asian Stir Fry Noodles',
    imageUrl:
        'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      'Noodles',
      'Soy Sauce',
      'Ginger',
      'Garlic',
      'Mixed Vegetables',
      'Sesame Oil',
    ],
    steps: [
      'Boil noodles.',
      'Stir fry vegetables with garlic and ginger.',
      'Toss noodles and soy sauce together.',
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm8',
    categories: ['c9'],
    title: 'French Croissants',
    imageUrl:
        'https://images.unsplash.com/photo-1555507036-ab1f4038808a?auto=format&fit=crop&w=800&q=80',
    ingredients: ['Puff Pastry Dough', 'Butter', 'Egg Wash', 'Sugar'],
    steps: [
      'Roll out pastry dough.',
      'Layer and fold with butter sheets.',
      'Bake at 200°C until flaky and golden.',
    ],
    duration: 60,
    complexity: Complexity.hard,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c10'],
    title: 'Summer Fruit Salad',
    imageUrl:
        'https://images.unsplash.com/photo-1519996529931-28324d5a630e?auto=format&fit=crop&w=800&q=80',
    ingredients: [
      'Strawberries',
      'Mangoes',
      'Pineapple',
      'Blueberries',
      'Mint Leaves',
    ],
    steps: [
      'Chop all fresh summer fruits into cubes.',
      'Toss together in a large bowl.',
      'Garnish with fresh mint leaves.',
    ],
    duration: 10,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _availableMeals = dummyMeals;
  final List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = dummyMeals.where((meal) {
        if (_filters['gluten']! && !meal.isGlutenFree) return false;
        if (_filters['lactose']! && !meal.isLactoseFree) return false;
        if (_filters['vegan']! && !meal.isVegan) return false;
        if (_filters['vegetarian']! && !meal.isVegetarian) return false;
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex = _favoriteMeals.indexWhere(
      (meal) => meal.id == mealId,
    );
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(dummyMeals.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  bool _isFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealsApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.pink,
        colorScheme: const ColorScheme.dark(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) =>
            MealDetailScreen(_toggleFavorite, _isFavorite),
      },
    );
  }
}

class MainDrawer extends StatelessWidget {
  final Function(String) onSelectScreen;
  const MainDrawer({required this.onSelectScreen, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Colors.amber,
            child: const Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(
              Icons.restaurant,
              size: 26,
              color: Colors.white,
            ),
            title: const Text(
              'Meals',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onTap: () => onSelectScreen('meals'),
          ),
          ListTile(
            leading: const Icon(Icons.settings, size: 26, color: Colors.white),
            title: const Text(
              'Filters',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onTap: () => onSelectScreen('filters'),
          ),
        ],
      ),
    );
  }
}

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsScreen(this.favoriteMeals, {super.key});

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': CategoriesScreen(), 'title': 'Categories'},
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Your Favorites',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      Navigator.of(context).pushNamed(FiltersScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: availableCategories
          .map(
            (cat) => InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                CategoryMealsScreen.routeName,
                arguments: {'id': cat.id, 'title': cat.title},
              ),
              splashColor: Colors.pink,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  cat.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;

  const CategoryMealsScreen(this.availableMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final displayedMeals = availableMeals
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      body: displayedMeals.isEmpty
          ? const Center(
              child: Text(
                'Uh oh ... nothing here!\nTry selecting a different category!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return MealItem(
                  id: displayedMeals[index].id,
                  title: displayedMeals[index].title,
                  imageUrl: displayedMeals[index].imageUrl,
                  duration: displayedMeals[index].duration,
                  complexity: displayedMeals[index].complexity,
                  affordability: displayedMeals[index].affordability,
                );
              },
              itemCount: displayedMeals.length,
            ),
    );
  }
}

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
    super.key,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challenging';
      case Complexity.hard:
        return 'Hard';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.pricey:
        return 'Pricey';
      case Affordability.luxurious:
        return 'Luxurious';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(
        context,
      ).pushNamed(MealDetailScreen.routeName, arguments: id),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 6),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(width: 6),
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  final Function(String) toggleFavorite;
  final Function(String) isFavorite;

  const MealDetailScreen(this.toggleFavorite, this.isFavorite, {super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = dummyMeals.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Ingredients',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 150,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Steps',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Text('# ${index + 1}')),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    const Divider(),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(mealId) ? Icons.star : Icons.star_border),
        onPressed: () {
          final wasFavorite = isFavorite(mealId);
          toggleFavorite(mealId);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                wasFavorite
                    ? 'Removed from favorites!'
                    : 'Marked as a favorite!',
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        },
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoritesScreen(this.favoriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
            affordability: favoriteMeals[index].affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Map<String, bool> currentFilters;
  final Function(Map<String, bool>) saveFilters;

  const FiltersScreen(this.currentFilters, this.saveFilters, {super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegetarian = false;
  var _vegan = false;

  @override
  void initState() {
    _glutenFree = widget.currentFilters['gluten']!;
    _lactoseFree = widget.currentFilters['lactose']!;
    _vegetarian = widget.currentFilters['vegetarian']!;
    _vegan = widget.currentFilters['vegan']!;
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function(bool) updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: (newValue) {
        setState(() {
          updateValue(newValue);
        });
        widget.saveFilters({
          'gluten': _glutenFree,
          'lactose': _lactoseFree,
          'vegan': _vegan,
          'vegetarian': _vegetarian,
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      drawer: MainDrawer(
        onSelectScreen: (identifier) {
          if (identifier == 'meals') {
            Navigator.of(context).pushReplacementNamed('/');
          }
        },
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Adjust your meal selection.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals.',
                  _glutenFree,
                  (newValue) => _glutenFree = newValue,
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals.',
                  _lactoseFree,
                  (newValue) => _lactoseFree = newValue,
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals.',
                  _vegetarian,
                  (newValue) => _vegetarian = newValue,
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals.',
                  _vegan,
                  (newValue) => _vegan = newValue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FloatingImageAnimation extends StatefulWidget {
  final String imageUrl;

  const FloatingImageAnimation({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<FloatingImageAnimation> createState() => _FloatingImageAnimationState();
}

class _FloatingImageAnimationState extends State<FloatingImageAnimation>
    with SingleTickerProviderStateMixin {
  
  // 1. Declare the AnimationController
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2), // Speed of the up and down movement
    vsync: this,
  )..repeat(reverse: true); // Repeats the animation infinitely, reversing direction

  // 2. Define the vertical translation range (pixels moving up and down)
  late final Animation<double> _animation = Tween<double>(
    begin: -15.0, // Moves 15 pixels up
    end: 15.0,    // Moves 15 pixels down
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Smooth easing effect
    ),
  );

  @override
  void dispose() {
    _controller.dispose(); // Always dispose controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          // Apply offset to the Y-axis (vertical movement)
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      // 3. Pass your image here
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          widget.imageUrl,
          height: 250,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}