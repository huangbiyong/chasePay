//
//  Pay.h
//  支付宝
//
//  Created by huangbiyong on 2017/12/22.
//  Copyright © 2017年 com.chase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APOrderInfo.h"
#import <AlipaySDK/AlipaySDK.h>
#import "APRSASigner.h"

@interface Pay : NSObject

- (void)doAPPay;

@end
