//
//  DMCollectionViewCell.m
//  DMHorizontalListViewSample
//
//  Created by demin on 16/8/11.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import "DMCollectionViewCell.h"

@implementation DMCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    self.backgroundColor = [UIColor whiteColor];
    self.goodsImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 85, 85)];
    self.goodsImageView.backgroundColor = [UIColor whiteColor];
    self.goodsNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 85 + 5, 85, 40)];
    self.goodsNameLabel.textColor = [UIColor blackColor];
    self.goodsNameLabel.numberOfLines = 2;
    self.goodsNameLabel.font = [UIFont systemFontOfSize:14];
    self.goodsNameLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.goodsImageView];
    [self.contentView addSubview:self.goodsNameLabel];
}

//set data
- (void)configureCellWithInfo:(NSDictionary *)data {
    self.goodsImageView.image = [UIImage imageNamed:[data objectForKey:@"imageName"]];
    self.goodsNameLabel.text = [data objectForKey:@"goodsName"];
}





@end
