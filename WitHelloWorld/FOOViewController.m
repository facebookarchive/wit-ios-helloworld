//
//  FOOViewController.m
//  WitHelloWorld
//
//  Created by Willy Blandin on 13/04/2014.
//  Copyright (c) 2014 Wit.AI. All rights reserved.
//

#import "FOOViewController.h"

@interface FOOViewController ()

@end

@implementation FOOViewController {
    UILabel *labelView;
}
- (void)viewDidLoad
{
    [super viewDidLoad];

    // set the WitDelegate object
    [Wit sharedInstance].delegate = self;

    // create the button
    CGRect screen = [UIScreen mainScreen].bounds;
    CGFloat w = 100;
    CGRect rect = CGRectMake(screen.size.width/2 - w/2, 60, w, 100);

    WITMicButton* witButton = [[WITMicButton alloc] initWithFrame:rect];
    [self.view addSubview:witButton];

    // create the label
    labelView = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, screen.size.width, 50)];
    labelView.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labelView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)witDidGraspIntent:(NSString *)intent entities:(NSDictionary *)entities body:(NSString *)body error:(NSError *)e {
    if (e) {
        NSLog(@"[Wit] error: %@", [e localizedDescription]);
        return;
    }

    labelView.text = [NSString stringWithFormat:@"intent = %@", intent];

    [self.view addSubview:labelView];
}

@end
