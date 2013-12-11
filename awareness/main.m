//
//  main.m
//  awareness
//
//  Created by Dawa Lama on 12/5/13.
//  Copyright (c) 2013 Dawa Lama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Pixate/Pixate.h>

#import "AwareAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        [Pixate licenseKey:@"NNHLK-49O99-GFCVM-VCG7D-VOOFK-B2I14-E41MK-363G6-US9IB-SC7F7-S4EI5-U02HN-Q6GRG-ADVVL-2UJ68-KI" forUser:@"dawalama@gmail.com"];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AwareAppDelegate class]));
    }
}
