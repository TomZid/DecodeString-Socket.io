//
//  ViewController.m
//  utf8
//
//  Created by tom on 27/11/2017.
//  Copyright © 2017 TD. All rights reserved.
//

#import "ViewController.h"
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import "Decode.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self func];
}

- (void)func {
    NSString *string = @"[帅气]";

    @try {
        NSString *str = [[Decode new] decode:string];
        NSLog(@"str == %@", str);
    } @catch (NSException *e) {
        NSLog(@"\n exception.reason == %@ \n", e.name);
    } @finally {

    }
}
@end
