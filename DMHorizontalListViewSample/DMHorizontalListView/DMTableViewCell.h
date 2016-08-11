//
//  DMTableViewCell.h
//  DMHorizontalListViewSample
//
//  Created by demin on 16/8/11.
//  Copyright © 2016年 Demin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMCollectionViewCell.h"

@interface DMCollectionView : UICollectionView

@property (nonatomic, strong) NSIndexPath *indexPath;

@end

static NSString *CollectionViewCellIdentifier = @"CollectionViewCellIdentifier";

@interface DMTableViewCell : UITableViewCell

@property (nonatomic, strong) DMCollectionView *collectionView;
@property (nonatomic, strong) UIImageView *itemImageView;
@property (nonatomic, strong) UILabel *contentLabel;

- (void)setCollectionViewDataSourceDelegate:(id<UICollectionViewDelegate, UICollectionViewDataSource>)dataSourceDelegate indexPath:(NSIndexPath *)indexPath;

- (void)configureCellWithInfo:(NSDictionary *)data;


@end
