//
//  BigCompanyViewController.m
//  Eco & Fresh
//
//  Created by Lu Chen on 13-12-22.
//  Copyright (c) 2013年 ecoandfresh.com.au. All rights reserved.
//

#import "BigCompanyViewController.h"


@interface BigCompanyViewController ()

@end

@implementation BigCompanyViewController

@synthesize theValueProduct, theValueAmount, theValuePeriod;
@synthesize priceLabel, totalPayLabel, perTowelPrice, perWeekPrice;
@synthesize amount1000Btn, amount2000Btn, amount200Btn, amount3000Btn, amount500Btn;
@synthesize premiumImageBtn, standardImageBtn, economyImageBtn, premiumSelectBtn, standardSelectBtn, economySelectBtn, period1Year, period2Year, period3Year, getPriceBtn;
@synthesize imageViewOfBig, window, backgroundView;
@synthesize currentImageIndex;
@synthesize imageNameOfNext;
@synthesize selectBtn, cancelBtn;
@synthesize lastScale, lastRotattion, firstX, firstY;

@synthesize image1, image2, label1, label2, label3;
@synthesize image3, image4, label4, label5, label6, label7, label8;
@synthesize image5, image6, label9, label10, label11;

@synthesize scroll;

static CGRect oldframe;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    
    [super viewDidLoad];
    
  
	// Do any additional setup after loading the view.
    /*
    amount200Btn.layer.masksToBounds = YES;
    amount200Btn.layer.cornerRadius = 30;
 
    
    
    amount500Btn.layer.masksToBounds = YES;
    amount500Btn.layer.cornerRadius = 30;
    
    amount1000Btn.layer.masksToBounds = YES;
    amount1000Btn.layer.cornerRadius = 30;
    
    amount2000Btn.layer.masksToBounds = YES;
    amount2000Btn.layer.cornerRadius = 30;

    amount3000Btn.layer.masksToBounds = YES;
    amount3000Btn.layer.cornerRadius = 30;
    
    
    
    premiumSelectBtn.layer.masksToBounds = YES;
    premiumSelectBtn.layer.cornerRadius = 10;
    */
    
   // premiumImageBtn.layer.masksToBounds = YES;
   // premiumImageBtn.layer.cornerRadius = 20;
    
    
    
    standardSelectBtn.layer.masksToBounds = YES;
    standardSelectBtn.layer.cornerRadius = 10;

   // standardImageBtn.layer.masksToBounds = YES;
   // standardImageBtn.layer.cornerRadius = 20;

    economySelectBtn.layer.masksToBounds = YES;
    economySelectBtn.layer.cornerRadius = 10;

  //  economyImageBtn.layer.masksToBounds = YES;
   // economyImageBtn.layer.cornerRadius = 20;
    /*
    period1Year.layer.masksToBounds = YES;
    period1Year.layer.cornerRadius = 20;

    period2Year.layer.masksToBounds = YES;
    period2Year.layer.cornerRadius = 20;

    period3Year.layer.masksToBounds = YES;
    period3Year.layer.cornerRadius = 20;
     */
    priceLabel.layer.masksToBounds = YES;
    priceLabel.layer.cornerRadius = 10;
    //[priceLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"contentbox.png"]]];
    totalPayLabel.layer.masksToBounds = YES;
    totalPayLabel.layer.cornerRadius = 10;
    //[totalPayLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"contentbox.png"]]];

   perTowelPrice.layer.masksToBounds = YES;
   perTowelPrice.layer.cornerRadius = 10;
        //[perTowelPrice setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"contentbox.png"]]];
    perWeekPrice.layer.masksToBounds = YES;
    perWeekPrice.layer.cornerRadius = 10;
        //[perWeekPrice setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"contentbox.png"]]];
    //getPriceBtn.layer.masksToBounds = YES;
    //getPriceBtn.layer.cornerRadius = 20;
    /*
    UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.jpg"]];
    [self.view setBackgroundColor:bgImg];
     */

   // [self allIntoScollView];

    // [self viewWillLayoutSubviews2];

}

-(void) allIntoScollView
{
    
    
  
    /*
    [scroll addSubview:premiumImageBtn];
    [scroll addSubview:economyImageBtn];
    [scroll addSubview:standardImageBtn];
    
    
    UIButton *btn1 = [[UIButton alloc]init];
    btn1 = premiumImageBtn;
    [scroll addSubview:btn1];
    
    [scroll addSubview:premiumSelectBtn];
    [scroll addSubview:standardSelectBtn];
    [scroll addSubview:economySelectBtn];
    
    [scroll addSubview:amount1000Btn];
    [scroll addSubview:amount2000Btn];
    [scroll addSubview:amount3000Btn];
    [scroll addSubview:amount200Btn];
    [scroll addSubview:amount500Btn];
    
    [scroll addSubview:period1Year];
    [scroll addSubview:period2Year];
    [scroll addSubview:period3Year];
    
    [scroll addSubview:getPriceBtn];
    
    [scroll addSubview:image1];
    [scroll addSubview:image2];
    [scroll addSubview:label1];
    [scroll addSubview:label2];
    [scroll addSubview:label3];
    
    [scroll addSubview:image3];
    [scroll addSubview:image4];
    [scroll addSubview:label4];
    [scroll addSubview:label5];
    [scroll addSubview:label6];
    [scroll addSubview:label7];
    [scroll addSubview:label8];
    
    [scroll addSubview:image5];
    [scroll addSubview:image6];
    [scroll addSubview:label9];
    [scroll addSubview:label10];
    [scroll addSubview:label11];
    
    [scroll addSubview:priceLabel];
    [scroll addSubview:totalPayLabel];
    [scroll addSubview:perWeekPrice];
    [scroll addSubview:perTowelPrice];
    */
    
    //UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.jpg"]];
    //[scroll setBackgroundColor:bgImg];
    
    [scroll setContentSize:CGSizeMake(self.view.frame.size.height, 1600.0)];
    [scroll setScrollEnabled:YES];
    scroll.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    
    //self.view = scroll;
    //scroll = (UIScrollView *)self.view;
    

  

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getPriceBtnAction:(id)sender {
    [self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
}

- (void)selectBtnAction:(id)sender
{
        if([imageViewOfBig.image isEqual:[UIImage imageNamed:@"luxuary.jpg"]])
        {
            theValueProduct = @"Premium";
            [self hideImage2];
            
            /*
            premiumImageBtn.backgroundColor = [UIColor colorWithWhite:.8 alpha:1.0];
            standardImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
            economyImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
            */
            
            
            [premiumImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-selected@2x.png"] forState:UIControlStateNormal];
            
            [standardImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
            
            [economyImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
            
            
            
        } else if ([imageViewOfBig.image isEqual:[UIImage imageNamed:@"standard.jpg"]]) {
        
            theValueProduct = @"Standard";
            [self hideImage2];
            
            /*
            standardImageBtn.backgroundColor = [UIColor lightGrayColor];
            premiumImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
            economyImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
            */
            
            [standardImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-selected@2x.png"] forState:UIControlStateNormal];
            
            [premiumImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
            
            [economyImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
            
        } else if([imageViewOfBig.image isEqual:[UIImage imageNamed:@"economy.jpg"]]) {
            
            theValueProduct = @"Economy";
            [self hideImage2];
            
            /*
            economyImageBtn.backgroundColor = [UIColor lightGrayColor];
            standardImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
            premiumImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
            */
            
            [economyImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-selected@2x.png"] forState:UIControlStateNormal];
            
            [standardImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
            
            [premiumImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
            
        }
}

- (void)cancelBtnAction:(id)sender
{
    [self hideImage2];
}

-(void)showImage:(UIImageView *)avatarImageView{
    UIImage *image=avatarImageView.image;
    
    window=[UIApplication sharedApplication].keyWindow;
    backgroundView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    oldframe=[avatarImageView convertRect:avatarImageView.bounds toView:window];
    backgroundView.backgroundColor=[UIColor blackColor];
    backgroundView.alpha=0;
    imageViewOfBig =[[UIImageView alloc]initWithFrame:oldframe];
    imageViewOfBig.image=image;
    imageViewOfBig.tag=1;
    imageViewOfBig.autoresizesSubviews = YES;
    imageViewOfBig.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    backgroundView.autoresizesSubviews = YES;
    backgroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    
    [imageViewOfBig setUserInteractionEnabled:YES];
    [imageViewOfBig setMultipleTouchEnabled:YES];
    
    selectBtn = [[UIButton alloc]initWithFrame:CGRectMake(150.0, 30.0, 100, 50)];
    [selectBtn setTitle:@"Select" forState:UIControlStateNormal];
    [selectBtn setBackgroundColor:[UIColor whiteColor]];
    [selectBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [selectBtn.titleLabel setFont:[UIFont fontWithName:@"Times-Bold" size:18]];
    selectBtn.layer.masksToBounds = YES;
    selectBtn.layer.cornerRadius = 20;
    [selectBtn addTarget:self action:@selector(selectBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    cancelBtn = [[UIButton alloc]initWithFrame:CGRectMake(300.0, 30.0, 100, 50)];
    [cancelBtn setTitle:@"Cancel" forState:UIControlStateNormal];
    [cancelBtn setBackgroundColor:[UIColor whiteColor]];
    [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cancelBtn.titleLabel setFont:[UIFont fontWithName:@"Times-Bold" size:18]];
    cancelBtn.layer.masksToBounds = YES;
    cancelBtn.layer.cornerRadius = 20;
    [cancelBtn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [backgroundView addSubview:selectBtn];
    [backgroundView addSubview:cancelBtn];
    [backgroundView addSubview:imageViewOfBig];
    [window addSubview:backgroundView];
    
    
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(nextImage:)];
    [backgroundView addGestureRecognizer: tap];
    
    [UIView animateWithDuration:0.3 animations:^{
        imageViewOfBig.frame=CGRectMake(0,([UIScreen mainScreen].bounds.size.height-image.size.height*[UIScreen mainScreen].bounds.size.width/image.size.width)/2, [UIScreen mainScreen].bounds.size.width, image.size.height*[UIScreen mainScreen].bounds.size.width/image.size.width);
        backgroundView.alpha=1;
    } completion:^(BOOL finished) {
        
    }];
    
    UIPinchGestureRecognizer *pinchRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(scale:)];
    [backgroundView addGestureRecognizer:pinchRecognizer];
    
    UIRotationGestureRecognizer *rotationRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotate:)];
    [backgroundView addGestureRecognizer:rotationRecognizer];
    
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(move:)];
    [panRecognizer setMinimumNumberOfTouches:1];
    [panRecognizer setMaximumNumberOfTouches:1];
    [backgroundView addGestureRecognizer:panRecognizer];
    
    [self viewWillLayoutSubviews];

}

-(void)hideImage:(UITapGestureRecognizer*)tap{
    
    backgroundView=tap.view;
    UIImageView *imageView=(UIImageView*)[tap.view viewWithTag:1];
    /*
    UIImageView *imgView = [[imageView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    imgView.image = [UIImage imageNamed:@"luxuary.jpg"];
    [self showImage:imgView];
     */
    
    [UIView animateWithDuration:0.3 animations:^{
        imageView.frame=oldframe;
        backgroundView.alpha=0;
    } completion:^(BOOL finished) {
        [backgroundView removeFromSuperview];
    }];
    
}

-(void) hideImage2
{
    backgroundView.alpha=0;
    [backgroundView removeFromSuperview];
}

- (void) nextImage: (UITapGestureRecognizer*)tap
{
    if (currentImageIndex == 0) {
        currentImageIndex = 1;
    }else if(currentImageIndex == 1) {
        currentImageIndex = 2;
    }else if(currentImageIndex == 2) {
        currentImageIndex = 0;
    }else {}
    
    if (currentImageIndex >= 0) {
        switch (currentImageIndex) {
            case 0:
                imageNameOfNext = @"luxuary.jpg";
                break;
            case 1:
                imageNameOfNext = @"standard.jpg";
                break;
            case 2:
                imageNameOfNext = @"economy.jpg";
                break;
        }
    }
    
    UIImageView *imgView = [[imageView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    imgView.image = [UIImage imageNamed:imageNameOfNext];
    [self hideImage2];
    [self showImage:imgView];
}

    - (void) showPrice: (NSString *)product second: (NSString *)amount third: (NSString *)period
{
    if (theValuePeriod != nil && theValueAmount != nil && theValueProduct != nil) {
        NSString *price = [[product stringByAppendingString:amount] stringByAppendingString:period];
        priceLabel.text = [@"Price: " stringByAppendingString:price];
    }else {
        priceLabel.text = @"Price: ";
    }
}

- (IBAction)premiumImageBtnAction:(id)sender {
    UIImageView *imgView = [[imageView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    imgView.image = [UIImage imageNamed:@"luxuary.jpg"];
    [self showImage:imgView];
    currentImageIndex = 0;
}

- (IBAction)standardImageBtnAction:(id)sender {
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    imgView.image = [UIImage imageNamed:@"standard.jpg"];
    [self showImage:imgView];
    currentImageIndex = 1;
}

- (IBAction)economyImageBtnAction:(id)sender {
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 300, 300)];
    imgView.image = [UIImage imageNamed:@"economy.jpg"];
    [self showImage:imgView];
    currentImageIndex = 2;
}

- (IBAction)premiumSelectBtnAction:(id)sender {
    theValueProduct = @"Premium";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    premiumImageBtn.backgroundColor = [UIColor lightGrayColor];
    standardImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
    economyImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
    */
    
    
                [premiumImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-selected@2x.png"] forState:UIControlStateNormal];
    
              [standardImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
    
              [economyImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
    
}


- (IBAction)standardSelectAction:(id)sender {
    theValueProduct = @"Standard";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    standardImageBtn.backgroundColor = [UIColor lightGrayColor];
    premiumImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
    economyImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
    */
    
    
    [standardImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-selected@2x.png"] forState:UIControlStateNormal];
    
    [premiumImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
    
    [economyImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
    
    
     }

- (IBAction)economySelectAction:(id)sender {
    theValueProduct = @"Economy";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    economyImageBtn.backgroundColor = [UIColor lightGrayColor];
    standardImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
    premiumImageBtn.backgroundColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:100.0/255.0 alpha:1.0];
    */
    
    
    [economyImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-selected@2x.png"] forState:UIControlStateNormal];
    
    [standardImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
    
    [premiumImageBtn setBackgroundImage:[UIImage imageNamed:@"J1-green-normal@2x.png"] forState:UIControlStateNormal];
    
}

- (IBAction)amount200BtnAction:(id)sender {
    theValueAmount = @"200";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    amount200Btn.backgroundColor = [UIColor lightGrayColor];
    amount500Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
        amount1000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    
    amount2000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount3000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    */
    
    
    [amount200Btn setBackgroundImage:[UIImage imageNamed:@"200_normal_down.png"] forState:UIControlStateNormal];
    [amount500Btn setBackgroundImage:[UIImage imageNamed:@"500_normal.png"] forState:UIControlStateNormal];
[amount1000Btn setBackgroundImage:[UIImage imageNamed:@"1000_normal.png"] forState:UIControlStateNormal];
    [amount2000Btn setBackgroundImage:[UIImage imageNamed:@"2000_normal.png"] forState:UIControlStateNormal];
[amount3000Btn setBackgroundImage:[UIImage imageNamed:@"3000_normal.png"] forState:UIControlStateNormal];
    

}

- (IBAction)amount500BtnAction:(id)sender {
    theValueAmount = @"500";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    amount500Btn.backgroundColor = [UIColor lightGrayColor];
    amount200Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount1000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount2000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount3000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    */
    
    
    [amount500Btn setBackgroundImage:[UIImage imageNamed:@"500_normal_down.png"] forState:UIControlStateNormal];
    [amount200Btn setBackgroundImage:[UIImage imageNamed:@"200_normal.png"] forState:UIControlStateNormal];
    [amount1000Btn setBackgroundImage:[UIImage imageNamed:@"1000_normal.png"] forState:UIControlStateNormal];
    [amount2000Btn setBackgroundImage:[UIImage imageNamed:@"2000_normal.png"] forState:UIControlStateNormal];
    [amount3000Btn setBackgroundImage:[UIImage imageNamed:@"3000_normal.png"] forState:UIControlStateNormal];
    
}

- (IBAction)amount1000BtnAction:(id)sender {
    theValueAmount = @"1000";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    amount1000Btn.backgroundColor = [UIColor lightGrayColor];
    amount500Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount200Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    
    amount2000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount3000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    */
    
    
    [amount1000Btn setBackgroundImage:[UIImage imageNamed:@"1000_normal_down.png"] forState:UIControlStateNormal];
    [amount500Btn setBackgroundImage:[UIImage imageNamed:@"500_normal.png"] forState:UIControlStateNormal];
    [amount200Btn setBackgroundImage:[UIImage imageNamed:@"200_normal.png"] forState:UIControlStateNormal];
    [amount2000Btn setBackgroundImage:[UIImage imageNamed:@"2000_normal.png"] forState:UIControlStateNormal];
    [amount3000Btn setBackgroundImage:[UIImage imageNamed:@"3000_normal.png"] forState:UIControlStateNormal];
    
}

- (IBAction)amount2000Action:(id)sender {
    theValueAmount = @"2000";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    amount2000Btn.backgroundColor = [UIColor lightGrayColor];
    amount500Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount1000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    
    amount200Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount3000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    */
    
    
    [amount2000Btn setBackgroundImage:[UIImage imageNamed:@"2000_normal_down.png"] forState:UIControlStateNormal];
    [amount500Btn setBackgroundImage:[UIImage imageNamed:@"500_normal.png"] forState:UIControlStateNormal];
    [amount1000Btn setBackgroundImage:[UIImage imageNamed:@"1000_normal.png"] forState:UIControlStateNormal];
    [amount200Btn setBackgroundImage:[UIImage imageNamed:@"200_normal.png"] forState:UIControlStateNormal];
    [amount3000Btn setBackgroundImage:[UIImage imageNamed:@"3000_normal.png"] forState:UIControlStateNormal];
    
}

- (IBAction)amount3000Action:(id)sender
{
    theValueAmount = @"3000";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    amount3000Btn.backgroundColor = [UIColor lightGrayColor];
    amount500Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount1000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount2000Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    amount200Btn.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:51.0/255.0 alpha:1.0];
    */
    
    
    [amount3000Btn setBackgroundImage:[UIImage imageNamed:@"3000_normal_down.png"] forState:UIControlStateNormal];
    [amount500Btn setBackgroundImage:[UIImage imageNamed:@"500_normal.png"] forState:UIControlStateNormal];
    [amount1000Btn setBackgroundImage:[UIImage imageNamed:@"1000_normal.png"] forState:UIControlStateNormal];
    [amount2000Btn setBackgroundImage:[UIImage imageNamed:@"2000_normal.png"] forState:UIControlStateNormal];
    [amount200Btn setBackgroundImage:[UIImage imageNamed:@"200_normal.png"] forState:UIControlStateNormal];
     
}

- (IBAction)period1YearAction:(id)sender {
    theValuePeriod = @"1 Year";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    period1Year.backgroundColor = [UIColor lightGrayColor];
    period2Year.backgroundColor = [UIColor colorWithRed:102.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    period3Year.backgroundColor = [UIColor colorWithRed:102.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    */
    
    
    [period1Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-selected@2x.png"] forState:UIControlStateNormal];
    
    [period2Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-normal@2x.png"] forState:UIControlStateNormal];
    
    [period3Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-normal@2x.png"] forState:UIControlStateNormal];
    
}

- (IBAction)period2YearAction:(id)sender {
    theValuePeriod = @"2 Year";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    period2Year.backgroundColor = [UIColor lightGrayColor];
    period1Year.backgroundColor = [UIColor colorWithRed:102.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    period3Year.backgroundColor = [UIColor colorWithRed:102.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    */
    
    
    [period2Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-selected@2x.png"] forState:UIControlStateNormal];
    
    [period1Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-normal@2x.png"] forState:UIControlStateNormal];
    
    [period3Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-normal@2x.png"] forState:UIControlStateNormal];
    
}

- (IBAction)period3YearAction:(id)sender {
    theValuePeriod = @"3 Year";
    //[self showPrice: theValueProduct second: theValueAmount third: theValuePeriod];
    /*
    period3Year.backgroundColor = [UIColor lightGrayColor];
    period2Year.backgroundColor = [UIColor colorWithRed:102.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    period1Year.backgroundColor = [UIColor colorWithRed:102.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    */
    
    
    [period3Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-selected@2x.png"] forState:UIControlStateNormal];
    
    [period2Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-normal@2x.png"] forState:UIControlStateNormal];
    
    [period1Year setBackgroundImage:[UIImage imageNamed:@"J1-blue-normal@2x.png"] forState:UIControlStateNormal];
    
}

- (void)viewWillLayoutSubviews
{
  
    //if(selectBtn != nil && cancelBtn != nil && imageViewOfBig != nil) {
          UIInterfaceOrientation orient = [UIApplication sharedApplication].statusBarOrientation;
        
        if(orient == UIInterfaceOrientationLandscapeLeft) {
            
        selectBtn.transform = CGAffineTransformMakeRotation(-M_PI/2);
        cancelBtn.transform = CGAffineTransformMakeRotation(-M_PI/2);
        imageViewOfBig.transform = CGAffineTransformMakeRotation(-M_PI/2);
            
            UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.jpg"]];
            [self.view setBackgroundColor:bgImg];
            
             
            
        }else if(orient == UIInterfaceOrientationLandscapeRight) {
        
        selectBtn.transform = CGAffineTransformMakeRotation(M_PI/2);
        cancelBtn.transform = CGAffineTransformMakeRotation(M_PI/2);
        imageViewOfBig.transform = CGAffineTransformMakeRotation(M_PI/2);
            
        UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.jpg"]];
        [self.view setBackgroundColor:bgImg];
            

            
        }else if(orient == UIInterfaceOrientationPortraitUpsideDown) {
        
        selectBtn.transform = CGAffineTransformMakeRotation(-M_PI);
        cancelBtn.transform = CGAffineTransformMakeRotation(-M_PI);
        imageViewOfBig.transform = CGAffineTransformMakeRotation(-M_PI);
            
        UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.jpg"]];
        [self.view setBackgroundColor:bgImg];
            

    }else {
        selectBtn.transform = CGAffineTransformIdentity;
        cancelBtn.transform = CGAffineTransformIdentity;
        imageViewOfBig.transform = CGAffineTransformIdentity;
        
        UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.jpg"]];
        [self.view setBackgroundColor:bgImg];
        
    }
   // }
    
    [self allIntoScollView];
}

- (void)viewWillLayoutSubviews2
{
    

        UIInterfaceOrientation orient = [UIApplication sharedApplication].statusBarOrientation;
        
        if(orient == UIInterfaceOrientationLandscapeLeft) {
            
            UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.jpg"]];
            [self.view setBackgroundColor:bgImg];
            
            

            
        }else if(orient == UIInterfaceOrientationLandscapeRight) {
            
            UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background2.jpg"]];
            [self.view setBackgroundColor:bgImg];
            
    
            
        }else if(orient == UIInterfaceOrientationPortraitUpsideDown) {
            
                UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.jpg"]];
            [self.view setBackgroundColor:bgImg];
 
        }else {
            
              UIColor *bgImg = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background1.jpg"]];
            [self.view setBackgroundColor:bgImg];
 
        }
    
}

#pragma image gesture

-(void)scale:(id)sender {
    
    if([(UIPinchGestureRecognizer*)sender state] == UIGestureRecognizerStateBegan) {
        lastScale = 1.0;
    }
    
    CGFloat scale = 1.0 - (lastScale - [(UIPinchGestureRecognizer*)sender scale]);
    
    CGAffineTransform currentTransform = imageViewOfBig.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, scale, scale);
    
    [imageViewOfBig setTransform:newTransform];
    
    lastScale = [(UIPinchGestureRecognizer*)sender scale];

}


-(void)rotate:(id)sender {
    
    if([(UIRotationGestureRecognizer*)sender state] == UIGestureRecognizerStateEnded) {
        
        lastRotattion = 0.0;
        return;
    }
    
    CGFloat rotation = 0.0 - (lastRotattion - [(UIRotationGestureRecognizer*)sender rotation]);
    
    CGAffineTransform currentTransform = imageViewOfBig.transform;
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransform,rotation);
    
    [imageViewOfBig setTransform:newTransform];
    
    lastRotattion = [(UIRotationGestureRecognizer*)sender rotation];
}

-(void)move:(id)sender {
    
    CGPoint translatedPoint = [(UIPanGestureRecognizer*)sender translationInView:backgroundView];
    
    if([(UIPanGestureRecognizer*)sender state] == UIGestureRecognizerStateBegan) {
        firstX = [imageViewOfBig center].x;
        firstY = [imageViewOfBig center].y;
    }
    
    translatedPoint = CGPointMake(firstX+translatedPoint.x, firstY+translatedPoint.y);
    
    [imageViewOfBig setCenter:translatedPoint];
}

-(UIImage *)colorizeImage:(UIImage *)baseImage color:(UIColor *)theColor {
    UIGraphicsBeginImageContext(baseImage.size);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect area = CGRectMake(0, 0, baseImage.size.width, baseImage.size.height);
    
    CGContextScaleCTM(ctx, 1, -1);
    CGContextTranslateCTM(ctx, 0, -area.size.height);
    CGContextSaveGState(ctx);
    CGContextClipToMask(ctx, area, baseImage.CGImage);
    [theColor set];
    CGContextFillRect(ctx, area);
    CGContextRestoreGState(ctx);
    CGContextSetBlendMode(ctx, kCGBlendModeNormal);
    CGContextDrawImage(ctx, area, baseImage.CGImage);
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

-(UIButton *) generateBtn: (CGRect *)area
               background:(UIImage*)img
                   action: (NSString *)actionName
{
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = *(area);
    [btn addTarget:self action:@selector(actionName) forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

@end
