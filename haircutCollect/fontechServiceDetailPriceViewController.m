//
//  fontechServiceDetailPriceViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/30/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechServiceDetailPriceViewController.h"

@interface fontechServiceDetailPriceViewController ()

@end

@implementation fontechServiceDetailPriceViewController

@synthesize nameArray = _nameArray;
@synthesize itemArray = _itemArray;
@synthesize priceArray = _priceArray;
@synthesize nameLabel = _nameLabel;
@synthesize priceLabel = _priceLabel;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"fontechServiceDetailPriceViewController"];
        self.itemArray = [NSArray arrayWithObjects:@"Stylist", @"Senior Stylist", @"Top Stylist", @"Artistic Team", @"Artistic Director", nil];
        self.nameArray = [NSArray arrayWithObjects:@"Jovi Chang", @"Paul Wei", @"Marvin Lin", @"Lounes Chen", @"Erica Lin", nil];
        self.priceArray = [NSArray arrayWithObjects:@"NT$ 1,200", @"NT$ 2,500", @"NT$ 2,500", @"NT$ 3,200", @"NT$ 4,800", nil];
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return [self.itemArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.nameArray count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self.itemArray objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"fontechServiceDetailPriceCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
        UILabel *itemLabel = (UILabel *)[cell viewWithTag:100];
        UILabel *detailLabel = (UILabel *)[cell viewWithTag:101];
        itemLabel.text = [self.nameArray objectAtIndex:indexPath.row];
        detailLabel.text = [self.priceArray objectAtIndex:indexPath.row];
        

    
    return cell;
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
