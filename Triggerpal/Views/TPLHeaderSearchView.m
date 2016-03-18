//
//  TPLHeaderSearchView.m
//  Triggerpal
//
//  Created by Liam Dyer on 3/17/16.
//  Copyright © 2016 Liam Dyer. All rights reserved.
//

#import "TPLHeaderSearchView.h"
#import "TPLColors.h"
#import "Masonry.h"
#import <QuartzCore/QuartzCore.h>

@implementation TPLHeaderSearchView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.backgroundColor = LIGHT_BACKGROUND;
    
    // Create title view
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"Triggerpal";
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font = [UIFont fontWithName:@"Edmondsans-Bold" size:64.0];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.top.equalTo(self.mas_top).offset(40);
        make.height.equalTo(@77);
    }];
    
    
    UIView *searchBackgroundView = [[UIView alloc] init];
    searchBackgroundView.backgroundColor = DARK_BACKGROUND;
    searchBackgroundView.layer.cornerRadius = 30;
    [self addSubview:searchBackgroundView];
    [searchBackgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(21);
        make.right.equalTo(self.mas_right).offset(-21);
        make.bottom.equalTo(self.mas_bottom).offset(-34);
        make.height.equalTo(@52);
    }];
    
    UITextField *searchTextField = [[UITextField alloc] init];
    searchTextField.attributedPlaceholder = [[NSAttributedString alloc]
                                             initWithString:@"SEARCH MOVIES"
                                                 attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor],
                                                              NSFontAttributeName: [UIFont fontWithName:@"Edmondsans-Regular"
                                                                                                   size:24.0]}];
    searchTextField.font = [UIFont fontWithName:@"Edmondsans-Regular" size:24.0];
    searchTextField.textColor = [UIColor whiteColor];
    [searchBackgroundView addSubview:searchTextField];
    [searchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(searchBackgroundView.mas_centerY);
        make.left.equalTo(searchBackgroundView.mas_left).offset(73);
        make.right.equalTo(searchBackgroundView.mas_right);
        make.height.equalTo(@29);
    }];
}

@end
