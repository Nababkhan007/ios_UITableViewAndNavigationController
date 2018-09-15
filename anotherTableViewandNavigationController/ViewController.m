//
//  ViewController.m
//  anotherTableViewandNavigationController
//
//  Created by lab on 9/15/18.
//  Copyright © 2018 Mushfiqur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    
    NSArray *countryName;
    NSArray *imageData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    countryName = [NSArray arrayWithObjects:@"Bangladesh_Map",@"Maldiv",@"Nepal",@"Srilanka", nil];
    imageData = [NSArray arrayWithObjects:@"Bangladesh_Map",@"Maldiv",@"Nepal",@"Srilanka", nil];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [countryName count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *name = @"CountryNames";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:name];

    if(cell == nil){

        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:name];
}

    cell.textLabel.text = [countryName objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[imageData objectAtIndex:indexPath.row]];

    return cell;
}

@end
