//
//  homeTableViewCell.m
//  Chaoer_ContentCanal
//
//  Created by 王钶 on 16/3/10.
//  Copyright © 2016年 zongyoutec.com. All rights reserved.
//

#import "homeTableViewCell.h"

@implementation homeTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews{

    [super layoutSubviews];
    self.mImg.layer.masksToBounds = self.mBgk.layer.masksToBounds = YES;
    self.mImg.layer.cornerRadius = self.mBgk.layer.cornerRadius = 3;
}

@end
