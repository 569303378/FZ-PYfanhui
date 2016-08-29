//
//  UIViewController+WHReturntop.h
//  WHReturntop
//
//  Created by dkluhck on 15/4/30.
//  Copyright (c) 2015年 dkluhck. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WHTopButton.h"
#include "UIView+Size.h"
@interface UIViewController (WHReturntop)<UIScrollViewDelegate>


@property (nonatomic , strong)WHTopButton *Top;

- (void)AddWHReturnTop:(CGRect)buttonCGRect BackImage:(UIImageView *)imageView CallBackblock:(void(^)())Callblock;
- (void)PYhidden;
- (void)PYhiddensss;
@end
