//
//  ViewController.m
//  ZQButtonExample
//
//  Created by ime on 2017/10/27.
//  Copyright © 2017年 Colion. All rights reserved.
//

#import "ViewController.h"
#import "ZQButton.h"
#import "NSString+Size.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadFirstBtn];
    [self loadSecondBtn];
    [self loadThridBtn];
    [self loadFourthBtn];
    
    
}
- (void)loadFirstBtn{
    CGSize screanSize = [UIScreen mainScreen].bounds.size;
    ZQButton *btn = [ZQButton buttonWithType:UIButtonTypeCustom];
    btn.style = ZQButtonEdgeInsetsStyleTop;
    btn.iconsize = CGSizeMake(42, 42);
    btn.index = 4;
    [btn setImage:[UIImage imageNamed:@"pic"] forState:UIControlStateNormal];
    [btn setTitle:@"图片在上文字在下" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    CGSize size = [btn.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:btn.titleLabel.font} maxSize:CGSizeMake(screanSize.width, MAXFLOAT)];
    btn.frame = CGRectMake((screanSize.width - size.width) / 2, 50, size.width, size.height + btn.iconsize.width + btn.index);
    [self.view addSubview:btn];
}
- (void)loadSecondBtn{
    CGSize screanSize = [UIScreen mainScreen].bounds.size;
    ZQButton *btn = [ZQButton buttonWithType:UIButtonTypeCustom];
    btn.style = ZQButtonEdgeInsetsStyleBottom;
    btn.iconsize = CGSizeMake(42, 42);
    btn.index = 4;
    [btn setImage:[UIImage imageNamed:@"pic"] forState:UIControlStateNormal];
    [btn setTitle:@"文字在上图片在下" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    CGSize size = [btn.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:btn.titleLabel.font} maxSize:CGSizeMake(screanSize.width, MAXFLOAT)];
    btn.frame = CGRectMake((screanSize.width - size.width) / 2, 150, size.width, size.height + btn.iconsize.width + btn.index);
    [self.view addSubview:btn];
}
- (void)loadThridBtn{
    CGSize screanSize = [UIScreen mainScreen].bounds.size;
    ZQButton *btn = [ZQButton buttonWithType:UIButtonTypeCustom];
    btn.style = ZQButtonEdgeInsetsStyleLeft;
    btn.iconsize = CGSizeMake(42, 42);
    btn.index = 4;
    [btn setImage:[UIImage imageNamed:@"pic"] forState:UIControlStateNormal];
    [btn setTitle:@"图片在左文字在右" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    CGSize size = [btn.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:btn.titleLabel.font} maxSize:CGSizeMake(screanSize.width, MAXFLOAT)];
    btn.frame = CGRectMake((screanSize.width - size.width) / 2, 250, size.width + btn.iconsize.width + btn.index, btn.iconsize.width);
    [self.view addSubview:btn];
}
- (void)loadFourthBtn{
    CGSize screanSize = [UIScreen mainScreen].bounds.size;
    ZQButton *btn = [ZQButton buttonWithType:UIButtonTypeCustom];
    btn.style = ZQButtonEdgeInsetsStyleRight;
    btn.iconsize = CGSizeMake(42, 42);
    btn.index = 4;
    [btn setImage:[UIImage imageNamed:@"pic"] forState:UIControlStateNormal];
    [btn setTitle:@"文字在左图片在右" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    CGSize size = [btn.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:btn.titleLabel.font} maxSize:CGSizeMake(screanSize.width, MAXFLOAT)];
    btn.frame = CGRectMake((screanSize.width - size.width) / 2, 350, size.width + btn.iconsize.width + btn.index, btn.iconsize.width);
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
