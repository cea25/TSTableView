//
//  TSTableViewAppearanceHelper.m
//  TSTableView
//
//  Created by Čeněk Kubík on 06.11.15.
//
//

#import "TSTableViewAppearanceHelper.h"
#import "TSUtils.h"

@implementation TSTableViewAppearanceHelper

#pragma mark - Create background images for Light style

+ (UIImage *)lightCellBackgroundImageWithTintColor:(UIColor *)color
{
    UIColor *topColor = (color ? color : [UIColor whiteColor]);
    UIColor *bottomColor = (color ? color : [UIColor whiteColor]);
    UIColor *topBorderColor = [UIColor whiteColor];
    UIColor *bottomBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    UIColor *leftBorderColor = [UIColor whiteColor];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}

+ (UIImage *)lightHeaderSectionBackgroundImageWithTintColor:(UIColor *)color
{
    UIColor *topColor = [UIColor colorWithWhite:0.95f alpha:1.0f];
    UIColor *bottomColor = (color ? color : [UIColor colorWithWhite:0.9f alpha:1.0f]);
    UIColor *topBorderColor = [UIColor whiteColor];
    UIColor *bottomBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    UIColor *leftBorderColor = [UIColor whiteColor];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    UIColor *lineColor = [UIColor colorWithWhite:0.0f alpha:0.1f];
    
    CGFloat lineWidth = 8;
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - lineWidth/2, 0)
                      endPoint:CGPointMake(rect.size.width - lineWidth/2, rect.size.height - 0.5f)
                         color:lineColor.CGColor
                     lineWidth:lineWidth];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}

+ (UIImage *)lightExpandSectionBackgroundImage
{
    UIColor *topColor = [UIColor colorWithWhite:0.95f alpha:1.0f];
    UIColor *bottomColor = [UIColor colorWithWhite:0.9f alpha:1.0f];
    UIColor *topBorderColor = [UIColor whiteColor];
    UIColor *bottomBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    UIColor *leftBorderColor = [UIColor whiteColor];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    UIColor *lineColor = [UIColor colorWithWhite:0.0f alpha:0.1f];
    
    CGFloat lineWidth = 8;
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(lineWidth/2, 0)
                      endPoint:CGPointMake(lineWidth/2, rect.size.height - 0.5f)
                         color:lineColor.CGColor
                     lineWidth:lineWidth];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}


+ (UIImage *)lightExpandItemNormalBackgroundImageWithSize:(CGSize)size
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 2 * size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat lineWithd = 8;
    NSArray *points = @[
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + 1, CGRectGetMidY(rect) - lineWithd/2)],
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + size.width - 5, CGRectGetMidY(rect) - lineWithd/2)],
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + size.width, CGRectGetMidY(rect))],
                        
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + size.width - 5, CGRectGetMidY(rect) + lineWithd/2)],
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + 1, CGRectGetMidY(rect) + lineWithd/2)]
                        ];
    
    [TSUtils drawPolygonInContext:context points:points
                        fillColor:[UIColor colorWithWhite:0 alpha:0.1].CGColor
                      strokeColor:[UIColor clearColor].CGColor
                       strokeSize:0];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)lightExpandItemSelectedBackgroundImageWithSize:(CGSize)size
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 2 * size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat lineWithd = 8;
    
    NSArray *points = @[
                        [NSValue valueWithCGPoint:CGPointMake(size.width + lineWithd/2, CGRectGetMaxY(rect) - 2)],
                        [NSValue valueWithCGPoint:CGPointMake(size.width - lineWithd/2, CGRectGetMaxY(rect) - 14)],
                        [NSValue valueWithCGPoint:CGPointMake(size.width + 3 * lineWithd/2, CGRectGetMaxY(rect) - 14)]
                        ];
    
    [TSUtils drawPolygonInContext:context points:points
                        fillColor:[UIColor colorWithWhite:0 alpha:0.1].CGColor
                      strokeColor:[UIColor clearColor].CGColor
                       strokeSize:0];
    
    NSArray *points1 = @[
                         [NSValue valueWithCGPoint:CGPointMake(size.width, CGRectGetMaxY(rect))],
                         [NSValue valueWithCGPoint:CGPointMake(size.width, CGRectGetMaxY(rect) - 6)],
                         [NSValue valueWithCGPoint:CGPointMake(size.width + lineWithd/2, CGRectGetMaxY(rect))],
                         [NSValue valueWithCGPoint:CGPointMake(size.width + lineWithd, CGRectGetMaxY(rect) - 6)],
                         [NSValue valueWithCGPoint:CGPointMake(size.width + lineWithd, CGRectGetMaxY(rect))]
                         ];
    
    [TSUtils drawPolygonInContext:context points:points1
                        fillColor:[UIColor colorWithWhite:0 alpha:0.1].CGColor
                      strokeColor:[UIColor clearColor].CGColor
                       strokeSize:0];
    
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)lightGeneralBackgroundImage
{
    UIColor *topColor = [UIColor colorWithWhite:0.95f alpha:1.0f];
    UIColor *bottomColor = [UIColor colorWithWhite:0.9f alpha:1.0f];
    UIColor *topBorderColor = [UIColor whiteColor];
    UIColor *bottomBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    UIColor *leftBorderColor = [UIColor whiteColor];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}

#pragma mark - Create background images for Dark Style

+ (UIImage *)darkCellBackgroundImageWithTintColor:(UIColor *)color
{
    UIColor *topColor = (color ? color : [UIColor colorWithWhite:0.2f alpha:1.0f]);
    UIColor *bottomColor = (color ? color : [UIColor colorWithWhite:0.15f alpha:1.0f]);
    UIColor *topBorderColor =   [UIColor colorWithWhite:0.4f alpha:1.0f];
    UIColor *bottomBorderColor =[UIColor colorWithWhite:0.05f alpha:1.0f];
    UIColor *leftBorderColor =  [UIColor colorWithWhite:0.4f alpha:1.0f];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.05f alpha:1.0f];
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}

+ (UIImage *)darkHeaderSectionBackgroundImageWithTintColor:(UIColor *)color
{
    UIColor *topColor =         [UIColor colorWithWhite:0.2f alpha:1.0f];
    UIColor *bottomColor =   (color ? color :  [UIColor colorWithWhite:0.15f alpha:1.0f]);
    UIColor *topBorderColor =   [UIColor colorWithWhite:0.4f alpha:1.0f];
    UIColor *bottomBorderColor =[UIColor colorWithWhite:0.05f alpha:1.0f];
    UIColor *leftBorderColor =  [UIColor colorWithWhite:0.4f alpha:1.0f];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.05f alpha:1.0f];
    UIColor *lineColor = [UIColor colorWithWhite:0.0f alpha:0.1f];
    
    CGFloat lineWidth = 8;
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - lineWidth/2, 0)
                      endPoint:CGPointMake(rect.size.width - lineWidth/2, rect.size.height - 0.5f)
                         color:lineColor.CGColor
                     lineWidth:lineWidth];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/4];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(2, rect.size.width/2, 2, rect.size.width/2) resizingMode:UIImageResizingModeStretch];
}

+ (UIImage *)darkExpandSectionBackgroundImage
{
    UIColor *topColor =         [UIColor colorWithWhite:0.2f alpha:1.0f];
    UIColor *bottomColor =      [UIColor colorWithWhite:0.15f alpha:1.0f];
    UIColor *topBorderColor =   [UIColor colorWithWhite:0.3f alpha:1.0f];
    UIColor *bottomBorderColor =[UIColor colorWithWhite:0.05f alpha:1.0f];
    UIColor *leftBorderColor =  [UIColor colorWithWhite:0.15f alpha:1.0f];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.05f alpha:1.0f];
    UIColor *lineColor = [UIColor colorWithWhite:0 alpha:0.15f];
    
    CGFloat lineWidth = 8;
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(lineWidth/2, 0)
                      endPoint:CGPointMake(lineWidth/2, rect.size.height - 0.5f)
                         color:lineColor.CGColor
                     lineWidth:lineWidth];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}


+ (UIImage *)darkExpandItemNormalBackgroundImageWithSize:(CGSize)size
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 2 * size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat lineWithd = 8;
    NSArray *points = @[
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd , CGRectGetMidY(rect) - lineWithd/2)],
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + size.width, CGRectGetMidY(rect) - lineWithd/2)],
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd + size.width, CGRectGetMidY(rect) + lineWithd/2)],
                        [NSValue valueWithCGPoint:CGPointMake(lineWithd , CGRectGetMidY(rect) + lineWithd/2)]
                        ];
    
    CGMutablePathRef path = CGPathCreateMutable();
    for(int i = 0; i < points.count;  ++i)
    {
        NSValue *pointVal = points[i];
        CGPoint point = [pointVal CGPointValue];
        if(i == 0)
            CGPathMoveToPoint(path, NULL, point.x, point.y);
        else
            CGPathAddLineToPoint(path, NULL, point.x, point.y);
    }
    CGFloat radius = 8;
    CGPathAddEllipseInRect(path, NULL, CGRectMake(size.width + lineWithd/2 - radius, CGRectGetMidY(rect) - radius, 2*radius, 2*radius));
    
    CGPathCloseSubpath(path);
    
    
    CGContextSaveGState(context);
    
    CGContextSetFillColorWithColor(context, [UIColor colorWithWhite:0 alpha:0.15].CGColor);
    CGContextAddPath(context, path);
    CGContextFillPath(context);
    
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithWhite:1 alpha:0.1].CGColor);
    CGFloat innerRadius = 3.5f;
    CGContextAddEllipseInRect(context, CGRectMake(size.width + lineWithd/2 - innerRadius, CGRectGetMidY(rect) - innerRadius, 2*innerRadius, 2*innerRadius));
    CGContextStrokePath(context);
    CGContextRestoreGState(context);
    
    CGPathRelease(path);
    
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)darkExpandItemSelectedBackgroundImageWithSize:(CGSize)size
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 2 * size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat lineWithd = 8;
    NSArray *points = @[
                        [NSValue valueWithCGPoint:CGPointMake(size.width, CGRectGetMaxY(rect))],
                        [NSValue valueWithCGPoint:CGPointMake(size.width, CGRectGetMidY(rect))],
                        [NSValue valueWithCGPoint:CGPointMake(size.width + lineWithd, CGRectGetMidY(rect))],
                        [NSValue valueWithCGPoint:CGPointMake(size.width + lineWithd, CGRectGetMaxY(rect))]
                        ];
    
    CGMutablePathRef path = CGPathCreateMutable();
    for(int i = 0; i < points.count;  ++i)
    {
        NSValue *pointVal = points[i];
        CGPoint point = [pointVal CGPointValue];
        if(i == 0)
            CGPathMoveToPoint(path, NULL, point.x, point.y);
        else
            CGPathAddLineToPoint(path, NULL, point.x, point.y);
    }
    CGFloat radius = 8;
    CGPathAddEllipseInRect(path, NULL, CGRectMake(size.width + lineWithd/2 - radius, CGRectGetMidY(rect) - radius, 2*radius, 2*radius));
    
    CGPathCloseSubpath(path);
    
    
    CGContextSaveGState(context);
    
    CGContextSetFillColorWithColor(context, [UIColor colorWithWhite:0 alpha:0.15].CGColor);
    CGContextAddPath(context, path);
    CGContextFillPath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor colorWithWhite:0.185 alpha:1].CGColor);
    CGFloat innerRadius = 3.5f;
    CGContextAddEllipseInRect(context, CGRectMake(size.width + lineWithd/2 - innerRadius, CGRectGetMidY(rect) - innerRadius, 2*innerRadius, 2*innerRadius));
    CGContextFillPath(context);
    CGContextRestoreGState(context);
    
    CGPathRelease(path);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)darkGeneralBackgroundImage
{
    UIColor *topColor =         [UIColor colorWithWhite:0.2f alpha:1.0f];
    UIColor *bottomColor =      [UIColor colorWithWhite:0.15f alpha:1.0f];
    UIColor *topBorderColor =   [UIColor colorWithWhite:0.4f alpha:1.0f];
    UIColor *bottomBorderColor =[UIColor colorWithWhite:0.05f alpha:1.0f];
    UIColor *leftBorderColor =  [UIColor colorWithWhite:0.4f alpha:1.0f];
    UIColor *rightBorderColor = [UIColor colorWithWhite:0.05f alpha:1.0f];
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 20.0f, 20.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [TSUtils drawLinearGradientInContext:context
                                    rect:rect
                              startColor:topColor.CGColor
                                endColor:bottomColor.CGColor];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, 0)
                         color:topBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, rect.size.height - 0.5f)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:bottomBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(rect.size.width - 0.5f, 0)
                      endPoint:CGPointMake(rect.size.width - 0.5f, rect.size.height - 0.5f)
                         color:rightBorderColor.CGColor
                     lineWidth:0.5];
    [TSUtils drawLineInContext:context
                    startPoint:CGPointMake(0, 0)
                      endPoint:CGPointMake(0, rect.size.height - 0.5f)
                         color:leftBorderColor.CGColor
                     lineWidth:0.5];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [image stretchableImageWithLeftCapWidth:rect.size.width/2 topCapHeight:rect.size.height/2];
    //return [image resizableImageWithCapInsets:UIEdgeInsetsMake(rect.size.height/2, rect.size.width/2, rect.size.height/2, rect.size.width/2)];
}

@end
