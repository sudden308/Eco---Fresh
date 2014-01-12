//
//  BigCompanyViewController2.h
//  Eco & Fresh
//
//  Created by Lu Chen on 14-1-12.
//  Copyright (c) 2014年 ecoandfresh.com.au. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigCompanyViewController2 : UIViewController <UIScrollViewAccessibilityDelegate, UIScrollViewDelegate>


@property NSString *theValueProduct, *theValueAmount, *theValuePeriod;

@property (weak, nonatomic)  UIButton *premiumImageBtn;

@property (weak, nonatomic)  UIButton *standardImageBtn;
@property (weak, nonatomic)  UIButton *economyImageBtn;

@property (weak, nonatomic)  UIButton *premiumSelectBtn;
@property (weak, nonatomic)  UIButton *standardSelectBtn;
@property (weak, nonatomic)  UIButton *economySelectBtn;
@property (weak, nonatomic)  UIButton *amount200Btn;
@property (weak, nonatomic)  UIButton *amount500Btn;
@property (weak, nonatomic)  UIButton *amount1000Btn;
@property (weak, nonatomic)  UIButton *amount2000Btn;
@property (weak, nonatomic)  UIButton *amount3000Btn;
@property (weak, nonatomic)  UIButton *period1Year;
@property (weak, nonatomic)  UIButton *period2Year;
@property (weak, nonatomic)  UIButton *period3Year;
@property UIImageView *imageViewOfBig;
@property UIWindow *window;
@property (strong, nonatomic) UIView *backgroundView;
@property int currentImageIndex;
@property NSString *imageNameOfNext;
@property UIButton *selectBtn, *cancelBtn;
@property float lastScale, lastRotattion, firstX, firstY;
@property (weak, nonatomic) UILabel *totalPayLabel;
@property (weak, nonatomic) UILabel *perTowelPrice;
@property (weak, nonatomic)  UILabel *perWeekPrice;


@property (weak, nonatomic) UIImageView *image1;
@property (weak, nonatomic) UIImageView *image2;
@property (weak, nonatomic) UILabel *label1;
@property (weak, nonatomic) UILabel *label2;
@property (weak, nonatomic) UILabel *label3;

@property (weak, nonatomic)  UIImageView *image3;
@property (weak, nonatomic)  UIImageView *image4;
@property (weak, nonatomic) UILabel *label4;
@property (weak, nonatomic) UILabel *label5;
@property (weak, nonatomic) UILabel *label6;
@property (weak, nonatomic) UILabel *label7;
@property (weak, nonatomic)  UILabel *label8;

@property (weak, nonatomic)  UIImageView *image5;
@property (weak, nonatomic) UIImageView *image6;
@property (weak, nonatomic) UILabel *label9;
@property (weak, nonatomic) UILabel *label10;
@property (weak, nonatomic)  UILabel *label11;

@property (weak, nonatomic) UIButton *getPriceBtn;

@property (weak, nonatomic) IBOutlet UIScrollView *scroll;





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


- (IBAction)getPriceBtnAction:(id)sender;



- (void) showImage:(UIImageView *)imageView;
- (void) hideImage:(UITapGestureRecognizer*)tap;
- (void) nextImage: (UITapGestureRecognizer*)tap;

- (void) showPrice: (NSString *)product second: (NSString *)amount third: (NSString *)period;


@property (weak, nonatomic) UILabel *priceLabel;

-(UIButton *) generateBtn: (CGRect )area
               background:(UIImage*)img;
-(UILabel *)generateLabel: (CGRect)area
                     text: (NSString *)text
                     size: (CGFloat)size;
-(UIImageView *)generateImg: (CGRect)area
                imgName: (NSString *)imgName;

@end
