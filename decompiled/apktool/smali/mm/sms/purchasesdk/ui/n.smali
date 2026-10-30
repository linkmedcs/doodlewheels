.class public Lmm/sms/purchasesdk/ui/n;
.super Ljava/lang/Object;


# static fields
.field public static a:F

.field public static b:F

.field private static b:Ljava/util/ArrayList;

.field public static c:F

.field private static c:Ljava/util/HashMap;

.field public static d:F

.field public static e:F

.field public static f:F

.field public static f:Ljava/lang/Boolean;

.field public static g:F

.field public static h:F

.field public static h:I

.field public static i:F

.field public static i:I

.field public static j:F

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x5

    const/high16 v4, 0x41800000    # 16.0f

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/high16 v1, 0x3f800000    # 1.0f

    sput v3, Lmm/sms/purchasesdk/ui/n;->h:I

    const/16 v0, 0x50

    sput v0, Lmm/sms/purchasesdk/ui/n;->i:I

    const/16 v0, 0x37

    sput v0, Lmm/sms/purchasesdk/ui/n;->j:I

    const/16 v0, 0x1e0

    sput v0, Lmm/sms/purchasesdk/ui/n;->k:I

    const/16 v0, 0x12c

    sput v0, Lmm/sms/purchasesdk/ui/n;->l:I

    sput v3, Lmm/sms/purchasesdk/ui/n;->m:I

    sput v5, Lmm/sms/purchasesdk/ui/n;->n:I

    sput v5, Lmm/sms/purchasesdk/ui/n;->o:I

    const/16 v0, 0xf

    sput v0, Lmm/sms/purchasesdk/ui/n;->p:I

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->a:F

    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->b:F

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/ui/n;->f:Ljava/lang/Boolean;

    sput v1, Lmm/sms/purchasesdk/ui/n;->c:F

    sput v1, Lmm/sms/purchasesdk/ui/n;->d:F

    sput v1, Lmm/sms/purchasesdk/ui/n;->e:F

    sput v2, Lmm/sms/purchasesdk/ui/n;->q:I

    sput v1, Lmm/sms/purchasesdk/ui/n;->f:F

    sput v4, Lmm/sms/purchasesdk/ui/n;->g:F

    sput v3, Lmm/sms/purchasesdk/ui/n;->s:I

    sput v2, Lmm/sms/purchasesdk/ui/n;->t:I

    sput v2, Lmm/sms/purchasesdk/ui/n;->u:I

    sput v4, Lmm/sms/purchasesdk/ui/n;->h:F

    const/high16 v0, 0x41900000    # 18.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->i:F

    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->j:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v4, v6, :cond_1

    if-le v3, v6, :cond_1

    invoke-virtual {v5, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-gt v4, v6, :cond_2

    invoke-virtual {v5, p0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-gt v3, v6, :cond_0

    invoke-virtual {v5, v0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lmm/sms/purchasesdk/ui/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lmm/sms/purchasesdk/d/b;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget v0, Lmm/sms/purchasesdk/ui/n;->d:F

    :goto_0
    invoke-static {v0, v0, p0}, Lmm/sms/purchasesdk/ui/n;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget v0, Lmm/sms/purchasesdk/d/b;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lmm/sms/purchasesdk/ui/n;->d:F

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lmm/sms/purchasesdk/ui/n;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lmm/sms/purchasesdk/ui/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_2
    sget-object v1, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReadImageFile"

    const-string v3, "read image fail......."

    invoke-static {v1, v3}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "mmiap/smsimage/vertical/logo2.png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lmm/sms/purchasesdk/ui/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v1, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public static g()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object v3, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    :cond_2
    sput-object v3, Lmm/sms/purchasesdk/ui/n;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static h()V
    .locals 2

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/logo1.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/title1_bg.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/title2_bg.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/icon_success.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/icon_false.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/icon_info.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/logo3.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/infoline.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/logo2.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/icon_chifubao.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/button_back_Press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/button_finishbilling.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/button_finishbilling_press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/top_button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->b:Ljava/util/ArrayList;

    const-string v1, "mmiap/smsimage/vertical/top_button_back_press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
