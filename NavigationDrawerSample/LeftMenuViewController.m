//
//  LeftMenuViewController.m
//  NavigationDrawerSample
//
//  Created by Edison Martinez on 2/11/14.
//  Copyright (c) 2014 Cronix cia. ltda. All rights reserved.
//

#import "LeftMenuViewController.h"

@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController


-(NSArray *) testModel {
    return @[@"Home", @"About"];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setUIColors];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) setUIColors {
    //TableView
    UIColor * tableViewBackgroundColor;
        tableViewBackgroundColor = [UIColor colorWithRed:110.0/255.0
                                                   green:113.0/255.0
                                                    blue:115.0/255.0
                                                   alpha:1.0];
    [self.mainMenuTable setBackgroundColor:tableViewBackgroundColor];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:66.0/255.0
                                                  green:69.0/255.0
                                                   blue:71.0/255.0
                                                  alpha:1.0]];
   
    [self.navigationController setTitle:@"Menu Principal"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[self testModel]count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleBlue];
    
    // Configure the cell...
    
    //style
    UIView * backgroundView = [[UIView alloc] initWithFrame:cell.bounds];
    [backgroundView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    UIColor * backgroundColor;

        backgroundColor = [UIColor colorWithRed:122.0/255.0
                                          green:126.0/255.0
                                           blue:128.0/255.0
                                          alpha:1.0];
    [backgroundView setBackgroundColor:backgroundColor];
    
    [cell setBackgroundView:backgroundView];
    
    [cell.textLabel setBackgroundColor:[UIColor clearColor]];
    [cell.textLabel setTextColor:[UIColor
                                  colorWithRed:230.0/255.0
                                  green:236.0/255.0
                                  blue:242.0/255.0
                                  alpha:1.0]];
    //style
    
    
    cell.textLabel.text = [self testModel][indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger index = indexPath.row;
    UIViewController *aboutController = [self.storyboard instantiateViewControllerWithIdentifier:@"vcabout"];
    UIViewController *mainController = [self.storyboard instantiateViewControllerWithIdentifier:@"vcmain"];
    
    switch (index) {
        case 0: {
            [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
                self.mm_drawerController.centerViewController = mainController;
                [self.mm_drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeNone];
            }];
            break;
        }
        case 1: {
            [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
                self.mm_drawerController.centerViewController = aboutController;
                [self.mm_drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
            }];
        }
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
