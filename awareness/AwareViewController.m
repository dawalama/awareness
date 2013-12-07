//
//  AwareViewController.m
//  awareness
//
//  Created by Dawa Lama on 12/7/13.
//  Copyright (c) 2013 Dawa Lama. All rights reserved.
//

#import "AwareViewController.h"


typedef NS_ENUM(int, ActionViewTag) {
    ActionViewTagSettings,
};

static AwareViewController *mainController = nil;

@interface AwareViewController () <UIGestureRecognizerDelegate, UIActionSheetDelegate>

@end

@implementation AwareViewController

+ (void)initialize
{
    [self setupUI];
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

+ (void) setupUI
{
    NSDictionary *defaultTextAttr = @{
                                      NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue" size:14.f],
                                      NSForegroundColorAttributeName: [UIColor blackColor],
                                      NSShadowAttributeName: [UIColor clearColor]
                                      };
    
    // Navigation Bar
    NSMutableDictionary *buttonTextAttr = [defaultTextAttr mutableCopy];
    buttonTextAttr[NSForegroundColorAttributeName] = [UIColor blackColor];
    buttonTextAttr[NSFontAttributeName] = [UIFont fontWithName:@"HelveticaNeue" size:14.f];
    
}

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Become Aware, Evolve & Grow";
    [self.view addSubview:label];
    [label sizeToFit];
    [label setCenter:self.view.center];
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UIActionSheet *actions = [[UIActionSheet alloc]
                              initWithTitle:@"Settings" delegate:self
                              cancelButtonTitle:@"Cancel"
                              destructiveButtonTitle:nil
                              otherButtonTitles:@"What A", @"What B", nil];
    actions.tag = ActionViewTagSettings;
    [actions showInView:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
