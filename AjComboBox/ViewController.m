//
//  ViewController.m
//  AjComboBox
//
//  Created by Jasperit on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize comboBox;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    arr = [[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Four", @"Five", @"Six", @"Seven", nil];
    comboBox = [[AJComboBox alloc] initWithFrame:CGRectMake(5, 50, 310, 31)];
    [comboBox setLabelText:@"- SELECT -"];
    [comboBox setDelegate:self];
    [comboBox setTag:1];
    [comboBox setArrayData:arr];
    [self.view addSubview:comboBox];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark AJComboBoxDelegate

-(void)didChangeComboBoxValue:(AJComboBox *)comboBox selectedIndex:(NSInteger)selectedIndex
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[NSString stringWithFormat:@"Selected Value: %@", [arr objectAtIndex:selectedIndex]] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    [alert release];
}	

@end
