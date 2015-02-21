//
//  ViewController.h
//  InvokerProTrainer1
//
//  Created by Vladas Zakrevskis on 28.12.14.
//  Copyright (c) 2014 Vladas Zakrevskis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    
    IBOutlet UIImageView *i1;
    
    IBOutlet UIImageView *i2;
    
    IBOutlet UIImageView *i3;
    
    
    IBOutlet UIView *back;
    
    IBOutlet UILabel *screen;
    
    IBOutlet UILabel *spell;
    
    
    IBOutlet UILabel *s1;
    
    IBOutlet UILabel *s2;
    
    IBOutlet UILabel *s3;
    
    
   IBOutlet UIButton *quasButton;
   IBOutlet UIButton *wexButton;
   IBOutlet UIButton *exortButton;
   IBOutlet UIButton *invokeButton;
   
  
    
    int x;
    int sp1,sp2,sp3;
    
    NSInteger key;
    
}

@property (weak, nonatomic) IBOutlet UIButton *quasButton;
@property (weak, nonatomic) IBOutlet UIButton *wexButton;
@property (weak, nonatomic) IBOutlet UIButton *exortButton;
@property (weak, nonatomic) IBOutlet UIButton *invokeButton;

@property (weak, nonatomic) IBOutlet UIImageView *spellView;


@property (weak, nonatomic) IBOutlet UIImageView *sphereView3;
@property (weak, nonatomic) IBOutlet UIImageView *sphereView2;
@property (weak, nonatomic) IBOutlet UIImageView *sphereView1;



@property (weak, nonatomic) IBOutlet UIImageView *buttonBackImg;
@property (weak, nonatomic) IBOutlet UIImageView *buttonBackImg2;
@property (weak, nonatomic) IBOutlet UIImageView *buttonBackImg3;
@property (weak, nonatomic) IBOutlet UIImageView *buttonBackImg4;
@property (weak, nonatomic) IBOutlet UIImageView *buttonBackImg5;




- (IBAction)qwe:(id)sender;

- (IBAction)invoke:(id)sender;




@end

