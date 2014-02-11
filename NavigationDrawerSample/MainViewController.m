//
//  MainViewController.m
//  NavigationDrawerSample
//
//  Created by Edison Martinez on 2/11/14.
//  Copyright (c) 2014 Cronix cia. ltda. All rights reserved.
//

#import "MainViewController.h"
#import "MMDrawerBarButtonItem.h"
#import "UIColor+iOS7Colors.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self setTitle:@"Main"];
    
    MMDrawerBarButtonItem *button = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [button setShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
    [button setMenuButtonColor:[UIColor iOS7darkGrayColor] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = button;
    
    
    [self.view setBackgroundColor:[UIColor colorWithRed:208.0/255.0
                                                  green:208.0/255.0
                                                   blue:208.0/255.0
                                                  alpha:1.0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Button Handlers

-(void)leftDrawerButtonPress:(id)sender {
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

@end
