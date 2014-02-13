//
//  AboutViewController.m
//  NavigationDrawerSample
//
//  Created by Edison Martinez on 2/11/14.
//  Copyright (c) 2014 Cronix cia. ltda. All rights reserved.
//

#import "AboutViewController.h"
#import "MMDrawerBarButtonItem.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"About"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
