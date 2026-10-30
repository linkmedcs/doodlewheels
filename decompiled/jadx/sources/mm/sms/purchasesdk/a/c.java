package mm.sms.purchasesdk.a;

import java.util.ArrayList;
import java.util.HashMap;
import mm.sms.purchasesdk.ui.o;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private ArrayList a;
    private HashMap b;

    public ArrayList a() {
        return this.a;
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public HashMap m3a() {
        return this.b;
    }

    public void a(String str, o oVar) {
        if (str == null || oVar == null || str.trim().length() == 0) {
            return;
        }
        if (this.b == null) {
            this.b = new HashMap();
        }
        this.b.put(str, oVar);
    }

    public void c(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (this.a == null) {
            this.a = new ArrayList();
        }
        this.a.add(str);
    }
}
