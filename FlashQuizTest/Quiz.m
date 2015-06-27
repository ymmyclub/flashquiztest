//
//  Quiz.m
//  FlashQuizTest
//
//  Created by Kevin on 6/27/15.
//  Copyright (c) 2015 kevinlee. All rights reserved.
//

#import "Quiz.h"

@implementation Quiz

+ (void)retrieveQuestions:(void (^)(NSArray *array))complete
{
    NSURL *url = [NSURL URLWithString:@"http://flashquiz-api.herokuapp.com/flash_cards"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:urlRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
       NSArray *questionsArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
         complete(questionsArray);
     }];
}

@end
