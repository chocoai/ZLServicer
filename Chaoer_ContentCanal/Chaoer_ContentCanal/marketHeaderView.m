//
//  marketHeaderView.m
//  Chaoer_ContentCanal
//
//  Created by Mac on 16/7/15.
//  Copyright © 2016年 zongyoutec.com. All rights reserved.
//

#import "marketHeaderView.h"

@implementation marketHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (marketHeaderView *)shareHeaderView{

    marketHeaderView *view = [[[NSBundle mainBundle] loadNibNamed:@"marketHeaderView" owner:self options:nil] objectAtIndex:0];
    return view;
}

+ (marketHeaderView *)shareFooterView{
    
    marketHeaderView *view = [[[NSBundle mainBundle] loadNibNamed:@"marketFooterView" owner:self options:nil] objectAtIndex:0];
    return view;
}

+ (marketHeaderView *)shareBottomView{
    
    marketHeaderView *view = [[[NSBundle mainBundle] loadNibNamed:@"marketBottomView" owner:self options:nil] objectAtIndex:0];
    
    view.mLeftBtn.layer.masksToBounds = view.mRightBtn.layer.masksToBounds = YES;
    view.mLeftBtn.layer.cornerRadius = view.mRightBtn.layer.cornerRadius = 3;
    
    view.mLeftBtn.layer.borderColor = [UIColor colorWithRed:0.27 green:0.27 blue:0.27 alpha:1.00].CGColor;
    view.mRightBtn.layer.borderColor = [UIColor redColor].CGColor;

    view.mLeftBtn.layer.borderWidth = 0.5;
    
    return view;
}
@end