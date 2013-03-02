//
//  FirstViewController.m
//  InIcall
//
//  Created by Sam on 2/12/13.
//  Copyright (c) 2013 Sam. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()


@end

@implementation FirstViewController

NSMutableString *cnumberval;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

-(IBAction)alertButton:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"TestBox" message:@"Cool Pop Up" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
    
}

-(IBAction)numberbutton:(id)sender {
    if([sender tag] == 10) {
        [cnumberval appendString:[NSString stringWithFormat:@"#"]];
        currentNumber.text = cnumberval;
    } else if ([sender tag] == 11) {
        [cnumberval appendString:[NSString stringWithFormat:@"*"]];
        currentNumber.text = cnumberval;
    } else {
        [cnumberval appendString:[NSString stringWithFormat:@"%d", [sender tag]]];
        currentNumber.text = cnumberval;
    }
    
}

- (void)viewDidLoad
{
    cnumberval = [[NSMutableString alloc] init];
    [super viewDidLoad];
    printf("Hello World");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
