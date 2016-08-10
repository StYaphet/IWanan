//
//  WannaItemCell.m
//  IWanna
//
//  Created by 郝一鹏 on 16/8/10.
//  Copyright © 2016年 bupt. All rights reserved.
//

#import "WannaItemCell.h"
#import "WannaItem.h"
#import "UIView+Frame.h"

@implementation WannaItemCell {
    UILabel *_nameLabel;
    UILabel *_totalDaysLabel;
    UILabel *_lastPersistentLabel;
}

+ (void)heightWithObject:(id)object {
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _totalDaysLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _lastPersistentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    }
    return self;
}

- (void)updateWithObject:(id)object {
    
    WannaItem *item = object;
    _nameLabel.text = item.name;
    [_nameLabel sizeToFit];
    _totalDaysLabel.text = [NSString stringWithFormat:@"你一共坚持了%ld", item.totalDays];
    [_totalDaysLabel sizeToFit];
    _lastPersistentLabel.text = [NSString stringWithFormat:@"上次连续坚持了%ld天",item.lastPersistenDays];
    [_lastPersistentLabel sizeToFit];
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _nameLabel.top = 15;
    _nameLabel.left = 15;
    
    _lastPersistentLabel.left = _nameLabel.left;
    _lastPersistentLabel.top = _totalDaysLabel.bottom + 10;
    
    _totalDaysLabel.top = _nameLabel.bottom + 10;
    _totalDaysLabel.left = _nameLabel.left;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
