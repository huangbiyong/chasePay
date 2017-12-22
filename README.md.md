## 1. 创建应用
- 登录支付宝的开放者平台，登录，到开发者中心，点击进入"网页&移动应用"

![WechatIMG77.jpeg](http://upload-images.jianshu.io/upload_images/9242195-b2abab87ce08b47c.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
- 点击“支付接入”-> 选择"自用型应用"，填好信息，下一步
- 点击“修改”可以上传图标，并获得appid
- 点击“设置应用公钥”，选择“查看密钥生成”，下载MAC_OSX的文件资源
![WechatIMG78.jpeg](http://upload-images.jianshu.io/upload_images/9242195-ba518b9b844ef57b.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 双击下载的 “RSA签名验签工具.command” 文件
![WechatIMG79.jpeg](http://upload-images.jianshu.io/upload_images/9242195-0fe963df92f98ec4.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


- 将公钥保存设置，密钥保存到自己的xcode工程中

## 2. xcode工程集成
- 根据支付开发文档集成，加入以下的库，并加入APOrderInfo文件（demo中的订单类,直接使用），以及openssl,Utils文件资源
![WechatIMG80.jpeg](http://upload-images.jianshu.io/upload_images/9242195-8ed2c69bc72c6786.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 运行程序，将会报错，提示" 'openssl/asn1.h' file not found", 这是需要设置"build settings"下的 "Header Search Paths" ，openssl文件路径

![WechatIMG81.jpeg](http://upload-images.jianshu.io/upload_images/9242195-bc7e04c07bb6bf4b.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 然后设置APOrderInfo 类的rsa2PrivateKey,appID就可以了运行成功


