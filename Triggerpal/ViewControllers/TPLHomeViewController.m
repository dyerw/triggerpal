//
//  TPLHomeViewController.m
//  Triggerpal
//
//  Created by Liam Dyer on 3/17/16.
//  Copyright © 2016 Liam Dyer. All rights reserved.
//

#import "TPLHomeViewController.h"
#import "Masonry.h"

#import "TPLHeaderSearchView.h"

@interface TPLHomeViewController ()

@end

@implementation TPLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

- (void)setupViews {
    TPLHeaderSearchView *headerSearchView = [[TPLHeaderSearchView alloc] init];
    [self.view addSubview:headerSearchView];
    [headerSearchView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.height.equalTo(@250);
    }];
}


@end
