//
//  DPActionSheet.h
//  DPActionSheetDemo
//
//  Created by developeng on 2018/1/11.
//  Copyright © 2018年 developeng. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DPActionSheetDelegate;
@interface DPActionSheet : UIView
@property(weak, nonatomic) id <DPActionSheetDelegate> delegate;
@property(strong, nonatomic) NSString *title;
@property(strong, nonatomic) NSString *cancelButtonTitle;

- (id)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;
- (void)show;
- (void)hide;
- (void)setTitleColor:(UIColor *)color fontSize:(CGFloat)size;
- (void)setButtonTitleColor:(UIColor *)color bgColor:(UIColor *)bgcolor fontSize:(CGFloat)size atIndex:(int)index;
- (void)setCancelButtonTitleColor:(UIColor *)color bgColor:(UIColor *)bgcolor fontSize:(CGFloat)size;

@end

@protocol DPActionSheetDelegate <NSObject>
@optional
- (void)actionSheetCancel:(DPActionSheet *)actionSheet;
- (void)actionSheet:(DPActionSheet *)sheet clickedButtonIndex:(NSInteger)buttonIndex;
@end
