//
//  HelloC.c
//  hello
//
//  Created by abc123 on 2018/6/22.
//  Copyright © 2018年 abc123. All rights reserved.
//

#include "HelloC.h"

/* 函数返回两个数中较大的那个数 */
int max(int num1, int num2)
{
    /* 局部变量声明 */
    int result;
    
    if (num1 > num2)
        result = num1;
    else
        result = num2;
    
    return result;
}
struct RecTangle{
    int width; int height;
    int pos_x; int pos_y;
};
void hehe(){
  struct  RecTangle i;
  struct   RecTangle *j = &i;
    i.width = 50;
    j->pos_y = 30;
    i.pos_y = 20;
    j->pos_y = 10;

    printf("i = %d,j = %d",i.pos_y,(*j).width);
}
