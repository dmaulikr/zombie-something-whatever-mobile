//
//  ViewController.m
//  ZombieSomething
//
//  Created by Allison Allain on 5/12/14.
//  Copyright (c) 2014 Allison Wonderland Games. All rights reserved.
//

#import "ViewController.h"
#import <Firebase/Firebase.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create a reference to a Firebase locationzombiefire.firebaseio.com
    Firebase* f = [[Firebase alloc] initWithUrl:@"https://zombiefire.firebaseio.com/"];
    
    // Write data to Firebase
    [f setValue:@"Do you have data? You'll love Firebase."];
    
    // Read data and react to changes
    [f observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        NSLog(@"%@ -> %@", snapshot.name, snapshot.value);
    }];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
