package mm.sms.purchasesdk;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseCode {
    public static final int BILL_APP_ERR = 1212;
    public static final int BILL_APP_SO_ERR = 1211;
    public static final int BILL_CANCEL_FAIL = 1201;
    public static final int BILL_DIALOG_SHOWERROR = 1203;
    public static final int BILL_INVALID_APP = 1204;
    public static final int BILL_INVALID_SIDSIGN = 1206;
    public static final int BILL_INVALID_SIGN = 1205;
    public static final int BILL_NOORDER = 1202;
    public static final int BILL_PAYCODE_ERR = 1209;
    public static final int BILL_PAYCODE_NULL = 1210;
    public static final int BILL_SDK_ERROR = 1208;
    public static final int BILL_SMS_ERR = 1213;
    public static final int BILL_TIMEOUT = 1214;
    public static final int BILL_UNDEFINED_ERROR = 1207;
    public static final int BILL_XML_PARSE_ERR = 1200;
    public static final int INIT_CHECK_ERR = 1111;
    public static final int INIT_EXCEPTION = 1112;
    public static final int INIT_IMEI_ERR = 1106;
    public static final int INIT_IMSI_ERR = 1108;
    public static final int INIT_NOT_CMCC = 1105;
    public static final int INIT_NO_ACTIVE = 1104;
    public static final int INIT_OK = 1000;
    public static final int INIT_OTHER_ERR = 1113;
    public static final int INIT_PUBKEY_ERR = 1109;
    public static final int INIT_SID_ERR = 1107;
    public static final int INIT_SMS_ERR = 1110;
    public static final int INIT_TEST_APK = 1103;
    public static final int INIT_TIMEOUT = 1114;
    public static final int NOGSM_ERR = 1102;
    public static final int NOT_CMCC_ERR = 1100;
    public static final int ORDER_OK = 1001;
    public static final int PARAMETER_ERR = 1101;
    public static final String UNDEFINED_ERR = "未定义错误";
    public static final int UNKNOWN_ERR = -1;
    private static String ErrorMsg = "尊敬的用户，订单生成失败，暂时无法购买。返回码：";
    private static String ErrorInitMsg = "尊敬的用户，初始化失败，暂时无法购买。返回码：";
    private static String ErrorInitSMSMsg = "尊敬的用户，激活信息发送失败，暂时无法购买。返回码：";
    private static String ErrorInitTestMsg = "尊敬的用户，此应用为测试应用，无法购买商品。返回码：";
    private static String ErrorBillCancelMsg = "尊敬的用户，您的订单已经取消。返回码：";
    private static String InitMsg = "尊敬的用户，系统初始化失败，暂时无法购买。返回码：";
    private static String NoneMccMsg = "尊敬的用户，该业务不支持非中国移动用户，请更换成中移动的SIM卡或将中移动SIM卡设为主卡。返回码：";
    private static String NoneGSMMsg = "尊敬的用户，您所使用的是非GSM手机，暂时无法购买。返回码:";
    private static String AuthNotDownload = "尊敬的用户，应用不是来自可信的下载源，请重新下载。返回码:";
    private static String ErrorTimeout = "尊敬的用户，短信发送超时，请检查手机安全软件是否拦截短信了发送。返回码：";
    private static HashMap mCodeInfo = null;
    private static int statusCode = 0;

    public static String getDescription(int i) {
        if (mCodeInfo == null) {
            init();
        }
        if (mCodeInfo.get(Integer.valueOf(i)) == null || i <= 104) {
            return UNDEFINED_ERR;
        }
        return i > 1001 ? ((a) mCodeInfo.get(Integer.valueOf(i))).b + i : ((a) mCodeInfo.get(Integer.valueOf(i))).b;
    }

    public static String getReason(int i) {
        if (mCodeInfo == null) {
            init();
        }
        if (mCodeInfo.get(Integer.valueOf(i)) != null) {
            return i > 1001 ? ((a) mCodeInfo.get(Integer.valueOf(i))).b + i : ((a) mCodeInfo.get(Integer.valueOf(i))).b;
        }
        return UNDEFINED_ERR;
    }

    public static int getStatusCode() {
        return statusCode;
    }

    private static void init() {
        mCodeInfo = new HashMap();
        mCodeInfo.put(Integer.valueOf(INIT_OK), new a("初始化成功", "初始化成功"));
        mCodeInfo.put(Integer.valueOf(ORDER_OK), new a("尊敬的用户，商品购买成功", "尊敬的用户，商品购买成功"));
        mCodeInfo.put(Integer.valueOf(INIT_IMEI_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(INIT_OTHER_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(INIT_SID_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(INIT_EXCEPTION), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(INIT_IMSI_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(INIT_PUBKEY_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(INIT_SMS_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(NOT_CMCC_ERR), new a(NoneMccMsg, NoneMccMsg));
        mCodeInfo.put(Integer.valueOf(PARAMETER_ERR), new a(InitMsg, InitMsg));
        mCodeInfo.put(Integer.valueOf(NOGSM_ERR), new a(NoneGSMMsg, NoneGSMMsg));
        mCodeInfo.put(-1, new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(BILL_XML_PARSE_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(BILL_CANCEL_FAIL), new a(ErrorBillCancelMsg, ErrorBillCancelMsg));
        mCodeInfo.put(Integer.valueOf(BILL_DIALOG_SHOWERROR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(BILL_INVALID_APP), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_INVALID_SIGN), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_INVALID_SIDSIGN), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_UNDEFINED_ERROR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(BILL_SDK_ERROR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(BILL_PAYCODE_ERR), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_PAYCODE_NULL), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_APP_SO_ERR), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_APP_ERR), new a(AuthNotDownload, AuthNotDownload));
        mCodeInfo.put(Integer.valueOf(BILL_SMS_ERR), new a(ErrorMsg, ErrorMsg));
        mCodeInfo.put(Integer.valueOf(BILL_TIMEOUT), new a(ErrorTimeout, ErrorTimeout));
        mCodeInfo.put(Integer.valueOf(INIT_TEST_APK), new a(ErrorInitTestMsg, ErrorInitTestMsg));
        mCodeInfo.put(Integer.valueOf(INIT_NOT_CMCC), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_NO_ACTIVE), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_IMEI_ERR), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_SID_ERR), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_IMSI_ERR), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_PUBKEY_ERR), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_SMS_ERR), new a(ErrorInitSMSMsg, ErrorInitSMSMsg));
        mCodeInfo.put(Integer.valueOf(INIT_CHECK_ERR), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_EXCEPTION), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_OTHER_ERR), new a(ErrorInitMsg, ErrorInitMsg));
        mCodeInfo.put(Integer.valueOf(INIT_TIMEOUT), new a(ErrorTimeout, ErrorTimeout));
    }

    public static void setStatusCode(int i) {
        statusCode = i;
    }
}
