package mm.sms.purchasesdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.cocos2dx.lib.Cocos2dxHandler;

/* JADX INFO: loaded from: classes.dex */
class d extends Handler {
    final /* synthetic */ SMSPurchase b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(SMSPurchase sMSPurchase, Looper looper) {
        super(looper);
        this.b = sMSPurchase;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.arg1;
        b bVar = (b) message.obj;
        switch (message.what) {
            case 0:
                c.a(this.b.f0a, this.b.b, bVar, i);
                break;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                c.b(this.b.f0a, this.b.b, bVar, i);
                break;
            case 5:
                bVar.a();
                break;
        }
        super.handleMessage(message);
    }
}
