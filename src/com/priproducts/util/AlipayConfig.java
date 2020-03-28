package com.priproducts.util;


/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101100663253";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDuIXJgYHmitFQ1mTbCo9AErprxF77ILgOobu3/aainwQn8PVBtOhL7KkmBqzRAIt9czrohK7LO6TNV7TfgsH4fexyAMyh7vNGUQl7w8CWud/cmvNN3IEysAKLn0Fmk8mglBAt2G0gXY8v++7ON4gbTkwZhxedNri7/Nv9XbFwAO2LhjyV0Y3SBy/HeaoFEgwxZ5+ptiTraP19Qr7ZHzTXwIVQmIDsvTQySZaQRSCcEZ11Bxg16XWo/qVVqRyd+WxV4RVihp6hErNqznsvDwRCFbkDcpc62WQzqymp4RcR86OVSCrNx3W8nQRASLUFM99I1IOCdP3rzK5PbbauI3z9vAgMBAAECggEBAJoRpdDZWpl8luc+xAFWv2XoGnNWa6dUriUx8GZKVEaFTRKYEQs6gcFjcL+mp12/skh3sFF51mys0PwNSRPk3RU9MAl6D/1PA0IrVwYIOjkRgSTdEuyGR1UZ7EyTrwxbkiow3cGCkTgg54GIFHn9/XCyNXTY+Hh39AxH5xkHENdMVYJsEK5vhUmp4ZmYFKMJ0REVygmxvfE0Igs+gCkyh/B+RYE/foYgbEkyfVWmjZNee1grTUY8Rt2o5j7IfEvRvdjtIE6l9XimAA2aVEQu7bF6pr+SXEHLeGDd3gqB1rI9nLoLiJUihkViusNAE1wHaPcHkF/gvVESDUS0teiIIAECgYEA+NWvdjbJ4a5dS1rjkEUl/jug+1ciUhW8ShgfKOei92WtaTCc2MxnKxOXUzNrWfxgdy3YWcdqtx425Ms4J7WgiZb+Id2QzShhxn6DhypqZL/o8/xz1Vde0oHEm112W0UNoVc4N36B/IRB6BcFiW+KwUZgOdFQOmK3u1M1mwGRN28CgYEA9Pza65yzWul2POjsB/UMfaL5n6ZcPLsUwlGFK1EzNYbaa/IvxFovrh5xiowwRG2vaWmh3OOpMXJTfhY1lYLTrSFXe8NpVr3lFw88wKEYcyNHvbbhWdxRC7C/AiSguOA3CoFb9AHga5LMWBZtYwB8phpyy9JW8bp3BPzBBsbOeAECgYEAwayH+emg7g/pu1oNnt/DN4KvxJDIPL2AJOdrcUoBNK+l7iaRHcjST9vavz5ZQtvFNV2wdAhbjhVtQlzN41JhllW4jSFHr/bLS1RzCQRBdRNNvIF0ostzGUM5hHeVRGqVtksNjVvgzmseZQduHs97Xv1orfe1iwwE1z9njLMGlO8CgYEAkjbfScOqX9X6lXvGczFTlSBRr3EQl8ZoK1mQCzxZPdcQQWC4FY5l6puM1E26+PwlttoumrDdZ/99yUDkFimQwEGn/tuv4O9Q7SRQ8/6xovYpeRbPBFyzmjCQr2zA59YZw5FVGhqMoGdqwiAQhQfjXRdn8DHHZloNctKPOcYpsAECgYBODpCaiekSCWAFVTLNcceeZNfPAzh1dI9/wWd38xhaUlLq+4TdiytBqHnghXlrYVerUZHd8oKP4B2N+wV26yBuhVa0AWELQq0f7ElSsjhptwwJwdlVeohJ2sBkimr1z0DsDDxhPu7YldPbVqMTodiGMmcrR1Am3AnlSt3Bca0W4A==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoDxJ2h8Klnyb2zuWH/Q1PJ+4+8lNZxrZcmPsj29m/S8J2MSYZJEi3tiC5gHldJy9j8o6SanETnhtWnouPh+sjtzdHjbp1FIx+u7DYhSSuJ9vO0tJSNZTwMC2R+S7waeqYwMouIzG6yT+f6OswZ7TX84dMpoOk0uvRxABHGN+876hnuXyocVbNuvB1reVzPLGKWCDfXZzxVu+zHzZ8bPwOiRE4ECQzaj/Uq2bRV0vheLjdBB1bkbQ/IJNszugC7vou+Xl4BxPW/oEbLohTvGPiI4g3SgRLwBC3kbhdYXrZz4pXpxKhCHPdcVHihHaToBqezJDCe2DRSpzjCa962b68wIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://2551ux0939.qicp.vip/WoniuShop54/controller/pay/notify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://2551ux0939.qicp.vip/WoniuShop54/controller/pay/return";
    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

}
