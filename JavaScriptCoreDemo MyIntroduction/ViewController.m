//
//  ViewController.m
//  JavaScriptCoreDemo MyIntroduction
//
//  Created by JasonZhy on 16/3/21.
//  Copyright © 2016年 JasonZhy. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //http://www.itdadao.com/article/568253/
    //http://blog.iderzheng.com/ios7-objects-management-in-javascriptcore-framework/
    JSContext *context = [[JSContext alloc] init];
    context.exceptionHandler = ^(JSContext *cont, JSValue *exception) {
        cont.exception = exception;
        NSLog(@"Excetion:%@",exception);
    };
    
    context[@"log"] = ^(){
        NSArray *args = [JSContext currentArguments];
        for (id obj in args) {
            NSLog(@"LOG:%@",obj);
        }
    };
    
    
    
    
}


@end
