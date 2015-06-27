//
//  QuestionViewController.m
//  FlashQuizTest
//
//  Created by Kevin on 6/27/15.
//  Copyright (c) 2015 kevinlee. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController () <UIScrollViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *dynamicTriviaQuestionLabel;



@end

@implementation QuestionViewController

#pragma mark - viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
