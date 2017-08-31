//
//  ViewController.m
//  Singleton
//
//  Created by boy on 2017/8/31.
//  Copyright © 2017年 pjy. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"


@interface ViewController () {

}


@end

@implementation ViewController

static int a = 1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Singleton* obj1 = [Singleton share] ;
    NSLog(@"obj1 = %@.    naem = %@", obj1, obj1.name) ;
    
    Singleton* obj2 = [Singleton share] ;
    NSLog(@"obj2 = %@.    naem = %@", obj2, obj2.name) ;
    
    //
    Singleton* obj3 = [[Singleton alloc] init] ;
    NSLog(@"obj3 = %@.    naem = %@", obj3, obj3.name) ;
    
    Singleton* obj4 = [[Singleton alloc] init] ;
    NSLog(@"obj4 = %@.    naem = %@", obj4, obj4.name) ;

}

- (void)test {
    static int a = 10;
    
    NSLog(@"%i", a += 1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
