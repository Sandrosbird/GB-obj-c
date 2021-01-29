//
//  main.m
//  HW1
//
//  Created by Emil Mescheryakov on 29.01.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger first = 0;
        NSInteger second = 0;
        NSInteger third = 0;
        
        // Задание №1, 2
        printf("Задание №1, 2 \n");
//        NSLog(@"First Number: %d, Second number: %d", first, second);
        printf("Первое число: ");
        scanf("%ld", &first);
        printf("Второе число: ");
        scanf("%ld", &second);
        NSLog(@"\nПроизведение: %ld\nЧастное: %ld\nСумма: %ld\nРазность: %ld\n", first * second, first / second, first + second, first - second);
        
        // Задание №3
        printf("Задание №3 \n");
        printf("Первое число: ");
        scanf("%ld", &first);
        printf("Второе число: ");
        scanf("%ld", &second);
        printf("Третье число: ");
        scanf("%ld", &third);
        NSLog(@"\nСреднее из трёх чисел = %ld", (first + second + third) /3);
        
    }
    return 0;
}
