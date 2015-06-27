//
//  QuestionViewController.m
//  FlashQuizTest
//
//  Created by Kevin on 6/27/15.
//  Copyright (c) 2015 kevinlee. All rights reserved.
//

#import "QuestionViewController.h"
#import "Quiz.h"

@interface QuestionViewController () <UIScrollViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *dynamicTriviaQuestionLabel;
@property NSArray *questionsArray;
@property NSIndexPath *indexPath;

@end

@implementation QuestionViewController

#pragma mark - viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];

    [self pullTriviaQuestionsFromAPI];
    [self updateQuestionLabelText:self.indexPath];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pullTriviaQuestionsFromAPI
{
    self.questionsArray = [NSArray new];
   [Quiz retrieveQuestions:^(NSArray *array) {
       self.questionsArray = array;
       NSLog(@"the array has %lu quesitons",self.questionsArray.count);
   }];
}

- (void)updateQuestionLabelText:(NSIndexPath *)indexPath
{
    NSDictionary *question = [self.questionsArray objectAtIndex:indexPath.row];
    self.dynamicTriviaQuestionLabel.text = question[@"question"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
