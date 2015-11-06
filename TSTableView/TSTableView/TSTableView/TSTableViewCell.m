//
//  TSTableViewCell.m
//  TSUIKit
//
//  Created by Viacheslav Radchenko on 8/13/13.
//
//  The MIT License (MIT)
//  Copyright © 2013 Viacheslav Radchenko
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "TSTableViewCell.h"
#import "TSUtils.h"

@interface TSTableViewCell ()

@end

@implementation TSTableViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _reuseIdentifier = NSStringFromClass([TSTableViewCell class]);
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        _reuseIdentifier = NSStringFromClass([TSTableViewCell class]);
    }
    return self;
}

- (id)initWithReuseIdentifier:(NSString *)reuseId
{
    self = [super init];
    if (self)
    {
        _reuseIdentifier = (reuseId ? reuseId : NSStringFromClass([TSTableViewCell class]));
    }
    return self;
}

- (UILabel *)textLabel
{
    if(!_textLabel)
    {
        _textLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.font = [UIFont systemFontOfSize:14.0f];
        _textLabel.textColor = [UIColor darkGrayColor];
        [self addSubview:_textLabel];
        
        [self setNeedsLayout];
    }
    return _textLabel;
}

- (UILabel *)detailsLabel
{
    if(!_detailsLabel)
    {
        _detailsLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _detailsLabel.backgroundColor = [UIColor clearColor];
        _detailsLabel.textAlignment = NSTextAlignmentCenter;
        _detailsLabel.font = [UIFont systemFontOfSize:10.0f];
        _detailsLabel.textColor = [UIColor grayColor];
        [self addSubview:_detailsLabel];
        
        [self setNeedsLayout];
    }
    return _detailsLabel;
}

- (UIImageView *)iconView
{
    if(!_iconView)
    {
        _iconView = [[UIImageView alloc] initWithFrame:self.bounds];
        _iconView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:_iconView];
        
        [self setNeedsLayout];
    }
    return _iconView;
}

- (UIImageView *)backgroundImageView
{
    if(!_backgroundImageView)
    {
        _backgroundImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _backgroundImageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self insertSubview:_backgroundImageView atIndex:0];
    }
    return _backgroundImageView;
}

// original code is modified to have:
// 1) width of labels always equal to cell bounds to avoid displaying "..." instead of remaining part of text which still can be stretched
// 2) horizontal padding
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat hPadding = 6;
    
    if(_iconView)
    {
        _iconView.frame = CGRectMake(0, 0, _iconView.image.size.width, self.bounds.size.height);
        x += _iconView.image.size.width;
    }
    
    if(_textLabel && _detailsLabel)
    {
        CGSize textSize = [_textLabel sizeThatFits:CGSizeMake(self.bounds.size.width - x, self.bounds.size.height)];
        textSize = CGSizeMake(MIN(textSize.width, self.bounds.size.width - x), MIN(textSize.height, self.bounds.size.height));
        CGSize detailsSize = [_detailsLabel sizeThatFits:CGSizeMake(self.bounds.size.width - x, self.bounds.size.height)];
        detailsSize = CGSizeMake(MIN(detailsSize.width, self.bounds.size.width - x), MIN(detailsSize.height, self.bounds.size.height));
        
        CGFloat offset = 2;
        CGFloat height = textSize.height + offset + detailsSize.height;
        y = (self.bounds.size.height - height)/2;
        y = MAX(0 , y);
        _textLabel.frame = CGRectMake(x + hPadding, y, self.bounds.size.width - x - 2*hPadding, textSize.height);
        y += textSize.height + offset;
        _detailsLabel.frame = CGRectMake(x + hPadding, y, self.bounds.size.width - x - 2*hPadding, detailsSize.height);
    }
    else if(_detailsLabel)
    {
        _detailsLabel.frame = CGRectMake(x + hPadding, 0, self.bounds.size.width - x - 2*hPadding, self.bounds.size.height);
    }
    else if(_textLabel)
    {
        _textLabel.frame = CGRectMake(x + hPadding, y, self.bounds.size.width - x - 2*hPadding, self.bounds.size.height);
    }
}

- (void)prepareForReuse
{
    if(_detailsLabel)
    {
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.font = [UIFont systemFontOfSize:14.0f];
        _textLabel.textColor = [UIColor darkGrayColor];
    }
    if(_textLabel)
    {
        _detailsLabel.textAlignment = NSTextAlignmentCenter;
        _detailsLabel.font = [UIFont systemFontOfSize:10.0f];
        _detailsLabel.textColor = [UIColor grayColor];
    }
    if(_iconView)
    {
        _iconView.image = nil;
    }
    
    if(_backgroundImageView)
    {
        _backgroundImageView.image = nil;
    }
}

@end
