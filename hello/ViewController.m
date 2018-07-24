//
//  ViewController.m
//  hello
//
//  Created by abc123 on 2018/5/24.
//  Copyright © 2018年 abc123. All rights reserved.
//

#import "ViewController.h"
#include "HelloC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * button =[UIButton buttonWithType:UIButtonTypeCustom ];
    button.frame = CGRectMake(44, 44, 44, 44);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    NSMutableArray * aa =[NSMutableArray arrayWithCapacity:10];
    [aa addObject:@"ssss"];
   
    for (int i = 1; i<100; i++) {
        NSString *a = [aa objectAtIndex:i];
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
