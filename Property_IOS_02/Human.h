//
//  Human.h
//  Property_IOS_02
//
//  Created by Slava on 13.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property(strong, nonatomic)NSString *name;
@property(assign,nonatomic)int age;
@property(assign, nonatomic)float weight;
@property(assign,nonatomic)float height;


-(NSInteger) howOldAreYou;

@end
