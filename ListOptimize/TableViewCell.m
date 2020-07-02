//
//  TableViewCell.m
//  ListOptimize
//
//  Created by Katherine on 2020/7/2.
//  Copyright © 2020 JiuwenDragon. All rights reserved.
//

#import "TableViewCell.h"
#import "UIView+Graphic.h"

@interface TableViewCell ()

@property (nonatomic, strong) UIImageView *imgView1;
@property (nonatomic, strong) UIImageView *imgView2;
@property (nonatomic, strong) UIImageView *imgView3;
@property (nonatomic, strong) UIImageView *imgView4;

@end


@implementation TableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createUI];
    }
    return self;;
}


#pragma mark    ================  Private Functions  ================

- (void)createUI {
    [self addSubview:self.imgView1];
    [self addSubview:self.imgView2];
    [self addSubview:self.imgView3];
    [self addSubview:self.imgView4];
}


- (UIImageView *)addImagesWith:(int)size {
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(size, 10, 80, 80)];
    UIImage *img = [UIImage imageNamed:@"chiji.jpg"];
    img = [UIView cutCircleImageWithImage:img size:CGSizeMake(80, 80) radious:40];
    imgView.image = img;
//    imgView.layer.cornerRadius = 40;
//    imgView.clipsToBounds = YES;
    return imgView;;
}

#pragma mark    ================   lazyLoad  ================

- (UIImageView *)imgView1 {
    if (!_imgView1) {
        _imgView1 = [self addImagesWith:20];
    }
    return _imgView1;
}
- (UIImageView *)imgView2 {
    if (!_imgView2) {
        _imgView2 = [self addImagesWith:110];
    }
    return _imgView2;
}
- (UIImageView *)imgView3 {
    if (!_imgView3) {
        _imgView3 = [self addImagesWith:200];
    }
    return _imgView3;
}
- (UIImageView *)imgView4 {
    if (!_imgView4) {
        _imgView4 = [self addImagesWith:290];
    }
    return _imgView4;
}



@end
