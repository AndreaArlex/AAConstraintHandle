//
//  AAConstraintHandle.m
//  ConstraintHandle
//
//  Created by Arlexovincy on 15/3/24.
//  Copyright (c) 2015年 Arlexovincy. All rights reserved.
//

#import "AAConstraintHandle.h"

@implementation AAConstraintHandle

#pragma mark- 移除视图的约束
+ (void)removeConstraintWithView:(UIView*)view{
    
    for(NSLayoutConstraint *constraint in view.superview.constraints){
        if(constraint.firstItem==view||constraint.secondItem == view){
            [view.superview removeConstraint:constraint];
        }
    }
}

#pragma mark- 修改视图的约束
+ (void)updateConstraint:(NSLayoutAttribute)layoutAttribute setConstant:(CGFloat)constant withView:(UIView*)view{

    for (NSLayoutConstraint *constraint in view.superview.constraints) {
        
        if(constraint.firstItem==view||constraint.secondItem == view){
            
            if (constraint.firstAttribute == layoutAttribute) {
                
                constraint.constant = constant;
            }
        }
        
    }
}

@end
