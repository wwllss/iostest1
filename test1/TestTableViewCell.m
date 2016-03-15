//
//  TestTableViewCell.m
//  test1
//
//  Created by zhangyuan on 16/3/15.
//  Copyright © 2016年 zhangyuan. All rights reserved.
//

#import "TestTableViewCell.h"

@interface TestTableViewCell()

@property(nonatomic,strong) UILabel *label;

@end

@implementation TestTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initSubViews];
    }
    return self;
}

-(void)updateWithEntryObject:(LSInteger *)data{
    _label.text = [NSString stringWithFormat:@"%ld",(long)data.position];
}

- (void) initSubViews{
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 99)];
    [_label setTextColor:[UIColor blackColor]];
    [_label setTextAlignment:NSTextAlignmentCenter];
    _label.text = @"-1";
    [self.contentView addSubview:_label];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
