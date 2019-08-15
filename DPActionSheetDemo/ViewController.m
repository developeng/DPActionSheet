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
    NSArray *buttonArrI = @[@"去搭配1", @"收藏2",@"加关注3", @"屏蔽4",@"去搭配5", @"收藏6",@"加关注7", @"屏蔽8",@"去搭配9", @"收藏10",@"加关注11", @"屏蔽12",@"去搭配13", @"收藏14",@"加关注15", @"屏蔽16",@"去搭配17", @"收藏18",@"加关注19", @"屏蔽20",@"去搭配21", @"收藏22",@"加关注23", @"屏蔽24",@"去搭配25", @"收藏26",@"加关注27", @"屏蔽28"];
    
     NSArray *buttonArrII = @[@"去搭配1", @"收藏2",@"加关注3", @"屏蔽4",@"去搭配5", @"收藏6",@"加关注7"];
    
    switch (sender.tag) {
        case 1:{
            DPActionSheet *sheet = [[DPActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"去搭配1", @"收藏2",@"加关注3", @"屏蔽4",@"去搭配5", @"收藏6",@"加关注7",@"加关注8", nil];
            sheet.tag = 10;
            [sheet show];
            
        }
            break;
        case 2:{
            DPActionSheet *sheet = [[DPActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" otherButtonArr:buttonArrI];
            sheet.tag = 11;
            [sheet show];
            
        }
            break;
        case 3:{
            DPActionSheet *sheet = [[DPActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"去搭配1", @"收藏2",@"加关注3", @"屏蔽4",@"去搭配5", @"收藏6",@"加关注7", @"屏蔽8",@"去搭配9", @"收藏10",@"加关注11", @"屏蔽12",@"去搭配13", @"收藏14",@"加关注15", @"屏蔽16",@"去搭配17", @"收藏18",@"加关注19", @"屏蔽20",@"去搭配21", @"收藏22",@"加关注23", @"屏蔽24",@"去搭配25", @"收藏26",@"加关注27", @"屏蔽28", nil];
            sheet.tag = 12;
            [sheet show];
            
        }
            break;
        case 4:{
            DPActionSheet *sheet = [[DPActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" otherButtonArr:buttonArrII];
            sheet.tag = 13;
            [sheet show];
            
        }
            break;
            
        default:
            break;
    }
}

- (void)actionSheet:(DPActionSheet *)sheet clickedButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"%@",sheet.buttonName);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
