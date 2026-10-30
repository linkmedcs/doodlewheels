package mm.sms.purchasesdk.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ProductItemView extends TextView {
    public ProductItemView(Context context) {
        super(context);
    }

    public ProductItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ProductItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }
}
