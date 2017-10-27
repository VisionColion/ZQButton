//
//  ZQButton.m
//  Test
//
//  Created by ime on 2016/11/30.
//  Copyright © 2016年 Vision. All rights reserved.
//

#import "ZQButton.h"

@implementation ZQButton

- (void)layoutSubviews
{
    [super layoutSubviews];
    if(self.titleLabel.text && self.imageView.image)
    {
        self.imageView.frame = CGRectMake(0, 0, self.iconsize.width, self.iconsize.height);
        CGFloat marginH = (self.frame.size.height - self.imageView.frame.size.height - self.titleLabel.frame.size.height)/3;
        
        if (self.style == ZQButtonEdgeInsetsStyleTop) {
            //垂直居中(图片在上)
            //图片
            CGPoint imageCenter = self.imageView.center;
            imageCenter.x = self.frame.size.width/2;
            imageCenter.y = self.imageView.frame.size.height/2 + marginH;
            self.imageView.center = imageCenter;
            
            //文字
            CGRect newFrame = self.titleLabel.frame;
            newFrame.origin.x = 0;
            newFrame.origin.y = self.imageView.frame.origin.y + self.imageView.frame.size.height + self.index;
            newFrame.size.width = self.frame.size.width;
            newFrame.size.height = self.frame.size.height - self.imageView.frame.origin.y - self.imageView.frame.size.height;
            self.titleLabel.frame = newFrame;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }else if(self.style == ZQButtonEdgeInsetsStyleLeft){
            //水平居中(图片在左)
            //图片
            CGPoint imageCenter = self.imageView.center;
            imageCenter.x = (self.imageView.frame.size.width)/2;
            imageCenter.y = self.frame.size.height/2;
            self.imageView.center = imageCenter;
            
            //文字
            CGPoint labelCenter = self.titleLabel.center;
            labelCenter.x = self.imageView.frame.origin.x + self.imageView.frame.size.width + self.index + (self.frame.size.width - self.index - self.imageView.frame.size.width)/2;
            labelCenter.y = imageCenter.y;
            CGRect newFrame = self.titleLabel.frame;
            newFrame.origin.x = 0;
            newFrame.origin.y = 0;
            newFrame.size.width = self.frame.size.width - self.index - self.imageView.frame.size.width;
            newFrame.size.height = self.frame.size.height;
            self.titleLabel.frame = newFrame;
            self.titleLabel.center = labelCenter;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }else if (self.style == ZQButtonEdgeInsetsStyleBottom){
            //垂直居中(图片在下)
            //文字
            CGRect newFrame = self.titleLabel.frame;
            newFrame.origin.x = 0;
            newFrame.origin.y = 0;
            newFrame.size.width = self.frame.size.width;
            newFrame.size.height = newFrame.size.height;
            self.titleLabel.frame = newFrame;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            
            //图片
            CGPoint imageCenter = self.imageView.center;
            imageCenter.x = self.frame.size.width/2;
            imageCenter.y = self.imageView.frame.size.height/2 + marginH + self.index + newFrame.size.height;
            self.imageView.center = imageCenter;
            
        }else if (self.style == ZQButtonEdgeInsetsStyleRight){
            //水平居中(图片在右)
            //文字
            CGPoint labelCenter = self.titleLabel.center;
            labelCenter.x = (self.frame.size.width - self.index - self.iconsize.width)/2;
            labelCenter.y = self.titleLabel.center.y;
            CGRect newFrame = self.titleLabel.frame;
            newFrame.origin.x = 0;
            newFrame.origin.y = 0;
            newFrame.size.width = self.frame.size.width - self.index - self.iconsize.width;
            newFrame.size.height = self.frame.size.height;
            self.titleLabel.frame = newFrame;
            self.titleLabel.center = labelCenter;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            
            //图片
            CGPoint imageCenter = self.imageView.center;
            imageCenter.x = self.index + newFrame.size.width + (self.iconsize.width)/2;
            imageCenter.y = self.frame.size.height/2;
            self.imageView.center = imageCenter;
        }
    }
}
@end
