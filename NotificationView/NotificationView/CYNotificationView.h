//
//  CYNotificationView.h
//  mi-common-framework
//
//  Created by Chen Yiliang on 25/10/2015.
//  Copyright © 2015 CYYUN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYNotificationView : UIWindow

- (instancetype)initWithIcon:(UIImage *)icon touchedBlock:(void (^)(CYNotificationView *notificationView))touchedBlock;

- (void)showWithTitle:(NSString *)title content:(NSString *)content animated:(BOOL)animated;
- (void)dismissAnimated:(BOOL)animated;

@end
