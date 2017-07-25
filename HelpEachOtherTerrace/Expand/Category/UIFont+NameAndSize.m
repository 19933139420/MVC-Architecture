//
//  UIFont+NameAndSize.m
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/13.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "UIFont+NameAndSize.h"

@implementation UIFont (NameAndSize)

+ (UIFont *)JJZHFont:(CGFloat)font {
    return [self JJZHFont:font withFontName:nil];
}

+ (UIFont *)JJZHFont:(CGFloat)font withFontName:(NSString *)fontName {
    if (kStringIsEmpty(fontName)) {
        fontName = CHINESE_FONT_NAME;
    }
    return [UIFont fontWithName:fontName size:AdaptedWidth(font)];
}

@end
