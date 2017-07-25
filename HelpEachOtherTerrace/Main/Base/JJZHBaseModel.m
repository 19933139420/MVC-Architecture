//
//  JJZHBaseModel.m
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/15.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#import "JJZHBaseModel.h"

@implementation JJZHBaseModel

- (instancetype)initWithDic:(NSDictionary *)aDic {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:aDic];
    }
    return self;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    DTLog(@"key = %@ undefined.",key);
}

- (void)setValuesForKeysWithDictionary:(NSDictionary<NSString *,id> *)keyedValues {
    [super setValuesForKeysWithDictionary:keyedValues];
    NSArray *keys = [keyedValues allKeys];
    for (NSString *str in keys) {
        if ([[keyedValues objectForKey:str] isEqual:[NSNull null]]) {
            [self setValue:@"" forKey:str];
        }
    }
}

+ (id)getModelWithDic:(NSDictionary *)aDic {
    return [[self alloc] initWithDic:aDic];
}

@end
