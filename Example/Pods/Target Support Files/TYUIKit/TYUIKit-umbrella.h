#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TYUIKit.h"
#import "TYUIExtension.h"
#import "UIButton+TYExtension.h"
#import "TYUISeekBar.h"

FOUNDATION_EXPORT double TYUIKitVersionNumber;
FOUNDATION_EXPORT const unsigned char TYUIKitVersionString[];

