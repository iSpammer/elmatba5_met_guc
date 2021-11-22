import './recepie.dart';

var RecepiesList = [
  Recepie(
      id: 'r1',
      title: 'Fattoush',
      categoryId: ['c3'],
      difficulty: 1,
      ingredients: ['Lettuce', 'Tomato', 'Summac', 'Onion', 'Olive oil'],
      images: ['https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Iceberg_lettuce_in_SB.jpg/440px-Iceberg_lettuce_in_SB.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/440px-Tomato_je.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/SumacFruit.JPG/440px-SumacFruit.JPG', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Mixed_onions.jpg/440px-Mixed_onions.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Oliven_V1.jpg/500px-Oliven_V1.jpg' ],
      steps: 'Mix all together',
      isVegan: true,
      isVegeterian: true,
      imageURL:
          'https://assets.bonappetit.com/photos/57af6bea53e63daf11a4e565/16:9/w_1280,c_limit/fattoush.jpg'),
  Recepie(
      id: 'r2',
      title: 'Falafel',
      categoryId: ['c2', 'c3'],
      difficulty: 2,
      ingredients: ['Fava beans', 'Hummus', 'Spices', 'Frying oil'],
      images: ['https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Illustration_Vicia_faba1.jpg/440px-Illustration_Vicia_faba1.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Hummus_Dip_%2830863436677%29.jpg/440px-Hummus_Dip_%2830863436677%29.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Indianspicesherbs.jpg/440px-Indianspicesherbs.jpg', 'https://m.media-amazon.com/images/I/61sFexM+u7L._SY879_.jpg'],
      steps: 'Mix ingredients into balls and fry them',
      isVegan: true,
      isVegeterian: true,
      imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Falafels_2.jpg/500px-Falafels_2.jpg'),
  Recepie(
      id: 'r3',
      title: 'Chicken Alfredo',
      categoryId: ['c1'],
      difficulty: 2,
      ingredients: ['Pasta', 'Chicken', 'Alredo sauce'],
      images: ['https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/%28Pasta%29_by_David_Adam_Kess_%28pic.2%29.jpg/502px-%28Pasta%29_by_David_Adam_Kess_%28pic.2%29.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Chickens_in_market.jpg/440px-Chickens_in_market.jpg', 'https://www.bertolli.com/wp-content/uploads/2017/07/BT_PR_PS_ACS_AlfredoAgedParm.png'],
      steps: 'Boil pasta, prepare chicken and pour sauce over',
      isVegan: false,
      isVegeterian: false,
      imageURL:
          'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/9/15/1/FNK_Chicken-Fettucine-Alfredo_s4x3.jpg.rend.hgtvcom.406.305.suffix/1442375396342.jpeg')
];
