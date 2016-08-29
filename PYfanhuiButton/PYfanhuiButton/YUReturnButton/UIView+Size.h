//
//  UIView+Size.h
//  FXBEST
//
//  Created by dkluhck on 15/1/12.
//  Copyright (c) dkluhck All rights reserved.
//

#import <UIKit/UIKit.h>
// 屏幕尺寸
#define FXScreenBounds [UIScreen mainScreen].bounds
#define FXScreenSize [UIScreen mainScreen].bounds.size
#define FXScreenWidth [UIScreen mainScreen].bounds.size.width
#define FXScreenHeight [UIScreen mainScreen].bounds.size.height
@interface UIView (Size)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;

@end
