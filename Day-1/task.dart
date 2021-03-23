void main() {
  evenNum(0, 10);

  List<int> numbers = [1, 2, 4, 6];
  print(containOddNum(numbers));

  var x = """The wren
Earns his living.
Noiselessly
""";

  printLines(x);
  
  var obj1 = User.admin();
  print(obj1.id);
  print(obj1);

  var obj2 = Category(0, 'nameAr', 'nameEn', 'photo', 'createdAt', 'updatedAt');
  print(obj2.nameAr);
  print(obj2);
}

//task 1 Write a function with tow parameter (start and end) that print even numbers in this rang

void evenNum(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// task 2 Defined a random numbered list and print if contain odd number or not.

bool containOddNum(List<int> numbers) {
  bool result = false;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 != 0) {
      result = true;
      return result;
    }
  }

  numbers.forEach((number) {
    if (number % 2 != 0) {
      result = true;
    }
  });

  return result;
}

// task 3 You have the following String.
// “The wren
// Earns his living.
// Noiselessly”
// Defined it as mentioned as constant value. 
// Print the first line in this string and the second line in Upper case and the third in the lower case.


void printLines(String str) {
  
  var arr = str.split('\n');

  print(arr);

  for (int i = 0; i < arr.length; i++) {
    if (i == 0) {
      print(arr[i]);
      continue;
    } else if (i == 1) {
       print(arr[i].toUpperCase());
      continue;
    } else {
      print(arr[i].toLowerCase());
      continue;
    }
  }
}

// task 4.	You have three attachments file that contain json objects.
// Create the model class for each json object.
//		For user class create a named constructor called admin and set default data and print it in main.
//		In main create objects for each class and set date to it and print the objects data.
//		Try to print the object data by override the toString methods (bonus)


class User {
  int id;
  bool isLogged;
  String username;
  String gender;
  bool canComment;
  String photo;
  String email;
  int level;
  String semester;
  String country;
  bool enabled;
  List pushTokens;
  String role;
  String createdAt;
  String updatedAt;

  @override
  String toString() {
    return username;
  }

  User(
      {this.id,
      this.isLogged,
      this.username,
      this.gender,
      this.canComment,
      this.photo,
      this.email,
      this.level,
      this.semester,
      this.country,
      this.enabled,
      this.pushTokens,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.admin() {
    id = 638;
    isLogged = true;
    username = "sameh mourad";
    gender = "male";
    canComment = true;
    photo =
        "https://bassthalk.ams3.digitaloceanspaces.com/8f72a318793909dc/26804342_159620844679358_2108177390195878876_n.jpg";
    email = "samehmourad05@gmail.com";
    level = 1;
    semester = "first";
    country = "Egypt";
    enabled = true;
    pushTokens = [];
    role = "student";
    createdAt = "2020-09-07T14:54:59.766Z";
    updatedAt = "2021-02-25T11:07:40.987Z";
  }
}

class Category {
  int id;
  String nameAr;
  String nameEn;
  String photo;
  String createdAt;
  String updatedAt;
  
  @override
  String toString() {
    return nameAr;
  }

  Category(this.id, this.nameAr, this.nameEn, this.photo, this.createdAt,
      this.updatedAt);
}

class Course {
  int id;
  String status;
  String level;
  String language;
  double numberOfHours;
  int numberOfEnrolledStudents;
  Category category;
  String description;
  List<String> objectives;
  List<String> requirements;
  List<String> include;
  String nameAr;
  String nameEn;
  String photo;
  Teacher teacher;
  int price;
  int rating;
  bool hasOfferNow;
  String discountStartedAt;
  String discountFinishedAt;
  bool visibility;
  int passingPercentage;
  String createdAt;
  String updatedAt;

  Course(
      {this.id,
      this.status,
      this.level,
      this.language,
      this.numberOfHours,
      this.numberOfEnrolledStudents,
      this.category,
      this.description,
      this.objectives,
      this.requirements,
      this.include,
      this.nameAr,
      this.nameEn,
      this.photo,
      this.teacher,
      this.price,
      this.rating,
      this.hasOfferNow,
      this.discountStartedAt,
      this.discountFinishedAt,
      this.visibility,
      this.passingPercentage,
      this.createdAt,
      this.updatedAt});
	  
  class Teacher {
	  int id;
	  String username;
	  String photo;
	  String role;

	  Teacher({this.id, this.username, this.photo, this.role});
	  
	}
}


 
