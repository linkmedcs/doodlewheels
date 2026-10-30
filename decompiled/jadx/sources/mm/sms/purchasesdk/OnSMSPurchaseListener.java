package mm.sms.purchasesdk;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public interface OnSMSPurchaseListener {
    public static final String PAYCODE = "Paycode";
    public static final String TRADEID = "TradeID";

    void onBillingFinish(int i, HashMap map);

    void onInitFinish(int i);
}
