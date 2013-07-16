//
//  HAViewController.m
//  NavigationMenu
//
//  Created by Ivan Sapozhnik on 2/19/13.
//  Copyright (c) 2013 Ivan Sapozhnik. All rights reserved.
//

#import "HAViewController.h"

@implementation HAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (self.navigationItem) {
        CGRect frame = CGRectMake(0.0, 0.0, 200.0, self.navigationController.navigationBar.bounds.size.height);
        SINavigationMenuView *menu = [[SINavigationMenuView alloc] initWithFrame:frame title:@""];
        [menu displayMenuInView:self.navigationController.topViewController.view];
        menu.items = @[@"Companies", @"People", @"Saved", @"Settings"];
        menu.images = @[@"tab_company_selected", @"tab_people_selected", @"tab_saved_selected", @"tab_settings_selected"];
        menu.delegate = self;
        self.navigationItem.titleView = menu;
    }
}

- (void)didSelectItemAtIndex:(NSUInteger)index
{
    NSLog(@"did selected item at index %d", index);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
