package mm.sms.purchasesdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.cocos2dx.lib.Cocos2dxHandler;

/* JADX INFO: loaded from: classes.dex */
class f extends Handler {
    final /* synthetic */ e b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f(e eVar, Looper looper) {
        super(looper);
        this.b = eVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        b bVar = (b) message.obj;
        mm.sms.purchasesdk.d.c.b("TaskThread", "ReqHandler Handler id:" + Thread.currentThread().getId());
        mm.sms.purchasesdk.d.c.b("TaskThread", "ReqHandler Handler name:" + Thread.currentThread().getName());
        boolean unused = e.b = false;
        switch (message.what) {
            case 0:
                this.b.a(bVar);
                break;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                mm.sms.purchasesdk.d.c.b("TaskThread", "ORDER_REQUEST ");
                int i = message.arg1;
                message.getData();
                if (i != 0) {
                    boolean unused2 = e.b = true;
                    this.b.c(bVar);
                } else {
                    this.b.b(bVar);
                }
                break;
            case 7:
                this.b.a(bVar, PurchaseCode.INIT_OK);
                break;
        }
        super.handleMessage(message);
    }
}
