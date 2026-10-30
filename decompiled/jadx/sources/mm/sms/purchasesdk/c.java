package mm.sms.purchasesdk;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
import mm.sms.purchasesdk.ui.j;
import org.cocos2dx.lib.Cocos2dxHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final String TAG = c.class.getSimpleName();
    private static boolean a = false;

    public static int a(Context context) {
        if (a) {
            return 0;
        }
        mm.sms.purchasesdk.d.d.g(context.getPackageName());
        mm.sms.purchasesdk.d.b.b(mm.sms.purchasesdk.d.a.c());
        mm.sms.purchasesdk.d.b.c(Boolean.valueOf(mm.sms.purchasesdk.d.e.a(context)));
        mm.sms.purchasesdk.fingerprint.a.init();
        if (!mm.sms.purchasesdk.d.b.b().booleanValue()) {
            return PurchaseCode.INIT_NOT_CMCC;
        }
        String strC = mm.sms.purchasesdk.c.a.c();
        if (strC == null) {
            mm.sms.purchasesdk.d.b.b((Boolean) true);
        } else {
            String strA = mm.sms.purchasesdk.b.a.a(strC);
            if (strA == null || strA.trim().length() <= 0) {
                mm.sms.purchasesdk.d.b.b((Boolean) true);
                a = true;
                return 0;
            }
            mm.sms.purchasesdk.d.b.b((Boolean) false);
            new HashMap();
            new ArrayList();
            try {
                XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
                xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(strC.getBytes()), "utf-8");
                int i = 0;
                for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                    switch (eventType) {
                        case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                            String name = xmlPullParserNewPullParser.getName();
                            if ("ProgramId".equals(name)) {
                                String strNextText = xmlPullParserNewPullParser.nextText();
                                mm.sms.purchasesdk.d.c.b(TAG, "aProgramId = " + strNextText);
                                mm.sms.purchasesdk.d.b.e(IdentifyApp.decryptPapaya(strNextText));
                                mm.sms.purchasesdk.d.c.b(TAG, "aProgramId = " + IdentifyApp.decryptPapaya(strNextText));
                                i++;
                            } else if ("channel".equals(name)) {
                                String strNextText2 = xmlPullParserNewPullParser.nextText();
                                mm.sms.purchasesdk.d.c.b(TAG, "achannel = " + strNextText2);
                                mm.sms.purchasesdk.d.b.d(strNextText2);
                                i += 2;
                            }
                            break;
                    }
                }
                if (i != 3) {
                    return PurchaseCode.BILL_XML_PARSE_ERR;
                }
            } catch (IOException e) {
                mm.sms.purchasesdk.d.c.a(TAG, "failed to read mmiap.xml. io excetion ", e);
                return PurchaseCode.BILL_XML_PARSE_ERR;
            } catch (XmlPullParserException e2) {
                mm.sms.purchasesdk.d.c.a(TAG, "failed to read mmiap.xml excepiton. ", e2);
                return PurchaseCode.BILL_XML_PARSE_ERR;
            }
        }
        a = true;
        return 0;
    }

    public static void a(Handler handler, Handler handler2, b bVar, int i) {
        switch (mm.sms.purchasesdk.d.b.x) {
            case 0:
                if (!mm.sms.purchasesdk.d.b.b().booleanValue() && mm.sms.purchasesdk.d.b.m7c()) {
                    bVar.onInitFinish(PurchaseCode.INIT_OK);
                } else {
                    bVar.onInitFinish(i);
                }
                break;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                if (i != 1000) {
                    Message messageObtainMessage = handler.obtainMessage();
                    messageObtainMessage.what = 2;
                    messageObtainMessage.obj = bVar;
                    messageObtainMessage.arg1 = 0;
                    messageObtainMessage.sendToTarget();
                } else {
                    Message messageObtainMessage2 = handler.obtainMessage();
                    messageObtainMessage2.what = 2;
                    messageObtainMessage2.obj = bVar;
                    messageObtainMessage2.arg1 = 0;
                    messageObtainMessage2.sendToTarget();
                }
                break;
        }
    }

    public static int b(Context context) {
        String strG = mm.sms.purchasesdk.d.b.g();
        String strH = mm.sms.purchasesdk.d.b.h();
        if (strG == null || strG.trim().length() == 0) {
            mm.sms.purchasesdk.d.c.c("PurchaseInternal", "appid is null");
            return PurchaseCode.PARAMETER_ERR;
        }
        if (strH == null || strH.trim().length() == 0) {
            mm.sms.purchasesdk.d.c.c("PurchaseInternal", "appkey is null");
            return PurchaseCode.PARAMETER_ERR;
        }
        mm.sms.purchasesdk.d.b.a(strG, strH);
        mm.sms.purchasesdk.d.b.c(Boolean.valueOf(mm.sms.purchasesdk.d.e.a(context)));
        return PurchaseCode.INIT_OK;
    }

    public static void b(Handler handler, Handler handler2, b bVar, int i) {
        if (1001 == i) {
            HashMap map = new HashMap();
            map.put(OnSMSPurchaseListener.PAYCODE, mm.sms.purchasesdk.d.b.i());
            map.put(OnSMSPurchaseListener.TRADEID, mm.sms.purchasesdk.d.b.o());
            if (i == 1001) {
                bVar.a(i, map);
                return;
            }
            return;
        }
        if (i == 1202) {
            j.a().a(handler, handler2, bVar, e.a());
            return;
        }
        HashMap map2 = e.m10a() ? new HashMap() : null;
        mm.sms.purchasesdk.d.c.c("PurchaseInternal", " order fail =" + i);
        bVar.a(i, map2);
    }
}
