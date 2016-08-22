//
//  CustomQRCode.h
//  Demo-CustomQRCode
//
//  Created by YourtionGuo on 8/22/16.
//  Copyright © 2016 Yourtion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CustomQRCode : NSObject

+ (UIImage *)generateCustomQRCode:(NSString *)string andSize:(CGFloat)size andColor:(UIColor *)color;

+ (void)setImageViewShadow:(UIImageView *)view;

+ (CIImage *)createQRForString:(NSString *)qrString;
+ (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat)size;
+ (UIImage*)imageBlackToTransparent:(UIImage*)image withRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;

@end
