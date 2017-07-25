//
//  JJZHTargetConfigMacros.h
//  HelpEachOtherTerrace
//
//  Created by superMan on 2017/5/13.
//  Copyright © 2017年 徐学超. All rights reserved.
//

#ifndef JJZHTargetConfigMacros_h
#define JJZHTargetConfigMacros_h

//-------------------打印日志-------------------------
//DEBUG 模式下打印日志,当前行
#ifdef DEBUG
# define DTLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define DTLog(...)
#endif

#endif /* JJZHTargetConfigMacros_h */
