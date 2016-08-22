//
//  ViewController.m
//  Demo-CustomQRCore
//
//  Created by YourtionGuo on 6/5/14.
//  Copyright (c) 2014 yourtion. All rights reserved.
//

#import "ViewController.h"
#import "CustomQRCode.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *qrcodeView;
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    // Only one line
    UIColor *customColor = [UIColor colorWithRed:60.f/255.f green:74.f/255.f blue:89.f/255.f alpha:1.f];
    UIImage *customQrcode = [CustomQRCode generateCustomQRCode:@"http://blog.yourtion.com" andSize:250.f andColor:customColor];
    
    // Old method
//    CIImage *qrcodeCg = [CustomQRCode createQRForString:@"http://blog.yourtion.com"];
//    UIImage *qrcode = [CustomQRCode createNonInterpolatedUIImageFormCIImage:qrcodeCg withSize:250.0f];
//    UIImage *customQrcode = [CustomQRCode imageBlackToTransparent:qrcode withRed:60.0f andGreen:74.0f andBlue:89.0f];
    
    self.qrcodeView.image = customQrcode;
    // set shadow
    [CustomQRCode setImageViewShadow:self.qrcodeView];
//    self.qrcodeView.layer.shadowOffset = CGSizeMake(0, 2);
//    self.qrcodeView.layer.shadowRadius = 2;
//    self.qrcodeView.layer.shadowColor = [UIColor blackColor].CGColor;
//    self.qrcodeView.layer.shadowOpacity = 0.5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
