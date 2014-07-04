//
//  ViewController.m
//  FMAnimations
//
//  Created by housl on 13-8-7.
//  Copyright (c) 2013年 housl. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *popMenuItem = [[UIBarButtonItem alloc] initWithTitle:@"按钮"
                                                                    style:UIBarButtonItemStyleBordered
                                                                   target:self
                                                                   action:@selector(rightBarButtonClick:)];
    self.navigationItem.rightBarButtonItem = popMenuItem;
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender {
    
    
    NSLog(@"-----------------buttonClick-----------");
    
    SecondViewController *second = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:second animated:YES];
    
    
}

-(void)rightBarButtonClick:(id)sender{
    NSLog(@"rightBarButtonClick");
}


@end
