//
//  AAConstraintHandle.h
//  ConstraintHandle
//
//  Created by Arlexovincy on 15/3/24.
//  Copyright (c) 2015年 Arlexovincy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AAConstraintHandle : NSObject{

    
}

/**
 *  移除视图的约束
 *
 *  @param view 被移除约束的视图
 */
+ (void)removeConstraintWithView:(UIView*)view;

/**
 *  修改视图的约束
 *
 *  @param layoutAttribute 要修改的约束
 *  @param constant        约束值
 *  @param view            修改的视图
 */
+ (void)updateConstraint:(NSLayoutAttribute)layoutAttribute setConstant:(CGFloat)constant withView:(UIView*)view;

@end
