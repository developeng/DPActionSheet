//
//  ViewController.m
//  DPActionSheetDemo
//
//  Created by developeng on 2018/1/11.
//  Copyright © 2018年 developeng. All rights reserved.
//

#import "ViewController.h"
#import "DPActionSheet.h"

@interface ViewController ()<DPActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)buttonClick:(UIButton *)sender {
    
    DPActionSheet *sheet = [[DPActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"去搭配", @"收藏",@"加关注", @"屏蔽", nil];
    sheet.tag = 10;
    [sheet show];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
