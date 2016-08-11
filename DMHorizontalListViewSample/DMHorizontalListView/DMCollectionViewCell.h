//
//  DMCollectionViewCell.h
//  DMHorizontalListViewSample
//
//  Created by demin on 16/8/11.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *goodsNameLabel;
@property (nonatomic, strong) UIImageView *goodsImageView;

- (void)configureCellWithInfo:(NSDictionary *)data;

@end
