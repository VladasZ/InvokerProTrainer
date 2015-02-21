//
//  ViewController.m
//  InvokerProTrainer1
//
//  Created by Vladas Zakrevskis on 28.12.14.
//  Copyright (c) 2014 Vladas Zakrevskis. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //фон
    
    UIImage *backImage = [UIImage imageNamed:@"back2"];
    UIColor *backColor = [UIColor colorWithPatternImage:backImage];
    self.view.backgroundColor = backColor;
    
    
    //кнопки
    
    UIImage *quasButtonImg = [UIImage imageNamed:@"Quas"];
    UIImage *wexButtonImg = [UIImage imageNamed:@"Wex"];
    UIImage *exortButtonImg = [UIImage imageNamed:@"Exort"];
    UIImage *invokeButtonImg = [UIImage imageNamed:@"invoke"];
    
    [self.quasButton setBackgroundImage:quasButtonImg forState:UIControlStateNormal];
    [self.wexButton setBackgroundImage:wexButtonImg forState:UIControlStateNormal];
    [self.exortButton setBackgroundImage:exortButtonImg forState:UIControlStateNormal];
    [self.invokeButton setBackgroundImage:invokeButtonImg forState:UIControlStateNormal];
    
    //фон кнопок
    
    UIImage *buttonBack = [UIImage imageNamed:@"buttonBack"];
    UIImage *buttonBackResize = [buttonBack resizableImageWithCapInsets:UIEdgeInsetsMake(7, 7, 7, 7)];
    self.buttonBackImg.image = buttonBackResize;
    self.buttonBackImg2.image = buttonBackResize;
    self.buttonBackImg3.image = buttonBackResize;
    self.buttonBackImg4.image = buttonBackResize;
    self.buttonBackImg5.image = buttonBackResize;
    

 
}


- (IBAction)qwe:(id)sender;{
    
    
    
    sp3=sp2;
    sp2=sp1;
    sp1 = [sender tag];
    
    UIImage *sphereQuas = [UIImage imageNamed:@"dQuas"];
    UIImage *sphereWex = [UIImage imageNamed:@"dWex"];
    UIImage *sphereExort = [UIImage imageNamed:@"dExort"];
    
    
    [self countSpellN];
    x = (10.0f * x) + [sender tag];
    [self spellN];
    
    
    /////////////////////////////////////////////////
    if (sp1==1) {
        self.sphereView1.image = sphereQuas;
    }
    if (sp1==2) {
        self.sphereView1.image = sphereWex;
    }
    if (sp1==3) {
        self.sphereView1.image = sphereExort;
    }
    /////////////////////////////////////////////////
    if (sp2==1) {
        self.sphereView2.image = sphereQuas;
    }
    if (sp2==2) {
        self.sphereView2.image = sphereWex;
    }
    if (sp2==3) {
        self.sphereView2.image = sphereExort;
    }
    /////////////////////////////////////////////////
    if (sp3==1) {
        self.sphereView3.image = sphereQuas;
    }
    if (sp3==2) {
        self.sphereView3.image = sphereWex;
    }
    if (sp3==3) {
        self.sphereView3.image = sphereExort;
    }
    /////////////////////////////////////////////////
    
    
}

- (IBAction)invoke:(id)sender;{
    
    //скиллы
    UIImage *alacrityImg = [UIImage imageNamed:@"alacrity"];
    UIImage *chaosMeteorImg = [UIImage imageNamed:@"chaosMeteor"];
    UIImage *coldSnapImg = [UIImage imageNamed:@"coldSnap"];
    UIImage *deafeningBlastImg = [UIImage imageNamed:@"deafeningBlast"];
    UIImage *EMPImg = [UIImage imageNamed:@"EMP"];
    UIImage *forgeSpiritImg = [UIImage imageNamed:@"forgeSpirit"];
    UIImage *ghostWalkImg = [UIImage imageNamed:@"ghostWalk"];
    UIImage *iceWallImg = [UIImage imageNamed:@"iceWall"];
    UIImage *sunStrikeImg = [UIImage imageNamed:@"sunStrike"];
    UIImage *tornadoImg = [UIImage imageNamed:@"tornado"];
    
    if (x==111) {
        [screen setText:@"Cold Snap"];
        self.spellView.image = coldSnapImg;
    }
    if (x==222) {
        [screen setText:@"EMP"];
        self.spellView.image = EMPImg;
    }
    if (x==333) {
        [screen setText:@"Sun Strike"];
        self.spellView.image = sunStrikeImg;
    }
    if (x==112||x==211||x==121) {
        [screen setText:@"Ghost Walk"];
        self.spellView.image = ghostWalkImg;
    }
    if (x==221||x==122||x==212) {
        [screen setText:@"Tornado"];
        self.spellView.image = tornadoImg;
    }
    if (x==223||x==322||x==232) {
        [screen setText:@"Alacrity"];
        self.spellView.image = alacrityImg;
    }
    if (x==332||x==233||x==323) {
        [screen setText:@"Meteorite"];
        self.spellView.image = chaosMeteorImg;
    }
    if (x==113||x==311||x==131) {
        [screen setText:@"Ice Wall"];
        self.spellView.image = iceWallImg;
        
    }
    if (x==331||x==133||x==313) {
        [screen setText:@"Forge Spirit's"];
        self.spellView.image = forgeSpiritImg;
    }
    if (x==123||x==132||x==213||x==231||x==321||x==312) {
        [screen setText:@"Deafening Blast"];
        self.spellView.image = deafeningBlastImg;
    }
    
}

- (void) spellN {
    NSString *str = [NSString stringWithFormat:@"%d", x ];
    [spell setText:str];
}

- (void) countSpellN {
    if (x>100) {
        int t = x/100;
        x -= t*100;
    }
}

    





@end
