//
//  BigCompanyViewController.h
//  Eco & Fresh
//
//  Created by Lu Chen on 13-12-22.
//  Copyright (c) 2013年 ecoandfresh.com.au. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "imageView.h"

@interface BigCompanyViewController : UIViewController <UIScrollViewDelegate>

@property NSString *theValueProduct, *theValueAmount, *theValuePeriod;

@property (weak, nonatomic) IBOutlet UIButton *premiumImageBtn;

@property (weak, nonatomic) IBOutlet UIButton *standardImageBtn;
@property (weak, nonatomic) IBOutlet UIButton *economyImageBtn;

@property (weak, nonatomic) IBOutlet UIButton *premiumSelectBtn;
@property (weak, nonatomic) IBOutlet UIButton *standardSelectBtn;
@property (weak, nonatomic) IBOutlet UIButton *economySelectBtn;
@property (weak, nonatomic) IBOutlet UIButton *amount200Btn;
@property (weak, nonatomic) IBOutlet UIButton *amount500Btn;
@property (weak, nonatomic) IBOutlet UIButton *amount1000Btn;
@property (weak, nonatomic) IBOutlet UIButton *amount2000Btn;
@property (weak, nonatomic) IBOutlet UIButton *amount3000Btn;
@property (weak, nonatomic) IBOutlet UIButton *period1Year;
@property (weak, nonatomic) IBOutlet UIButton *period2Year;
@property (weak, nonatomic) IBOutlet UIButton *period3Year;
@property UIImageView *imageViewOfBig;
@property UIWindow *window;
@property (strong, nonatomic) UIView *backgroundView;
@property int currentImageIndex;
@property NSString *imageNameOfNext;
@property UIButton *selectBtn, *cancelBtn;
@property float lastScale, lastRotattion, firstX, firstY;

- (IBAction)premiumImageBtnAction:(id)sender;
- (IBAction)standardImageBtnAction:(id)sender;
- (IBAction)economyImageBtnAction:(id)sender;
- (IBAction)premiumSelectBtnAction:(id)sender;
- (IBAction)standardSelectAction:(id)sender;
- (IBAction)economySelectAction:(id)sender;
- (IBAction)amount200BtnAction:(id)sender;
- (IBAction)amount500BtnAction:(id)sender;
- (IBAction)amount1000BtnAction:(id)sender;
- (IBAction)amount2000Action:(id)sender;
- (IBAction)amount3000Action:(id)sender;
- (IBAction)period1YearAction:(id)sender;
- (IBAction)period2YearAction:(id)sender;
- (IBAction)period3YearAction:(id)sender;
- (void)selectBtnAction:(id)sender;
- (void)cancelBtnAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *getPriceBtn;
- (IBAction)getPriceBtnAction:(id)sender;



- (void) showImage:(UIImageView *)imageView;
- (void) hideImage:(UITapGestureRecognizer*)tap;
- (void) nextImage: (UITapGestureRecognizer*)tap;

- (void) showPrice: (NSString *)product second: (NSString *)amount third: (NSString *)period;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;




@end
