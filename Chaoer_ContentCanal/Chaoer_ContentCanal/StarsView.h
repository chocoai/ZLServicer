//
//  StarsView.h
//  StarDemo
//
//  Created by fuguangxin on 15/4/29.
//  Copyright (c) 2015年 fuguangxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StartWithRateIndexDelegate <NSObject>

@optional

- (void)StartWithRateIndex:(NSInteger)mIndex andStarsViewTag:(NSInteger)mTag;

@end

@interface StarsView : UIView
@property (assign,nonatomic) NSInteger mTag;
@property (nonatomic, assign) BOOL selectable;  //是否触摸选择分数
@property (nonatomic, assign) CGFloat score;    //分数
@property (nonatomic, assign) BOOL supportDecimal; //是否支持触摸选择小数

@property (strong,nonatomic) id <StartWithRateIndexDelegate> delegate;

//size是你的图片的size   space是Star间的间距  
- (instancetype)initWithStarSize:(CGSize)size space:(CGFloat)space numberOfStar:(NSInteger)number;

@end
