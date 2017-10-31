//
//  ViewController.m
//  NotificationView
//
//  Created by Chen Yiliang on 31/10/2015.
//  Copyright © 2015 Chen Yiliang. All rights reserved.
//

#import "ViewController.h"
#import "CYNotificationView.h"

@interface ViewController ()

@property (nonatomic, strong) CYNotificationView *notificationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showNotificationButtonPressed:(id)sender {
    if (self.notificationView == nil) {
        UIImage *icon = [UIImage imageNamed:@"jkzg_logo"];
        self.notificationView = [[CYNotificationView alloc] initWithIcon:icon touchedBlock:^(CYNotificationView *notificationView) {
            NSLog(@"notification view touched...");
        }];
    }
    
    [self.notificationView showWithTitle:@"notification title" content:@"notificaiton content..." animated:YES];
}

@end
