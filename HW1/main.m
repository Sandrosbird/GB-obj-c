//
//  main.m
//  HW1
//
//  Created by Emil Mescheryakov on 29.01.2021.
//

#import <Foundation/Foundation.h>

//ДЗ№2
//Задание №1, функция, определяющая, относится ли введенная буква к английскому алфавиту
void isFromEngAlphabet(NSString *character) {
    NSString *lower = [character lowercaseString];
    NSArray *array = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z"];
    if ([array containsObject:lower]) {
        NSLog(@"Введенная буква %@ входит в английский алфавит", character);
    } else {
        NSLog(@"Введенная буква %@ не входит в английский алфавит", character);
    }
}

//ДЗ№2
//Задание №2
//сложение
NSInteger sum(NSInteger a, NSInteger b) {
    NSLog(@"Результат сложения %ld и %ld = %ld", a, b, a + b);
    return a + b;
}

//вычитание
NSInteger substract(NSInteger a, NSInteger b) {
    NSLog(@"Результат вычитания %ld и %ld = %ld", a, b, a - b);
    return a - b;
}

//умножение
NSInteger multiply(NSInteger a, NSInteger b) {
    NSLog(@"Результат умножения %ld и %ld = %ld", a, b, a * b);
    return a * b;
}

//деление
NSInteger divide(NSInteger a, NSInteger b) {
    NSLog(@"Результат деления %ld на %ld =  %ld", a, b, a / b);
    return a / b;
}

//int calculate(NSString *method, NSInteger a, NSInteger b) {
//
//    if ([method isEqualToString:@"+"]) {
//        return a + b;
//    }
//    else if ([method isEqualToString:@"-"]) {
//        return a - b;
//    }
//    else if ([method isEqualToString:@"*"]) {
//        return a * b;
//    }
//    else if ([method isEqualToString:@"/"]) {
//        return a / b;
//    }
//    else if ([method isEqualToString:@"%"]) {
//        return a % b;
//    }
//    else {
//        NSLog(@"Функция не знает переданный метод");
//        return 0;
//    }
//
//    return a + b;
//
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger first = 0;
        NSInteger second = 0;
        NSInteger third = 0;
        
//        //ДЗ №1
//        // Задание №1, 2
//        printf("Задание №1, 2 \n");
////        NSLog(@"First Number: %d, Second number: %d", first, second);
//        printf("Первое число: ");
//        scanf("%ld", &first);
//        printf("Второе число: ");
//        scanf("%ld", &second);
//        NSLog(@"\nПроизведение: %ld\nЧастное: %ld\nСумма: %ld\nРазность: %ld\n", first * second, first / second, first + second, first - second);
//
//        // Задание №3
//        printf("Задание №3 \n");
//        printf("Первое число: ");
//        scanf("%ld", &first);
//        printf("Второе число: ");
//        scanf("%ld", &second);
//        printf("Третье число: ");
//        scanf("%ld", &third);
//        NSLog(@"\nСреднее из трёх чисел = %ld", (first + second + third) /3);
        
        //ДЗ№2
        //Задание №1: функция, определяющая, относится ли введенная буква к английскому алфавиту
        char character;
        printf("Введите букву: ");
        scanf("%s", &character);
        NSString* stringCharacter = [NSString stringWithUTF8String:&character]; //scanf не хочет работать с NSString
        isFromEngAlphabet(stringCharacter);
        
        //Задание №2: разделить метод Calculate
        printf("Первое число: ");
        scanf("%ld", &first);
        printf("Второе число: ");
        scanf("%ld", &second);
        sum(first, second);
        substract(first, second);
        multiply(first, second);
        divide(first, second);
    }
    return 0;
}
