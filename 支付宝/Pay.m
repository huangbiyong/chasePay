//
//  Pay.m
//  支付宝
//
//  Created by huangbiyong on 2017/12/22.
//  Copyright © 2017年 com.chase. All rights reserved.
//

#import "Pay.h"

@implementation Pay

- (void)doAPPay {
    // 重要说明
    // 这里只是为了方便直接向商户展示支付宝的整个支付流程；所以Demo中加签过程直接放在客户端完成；
    // 真实App里，privateKey等数据严禁放在客户端，加签过程务必要放在服务端完成；
    // 防止商户私密数据泄露，造成不必要的资金损失，及面临各种安全风险；
    /*============================================================================*/
    /*=======================需要填写商户app申请的===================================*/
    /*============================================================================*/
    NSString *appID = @"2017122201072627";
    
    // 如下私钥，rsa2PrivateKey 或者 rsaPrivateKey 只需要填入一个
    // 如果商户两个都设置了，优先使用 rsa2PrivateKey
    // rsa2PrivateKey 可以保证商户交易在更加安全的环境下进行，建议使用 rsa2PrivateKey
    // 获取 rsa2PrivateKey，建议使用支付宝提供的公私钥生成工具生成，
    // 工具地址：https://doc.open.alipay.com/docs/doc.htm?treeId=291&articleId=106097&docType=1
    NSString *rsa2PrivateKey = @"MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRiejustHDWVVQqt4l2XoXpCpujjUBwK7K0gvA/QXhqFccjeFXdaF99WLF6cuhW63DBeV0bhMGYkhM8+meySbYM5SdtPGr43gv727H3ClI2DS1xZnoKGKCTRcN+meX8lzmhbg2xWlw3zU+XUsN/bZBVh4GJ1sZ0DQneh4UHnOwicJnpk+eqKbO2r0UAWEZ1rhRR5RoryMlhSEg/mdhR0GSZqKlisBZYsY/J+WNsa21/K10+FsVb2p3yOOcD2X3+EPvVqIR8KYDxlZTh6p0zSpq6uks9BZLhL225xe8ViWxVTZI08Gxs9Tvd0vTRxWrheIGalTcIOU9o99zqrhe1bwNAgMBAAECggEAD78/P8yDW8Kns4G5ZZkBV9uAZ9PlMlpZz0Io2WnHICJpwoIrdp4YqhtJ46YnTT8xLt/NcuqSDmfF8OWXSoHzPQNfuiyg1XtYPr+GWgOdR+90zJIj0/XCqtySeQW1/b/Qg3TGeM6lWPwds7C+dTYVaT5bI0lQ1xsq+XaCGKUu2VPzcDdxW4snpifTlgxMStz+Ak2bwXemiC7NsHSJYr1dN2SFaTkyyfe3WRtRjfHaEpE7GxfZ1KQvR1a2nsBib9m5QMS/vKmibbw4BBWzM5oK7XGVG4hr7V1GwUL15axnS9U+9haA6vQ3mVoGrRay+jABuLcdcjZTjsW4G40qCccLdQKBgQD3Wckib3+48x2saoLWSdPkxW1vx6+ETfDg6EfM8m3ccE4WQ6+8t/kk39MfLAwMgfP+m/1OmWhu0REhH9KVRBKi88+sudc5UPRDIiWNdmaT3pmWmJgoX+KASrLR8o1Z2SIgGGKSS2AMnmJxeHWBlCzjYGERct3Als/2AVErYGKvCwKBgQCWoLtKwJjEOK8s04V2KASHG4QlT+YGLB482s223xmDk3dJkQTbJ3EFF8CyQ1e4gpTFXRRuaWXl+JkAkGsgn9GEJ8CPH81/o4aqqpaYantKpNlDYFpcQZXjgk8XOs8mvbeWvJwcP8Puhz+GTg+it3YGKvhTW0NLvyaNz02LJ6OQRwKBgFLTPNeMEG+k8OXAEKmitRJgzaFlcy9RTfxxq0FEWGc9L9iit6Dw1bt0O2SvwiUaCtLR9wMvuVmKJjs6RbB3x+nKzFqhLCFkKzajo4F4CScwnatg02qJmPWujaxhlNVmMNggcjlchgATtREb7fUC4fkNV9OY7ApGNcLBdCWbM9A7AoGBAJPvvMMIMYHWYkXWYOfRGdFQNxMmS7aYMgJ2q0AGEdrmRGweX/SV4iysTXdHKKpwpYjJiD2AirG43RxuuqhKDs6K9FYdWAkaJDMOY+XB/uEq0q+XvGeLipjt7JvWCIn2Ho+PIoukHNzyPHO9yyF2qhYYsde8dHW6gTUZ+wDGp6AVAoGAMdKg7EooFQ2ZIMfuXTLPogXUTDsIGKpdCWXPG3LSO6Y4wOQAY2ombj/HK+96P1jSjPRVKObSUDE/zlj61rpdZANjA+ystYEIyVa2cDOlkyQiDWntj3AMtl4XsdPgEY8denYzY+73sAxHqJu1VRwyJkVqmqewOHlS361KNRArBWg=";
    NSString *rsaPrivateKey = @"";
    /*============================================================================*/
    /*============================================================================*/
    /*============================================================================*/
    
    //partner和seller获取失败,提示
    if ([appID length] == 0 ||
        ([rsa2PrivateKey length] == 0 && [rsaPrivateKey length] == 0))
    {
//        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示"
//                                                                       message:@"缺少appId或者私钥,请检查参数设置"
//                                                                preferredStyle:UIAlertControllerStyleAlert];
//        UIAlertAction *action = [UIAlertAction actionWithTitle:@"知道了"
//                                                         style:UIAlertActionStyleDefault
//                                                       handler:^(UIAlertAction *action){
//
//                                                       }];
//        [alert addAction:action];
//        [self presentViewController:alert animated:YES completion:^{ }];
        
        NSLog(@"缺少appId或者私钥,请检查参数设置");
        
        return;
    }
    
    /*
     *生成订单信息及签名
     */
    //将商品信息赋予AlixPayOrder的成员变量
    APOrderInfo* order = [APOrderInfo new];
    
    // NOTE: app_id设置
    order.app_id = appID;
    
    // NOTE: 支付接口名称
    order.method = @"alipay.trade.app.pay";
    
    // NOTE: 参数编码格式
    order.charset = @"utf-8";
    
    // NOTE: 当前时间点
    NSDateFormatter* formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    order.timestamp = [formatter stringFromDate:[NSDate date]];
    
    // NOTE: 支付版本
    order.version = @"1.0";
    
    // NOTE: sign_type 根据商户设置的私钥来决定
    order.sign_type = (rsa2PrivateKey.length > 1)?@"RSA2":@"RSA";
    
    // NOTE: 商品数据
    order.biz_content = [APBizContent new];
    order.biz_content.body = @"我是测试数据";
    order.biz_content.subject = @"1";
    order.biz_content.out_trade_no = @"234445555666"; //订单ID（由商家自行制定）
    order.biz_content.timeout_express = @"30m"; //超时时间设置
    order.biz_content.total_amount = [NSString stringWithFormat:@"%.2f", 0.01]; //商品价格
    
    //将商品信息拼接成字符串
    NSString *orderInfo = [order orderInfoEncoded:NO];
    NSString *orderInfoEncoded = [order orderInfoEncoded:YES];
    NSLog(@"orderSpec = %@",orderInfo);
    
    // NOTE: 获取私钥并将商户信息签名，外部商户的加签过程请务必放在服务端，防止公私钥数据泄露；
    //       需要遵循RSA签名规范，并将签名字符串base64编码和UrlEncode
    NSString *signedString = nil;
    APRSASigner* signer = [[APRSASigner alloc] initWithPrivateKey:((rsa2PrivateKey.length > 1)?rsa2PrivateKey:rsaPrivateKey)];
    if ((rsa2PrivateKey.length > 1)) {
        signedString = [signer signString:orderInfo withRSA2:YES];
    } else {
        signedString = [signer signString:orderInfo withRSA2:NO];
    }
    
    // NOTE: 如果加签成功，则继续执行支付
    if (signedString != nil) {
        //应用注册scheme,在AliSDKDemo-Info.plist定义URL types
        NSString *appScheme = @"alisdkdemo";
        
        // NOTE: 将签名成功字符串格式化为订单字符串,请严格按照该格式
        NSString *orderString = [NSString stringWithFormat:@"%@&sign=%@",
                                 orderInfoEncoded, signedString];
        
        // NOTE: 调用支付结果开始支付
        [[AlipaySDK defaultService] payOrder:orderString fromScheme:appScheme callback:^(NSDictionary *resultDic) {
            NSLog(@"reslut = %@",resultDic);
        }];
    }
}


@end
