//
//  VerificationViewController.m
//  VoiceChat
//
//  Created by mac on 3/20/15.
//  Copyright (c) 2015 Vijai. All rights reserved.
//

#import "VerificationViewController.h"

@interface VerificationViewController ()

@end

@implementation VerificationViewController

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

- (IBAction)bttnActionNext:(id)sender {
    
    [self performSegueWithIdentifier:@"MoveToChat" sender:self];

 }
@end
