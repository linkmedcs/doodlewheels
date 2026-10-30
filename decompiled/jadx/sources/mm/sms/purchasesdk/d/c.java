package mm.sms.purchasesdk.d;

import android.os.Environment;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import mm.sms.purchasesdk.PurchaseCode;
import org.cocos2dx.lib.Cocos2dxHandler;

/* JADX INFO: loaded from: classes.dex */
public class c implements InvocationHandler {
    private Object a;
    private static final String TAG = c.class.getSimpleName();
    private static int C = 1;

    public static void a(int i, String str, String str2) {
        if (i < C) {
        }
        switch (i) {
            case 0:
                Log.d(str, str2);
                d.d(str, str2);
                break;
            case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
                Log.w(str, str2);
                d.d(str, str2);
                break;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                Log.e(str, str2);
                d.d(str, str2);
                break;
            default:
                Log.i(str, str2);
                d.d(str, str2);
                break;
        }
    }

    public static void a(int i, String str, String str2, Exception exc) {
        if (i < C) {
        }
        switch (i) {
            case 0:
                Log.d(str, str2);
                d.d(str, str2);
                break;
            case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
                Log.w(str, str2);
                d.d(str, str2);
                break;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                Log.e(str, str2, exc);
                d.d(str, str2);
                break;
            default:
                Log.i(str, str2);
                d.d(str, str2);
                break;
        }
    }

    public static void a(String str, String str2, Exception exc) {
        a(2, str, str2, exc);
    }

    public static void b(String str, String str2) {
        a(0, str, str2);
    }

    public static void c(String str, String str2) {
        a(2, str, str2);
    }

    public static void k() {
        File file = new File(Environment.getExternalStorageDirectory() + "/InAppBillingLibrary/IAPConfig");
        String str = "";
        if (!file.exists()) {
            C = 1;
            return;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            if (fileInputStream != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        str = str + line;
                    }
                }
                fileInputStream.close();
            }
            switch (new Integer(str).intValue()) {
                case 0:
                    C = 0;
                    break;
                case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
                    C = 1;
                    break;
                case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                    C = 2;
                    break;
                default:
                    C = 1;
                    break;
            }
        } catch (FileNotFoundException e) {
            C = 1;
        } catch (IOException e2) {
            C = 1;
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        a(2, "PurchaseListener", name);
        if (name.compareTo("onQueryFinish") == 0) {
            c("PurchaseListener", "query statuscode = " + objArr[0] + " (" + PurchaseCode.getReason(((Integer) objArr[0]).intValue()) + ")");
        } else if (name.compareTo("onInitFinish") == 0) {
            c("PurchaseListener", "Init statuscode = " + objArr[0] + " (" + PurchaseCode.getReason(((Integer) objArr[0]).intValue()) + ")");
        } else if (name.compareTo("onUnsubscribeFinish") == 0) {
            c("PurchaseListener", "Unsubscribe statuscode = " + objArr[0] + " (" + PurchaseCode.getReason(((Integer) objArr[0]).intValue()) + ")");
        } else if (name.compareTo("onBillingFinish") == 0) {
            c("PurchaseListener", "Billing statuscode = " + objArr[0] + " (" + PurchaseCode.getReason(((Integer) objArr[0]).intValue()) + ")");
        }
        return method.invoke(this.a, objArr);
    }
}
