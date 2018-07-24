//
//  VCOneViewController.m
//  hello
//
//  Created by abc123 on 2018/6/8.
//  Copyright © 2018年 abc123. All rights reserved.
//

#import "VCOneViewController.h"
#include "HelloC.h"
#import "Masonry.h"
@interface VCOneViewController (){
    UILabel * label1;
}

@end

@implementation VCOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * view2 = [UIView new];
    view2.backgroundColor =[UIColor greenColor];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
      //  make.centerX.equalTo(self.view);
       // make.centerY.equalTo(self.view);
        make.top.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(300);
    }];
    
    
    UIView * view = [UIView new];
    view.backgroundColor =[UIColor purpleColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(300);
    }];
    
   
    
    label1 = [UILabel new];
    label1.backgroundColor = [UIColor blueColor];
    [view addSubview:label1];
    
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(view).multipliedBy(0.25);
       // make.height.mas_equalTo( view.frame.size.height-100);
        make.height.equalTo(view.mas_height).offset(-100);
//        make.top.equalTo(view);
//        make.left.equalTo(view);
        make.top.mas_equalTo(10);
        make.left.mas_equalTo(view).offset(100);
       // make.centerX.mas_equalTo(50);
       // make.centerY.mas_equalTo(-50);
    }];
    

/* label1 = [UILabel new];
    label1.backgroundColor = [UIColor redColor];
    [self.view addSubview:label1];
    
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(view).multipliedBy(0.25);
        make.height.mas_equalTo(self.view.frame.size.height - 20);
        make.centerX.mas_equalTo(self.view);
        make.centerY.mas_equalTo(self.view);
    }];
    */
    
    UILabel * label2 = [UILabel new];
    label2.backgroundColor = [UIColor yellowColor];
    [view addSubview:label2];
    
    
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
       make.width.equalTo(self.view).multipliedBy(0.25);
      // make.height.mas_equalTo(self.view.frame.size.height - 20);
        make.height.equalTo(label1);
//        make.top.mas_equalTo(10);
//
//        make.right.mas_equalTo(30);
       // make.centerX.equalTo(label1 .mas_left);
        make.left.mas_equalTo(label1.mas_right).offset(10);
        make.top.mas_equalTo(20);
       
       
    }];
    
    UIButton * btn =[UIButton buttonWithType:UIButtonTypeCustom ];
    [btn setTitle:@"fsf" forState:UIControlStateNormal ];
    btn.backgroundColor = [UIColor redColor];
   
    [btn addTarget:self action:@selector(sss) forControlEvents:UIControlEventTouchUpInside ];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.right.mas_equalTo(-50) ;
      // make.left.mas_equalTo( 50);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
        
    }];
    
     NSLog(@"%d",max(1,2))  ;
    hehe();
    // Do any additional setup after loading the view from its nib.
}
-(void)sss{
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
    }];
}
- (IBAction)btnslfjlsdfj:(id)sender {
    NSLog(@"sdfsd");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn1:(id)sender {
}
@end
