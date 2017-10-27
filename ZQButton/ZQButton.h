//
//  ZQButton.h
//  Test
//
//  Created by ime on 2016/11/30.
//  Copyright © 2016年 ime. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+Size.h"

@interface ZQButton : UIButton
// 定义一个枚举（包含了四种类型的button）
typedef NS_ENUM(NSUInteger, ZQButtonEdgeInsetsStyle) {
    ZQButtonEdgeInsetsStyleTop,     // image在上，label在下
    ZQButtonEdgeInsetsStyleLeft,    // image在左，label在右
    ZQButtonEdgeInsetsStyleBottom,  // image在下，label在上
    ZQButtonEdgeInsetsStyleRight    // image在右，label在左
};
/// 图片与标题的风格
@property(nonatomic,assign) ZQButtonEdgeInsetsStyle style;
/// 图片大小
@property(nonatomic,assign)CGSize iconsize;
/// 图片与标题间隙
@property(nonatomic,assign)CGFloat index;

@end
