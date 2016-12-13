//
//  Human.m
//  Property_IOS_02
//
//  Created by Slava on 13.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Human.h"

/* -----инкапсуляция------*/
@interface Human()
@property (assign, nonatomic) NSInteger nameCalled; //для инкапсуляции
@end
/* -----инкапсуляция------*/


@implementation Human
@synthesize name = _name;  //для переопредедения set и get


/* -----инициализация------*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCalled = 0;  //обнуляем количество вызовов имени
        self.name = @"Default";
        self.age = 0;
        self.weight = 0.f;
        self.height = 0.f;
    }
    return self;
}

/* -----инициализация------*/

-(void) setName:(NSString *)name{
    
    NSLog(@"setter setName: is called ");       //переопределяем имя
    _name = name;                               //обращение к проперти напрямую
    
}


//инкапсуляция и подсчет сколько раз вызывался метод name
-(NSString*) name{
    self.nameCalled++;
    NSLog(@"name gatter is Called %d times", self.nameCalled);
    return _name;
}


-(NSString*) test{
    return @"Hack";                             //возвращаем вместо test - HAck
}
/*   Можно переопределить так
 
 -(NSString*) test{
 return _test;
 }
 
 тут все будет нормально, мы получим то что изначально задавали
 
 */

-(NSInteger) age{
    NSLog(@"Age getter is called");
    return _age;
}

-(NSInteger) howOldAreYou{
    return _age;
}

@end
