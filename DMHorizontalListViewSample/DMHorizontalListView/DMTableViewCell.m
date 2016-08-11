//
//  DMTableViewCell.m
//  DMHorizontalListViewSample
//
//  Created by demin on 16/8/11.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import "DMTableViewCell.h"

@implementation DMCollectionView

@end

@implementation DMTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    CGFloat tempImageWith = [UIScreen mainScreen].bounds.size.width / 640;
    CGFloat tempHeight = 480 * tempImageWith;
    
    self.itemImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, tempHeight)];
    self.itemImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.itemImageView.clipsToBounds = YES;
    [self.contentView addSubview:_itemImageView];
    
    self.contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, _itemImageView.frame.size.height + 10, [UIScreen mainScreen].bounds.size.width - 20, 40)];
    self.contentLabel.font = [UIFont systemFontOfSize:16];
    self.contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.contentLabel.numberOfLines = 0;
    [self.contentView addSubview:_contentLabel];
    
    /********************************************/
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    layout.itemSize = CGSizeMake(85, 85 + 45);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.collectionView = [[DMCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    self.collectionView.frame = CGRectMake(0, tempHeight + 10 + 50 + 5, [UIScreen mainScreen].bounds.size.width, 85 + 45);
    [self.collectionView registerClass:[DMCollectionViewCell class] forCellWithReuseIdentifier:CollectionViewCellIdentifier];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    UIView  *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, tempHeight + 205, [UIScreen mainScreen].bounds.size.width, 10)];
    lineView.backgroundColor = [UIColor colorWithRed:0.8755 green:0.8755 blue:0.8755 alpha:1.0];
    
    [self.contentView addSubview:lineView];
    
    [self.contentView addSubview:self.collectionView];
}

- (void)configureCellWithInfo:(NSDictionary *)data {
    self.itemImageView.image = [UIImage imageNamed:[data objectForKey:@"imageName"]];
    self.contentLabel.text = [data objectForKey:@"content"];
}

- (void)setCollectionViewDataSourceDelegate:(id<UICollectionViewDelegate,UICollectionViewDataSource>)dataSourceDelegate indexPath:(NSIndexPath *)indexPath {
    self.collectionView.dataSource = dataSourceDelegate;
    self.collectionView.delegate = dataSourceDelegate;
    self.collectionView.indexPath = indexPath;
    [self.collectionView setContentOffset:self.collectionView.contentOffset animated:NO];
    [self.collectionView reloadData];
}






@end
