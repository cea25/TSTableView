//
//  TSTableViewAppearanceHelper.h
//  TSTableView
//
//  Created by Čeněk Kubík on 06.11.15.
//
//

#import <UIKit/UIKit.h>

@interface TSTableViewAppearanceHelper : NSObject

#pragma mark - Create background images for Light style
+ (UIImage *)lightCellBackgroundImageWithTintColor:(UIColor *)color;
+ (UIImage *)lightHeaderSectionBackgroundImageWithTintColor:(UIColor *)color;
+ (UIImage *)lightExpandSectionBackgroundImage;
+ (UIImage *)lightExpandItemNormalBackgroundImageWithSize:(CGSize)size;
+ (UIImage *)lightExpandItemSelectedBackgroundImageWithSize:(CGSize)size;
+ (UIImage *)lightGeneralBackgroundImage;

#pragma mark - Create background images for Dark Style
+ (UIImage *)darkCellBackgroundImageWithTintColor:(UIColor *)color;
+ (UIImage *)darkHeaderSectionBackgroundImageWithTintColor:(UIColor *)color;
+ (UIImage *)darkExpandSectionBackgroundImage;
+ (UIImage *)darkExpandItemNormalBackgroundImageWithSize:(CGSize)size;
+ (UIImage *)darkExpandItemSelectedBackgroundImageWithSize:(CGSize)size;
+ (UIImage *)darkGeneralBackgroundImage;

@end
