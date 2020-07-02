//
//  UIView+Graphic.h
//  ListOptimize
//
//  Created by Katherine on 2020/7/2.
//  Copyright © 2020 JiuwenDragon. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Graphic)


+ (void)cutRadiousWithView:(UIView *)view radious:(CGFloat)radious;


/// 画圆角
/// @param image 原img
/// @param size img尺寸
/// @param radious 圆角大小
+ (UIImage *)cutCircleImageWithImage:(UIImage *)image size:(CGSize)size radious:(CGFloat)radious;


@end

NS_ASSUME_NONNULL_END
