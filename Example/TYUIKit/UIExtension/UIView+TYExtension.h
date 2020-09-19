//
//  UIView+TYExtension.h
//  TYUIKit_Example
//
//  Created by 童万华 on 2020/9/12.
//  Copyright © 2020 TonyTong1993. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+TYNibExtension.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIView (TYExtension)
/**
 * @brief Shortcut for frame.origin.x.
 *        Sets frame.origin.x = originX
 */
@property (nonatomic) CGFloat tyu_originX;

/**
 * @brief Shortcut for frame.origin.y
 *        Sets frame.origin.y = originY
 */
@property (nonatomic) CGFloat tyu_originY;

/**
 * @brief Shortcut for frame.origin.x + frame.size.width
 *       Sets frame.origin.x = rightX - frame.size.width
 */
@property (nonatomic) CGFloat tyu_rightX;

/**
 * @brief Shortcut for frame.origin.y + frame.size.height
 *        Sets frame.origin.y = bottomY - frame.size.height
 */
@property (nonatomic) CGFloat tyu_bottomY;

/**
 * @brief Shortcut for frame.size.width
 *        Sets frame.size.width = width
 */
@property (nonatomic) CGFloat tyu_width;

/**
 * @brief Shortcut for frame.size.height
 *        Sets frame.size.height = height
 */
@property (nonatomic) CGFloat tyu_height;

/**
 * @brief Shortcut for center.x
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat tyu_centerX;

/**
 * @brief Shortcut for center.y
 *        Sets center.y = centerY
 */
@property (nonatomic) CGFloat tyu_centerY;

/**
 * @brief Shortcut for frame.origin
 */
@property (nonatomic) CGPoint tyu_origin;

/**
 * @brief Shortcut for frame.size
 */
@property (nonatomic) CGSize tyu_size;
/**
 * @brief Shortcut for self.safeAreaInsets.top
 */
@property (nonatomic, readonly) CGFloat tyu_safeAreaTop;
/**
 * @brief Shortcut for self.safeAreaInsets.left
 */
@property (nonatomic, readonly) CGFloat tyu_safeAreaLeft;
/**
 * @brief Shortcut for self.safeAreaInsets.bottom
 */
@property (nonatomic, readonly) CGFloat tyu_safeAreaBottom;
/**
 * @brief Shortcut for self.safeAreaInsets.right
 */
@property (nonatomic, readonly) CGFloat tyu_safeAreaRight;
@end

NS_ASSUME_NONNULL_END
