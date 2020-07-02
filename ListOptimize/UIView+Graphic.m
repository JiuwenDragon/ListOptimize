//
//  UIView+Graphic.m
//  ListOptimize
//
//  Created by Katherine on 2020/7/2.
//  Copyright © 2020 JiuwenDragon. All rights reserved.
//

#import "UIView+Graphic.h"

@implementation UIView (Graphic)

+ (void)cutRadiousWithView:(UIView *)view radious:(CGFloat)radious {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radious, radious)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = view.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
}

+ (UIImage *)cutCircleImageWithImage:(UIImage *)image size:(CGSize)size radious:(CGFloat)radious {
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);

    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGContextAddPath(UIGraphicsGetCurrentContext(),
                 [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radious].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());

    [image drawInRect:rect];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}




@end
