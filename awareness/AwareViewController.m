//
//  AwareViewController.m
//  awareness
//
//  Created by Dawa Lama on 12/7/13.
//  Copyright (c) 2013 Dawa Lama. All rights reserved.
//

#import "AwareViewController.h"

static AwareViewController *mainController = nil;

@interface AwareViewController () <UIGestureRecognizerDelegate, UIActionSheetDelegate>

@end

@implementation AwareViewController

+ (void)initialize
{
}

+ (instancetype)mainController
{
    return mainController;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        mainController = self;
    }
    return self;
}

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   
    /*
    UIView *backgroundView = [[UIView alloc] init];
    backgroundView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:backgroundView];
    [backgroundView alignToView:self.view];
    */
    
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Become Aware, Evolve & Grow";
    [self.view addSubview:label];
    [label sizeToFit];
    [label setCenter:self.view.center];
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
