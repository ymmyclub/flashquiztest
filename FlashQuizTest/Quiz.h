//
//  Quiz.h
//  FlashQuizTest
//
//  Created by Kevin on 6/27/15.
//  Copyright (c) 2015 kevinlee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject

@property NSString *question;
@property NSString *answer;
@property int attemptsUsed;
@property BOOL isAnswered;
@property NSArray *questionsArray;


+ (void)retrieveQuestions:(void (^)(NSArray *array))complete;

@end
