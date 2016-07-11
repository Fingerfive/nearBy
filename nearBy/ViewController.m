//
//  ViewController.m
//  nearBy
//
//  Created by 千锋 on 16/6/1.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "ViewController.h"
#import "Define.h"



#import "SViewController.h"//跳转的第二界面

#import "HQEllipticAnimationButton.h"
#import "HQEllipticMotionAnimation.h"//导入可以动的球

 

@interface ViewController ()

@end

@implementation ViewController{

   

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self createBallButtonWithFrame:CGRectMake(WIDTH * 0.2, 0.5 * HEIGHT - WIDTH * 0.3 + 30, WIDTH / 3.8 * 2, WIDTH / 3.8 * 2) title:@"景点" imageName:@"testImage"];
    
    [self createBallButtonWithFrame:CGRectMake(WIDTH * 5 / 6.0 - WIDTH / 5.0, HEIGHT * 0.5 - WIDTH / 4.5, WIDTH / 3.0, WIDTH / 3.0 ) title:@"住宿" imageName:@"testImage"];
    
    [self createBallButtonWithFrame:CGRectMake( WIDTH * 3 / 4.0 - WIDTH / 7.0, HEIGHT / 2.0 + WIDTH / 6, WIDTH / 7.0 * 2, WIDTH / 7.0 * 2) title:@"美食" imageName:@"testImage"];
    
    [self createBallButtonWithFrame:CGRectMake( 20, HEIGHT / 2.0 + WIDTH / 6.5  , WIDTH / 6.5 * 2, WIDTH / 6.5 * 2) title:@"娱乐" imageName:@"testImage"];
    
    [self createBallButtonWithFrame:CGRectMake( WIDTH / 12 + 5, HEIGHT / 2.0 - 10 - WIDTH / 6.0, WIDTH / 5.0, WIDTH / 5.0) title:@"购物" imageName:@"testImage"];
    
    
    
}

-(void) createBallButtonWithFrame:(CGRect) frame
                            title:(NSString *)title
                        imageName:(NSString *)imageName{
    
    static int i = 1;
    HQEllipticAnimationButton *ellipticBtn = [[HQEllipticAnimationButton alloc] initWithFrame:frame imageName:imageName];
    
    ellipticBtn.tag = NEARBY_TAG + i;
    i++;
    
    [ellipticBtn setTitle:title forState:UIControlStateNormal];
    [ellipticBtn addTarget:self action:@selector(onclick:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:ellipticBtn];
    
    [self.view sendSubviewToBack:ellipticBtn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)onclick:(UIButton *)btn {
    
    //关闭所有圆球的点击事件
    
    [self.view setUserInteractionEnabled:NO];
    
    if(btn.tag != NEARBY_TAG + 1){
    
        //将该视图放到最上面
        [self.view bringSubviewToFront:btn];
    }
    
    [UIView animateWithDuration:1 animations:^{
        [btn setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
        btn.alpha = 0.5;
    } completion:^(BOOL finished) {
     
        if(btn.tag != NEARBY_TAG + 1){
            
            //将该视图放到最上面
            [self.view sendSubviewToBack:btn];
        }
        
        [self.navigationController pushViewController:[SViewController new] animated:NO];
        [self.view setUserInteractionEnabled:YES];
        [btn setTransform:CGAffineTransformMakeScale(1, 1)];
        btn.alpha = 1;
    }];
    
}

-(void) setUserJurisdiction{ //设置


}
@end
