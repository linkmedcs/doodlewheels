.class public Lmm/sms/purchasesdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/sms/purchasesdk/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const/16 v2, 0x4bc

    const/16 v3, 0x4bb

    const/16 v4, 0x4b0

    const/4 v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "utf-8"

    invoke-interface {v7, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-eq v1, v5, :cond_5

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "File"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aname = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "asize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "avalue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "name"

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "size"

    invoke-interface {v10, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    invoke-interface {v10, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v2, "failed to read mmiap.xml excepiton. "

    invoke-static {v1, v2, v0}, Lmm/sms/purchasesdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v4

    :goto_2
    return v0

    :cond_1
    :try_start_1
    const-string v8, "ProgramId"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aProgramId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v2, "failed to read mmiap.xml. io excetion "

    invoke-static {v1, v2, v0}, Lmm/sms/purchasesdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v4

    goto :goto_2

    :cond_2
    :try_start_2
    const-string v8, "Provider"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aProvider = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v8, "Mark"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aMark = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v8, "channel"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "achannel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lmm/sms/purchasesdk/d/b;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "md5data error: "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4b4

    goto/16 :goto_2

    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, ""

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, ""

    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, ""

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aDesclassname = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aDesclasssize = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aDesclassvalue = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v5, v0, :cond_7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "value"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aDessoname = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aDessosize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aDessovalue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v8, v7, v1, v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->checkdexso(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ret = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "classes.dex error: "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :pswitch_3
    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "classes.dex size error: "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :pswitch_4
    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "so size error: "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :pswitch_5
    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "so error: "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v3

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x4b2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lmm/sms/purchasesdk/a/a;)Ljava/lang/Boolean;
    .locals 7

    const/16 v3, 0x44f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x3e9

    invoke-static {v0}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/a/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/a/a;->a(Z)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/b/a;->b()Lmm/sms/purchasesdk/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/a/a;->a(Lmm/sms/purchasesdk/a/c;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/a/a;->a(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmm/sms/purchasesdk/c/a;

    invoke-direct {v0}, Lmm/sms/purchasesdk/c/a;-><init>()V

    invoke-static {}, Lmm/sms/purchasesdk/c/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_1

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "read mmiap.xml false "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lmm/sms/purchasesdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    invoke-static {v3}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md5data signContent MD5 is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->md5([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->md5([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/sms/purchasesdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x4b2

    if-eq v2, v0, :cond_4

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v2, "classes.des so error: "

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lmm/sms/purchasesdk/a/c;

    move-result-object v0

    if-nez v0, :cond_5

    const/16 v0, 0x4b9

    invoke-static {v0}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/a/a;->a(Lmm/sms/purchasesdk/a/c;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/a/a;->a(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<ProgramId>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "<Mark>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5data signContent is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5data signContentlength  is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lmm/sms/purchasesdk/a/c;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lmm/sms/purchasesdk/c/a;

    invoke-direct {v1}, Lmm/sms/purchasesdk/c/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lmm/sms/purchasesdk/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lmm/sms/purchasesdk/a/c;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/w3c/dom/Element;Ljava/lang/String;I)Lmm/sms/purchasesdk/ui/o;
    .locals 3

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "Provider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "provider"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u63d0\u4f9b\u5546:"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    iput-object v0, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const-string v2, "AppName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "appname"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u5e94\u7528\u540d\u79f0:"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    iput-object v0, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lmm/sms/purchasesdk/a/c;F)V
    .locals 4

    const v3, -0x9a00

    new-instance v0, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v0}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v1, "itemcount"

    iput-object v1, v0, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v1, "\u6570\u91cf\uff1a"

    iput-object v1, v0, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v3, v0, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v1, v0, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    new-instance v0, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v0}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v1, "totalprice"

    iput-object v1, v0, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v1, "\u652f\u4ed8\u91d1\u989d:"

    iput-object v1, v0, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v3, v0, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v1, v0, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    return-void
.end method

.method private static b()Lmm/sms/purchasesdk/a/c;
    .locals 8

    const v7, -0x9a00

    const/high16 v4, -0x1000000

    new-instance v0, Lmm/sms/purchasesdk/a/c;

    invoke-direct {v0}, Lmm/sms/purchasesdk/a/c;-><init>()V

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "appname"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u5e94\u7528\u540d\u79f0\uff1a"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v4, v1, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "provider"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u63d0\u4f9b\u5546\uff1a"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v4, v1, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "itemname"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u5546\u54c1\uff1a"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v4, v1, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "itemprice"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u5355\u4ef7\uff1a"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    const-string v2, "0.1\u5143"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v7, v1, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "itemcount"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u6570\u91cf\uff1a"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v7, v1, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v1}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    const-string v2, "totalprice"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v2, "\u652f\u4ed8\u91d1\u989d:"

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    iput v7, v1, Lmm/sms/purchasesdk/ui/o;->w:I

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lmm/sms/purchasesdk/a/c;
    .locals 12

    const/4 v3, 0x0

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "enter parseProductInfo"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lmm/sms/purchasesdk/a/c;

    invoke-direct {v5}, Lmm/sms/purchasesdk/a/c;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v0, "appname"

    const-string v1, "AppName"

    invoke-static {v6, v1, v2}, Lmm/sms/purchasesdk/b/a;->a(Lorg/w3c/dom/Element;Ljava/lang/String;I)Lmm/sms/purchasesdk/ui/o;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    const-string v0, "appname"

    invoke-virtual {v5, v0}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    const-string v0, "provider"

    const-string v1, "Provider"

    invoke-static {v6, v1, v2}, Lmm/sms/purchasesdk/b/a;->a(Lorg/w3c/dom/Element;Ljava/lang/String;I)Lmm/sms/purchasesdk/ui/o;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    const-string v0, "provider"

    invoke-virtual {v5, v0}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    const-string v0, "ProductInfo"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v4, 0x0

    move v1, v2

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    const-string v0, "paycode"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "paycode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apaycode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ProductInfo"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "Item"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nodes.getLength() = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {v7}, Lmm/sms/purchasesdk/ui/o;-><init>()V

    invoke-static {v4}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mID = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mKey = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mValue = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v4, "itemprice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    const-string v1, "\u5206"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    div-float/2addr v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u5143"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    div-float/2addr v0, v11

    sget-object v1, Lmm/sms/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Price = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v4, "totalprice"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v4, "itemcount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v4, "itemprice"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v7, Lmm/sms/purchasesdk/ui/o;->n:Ljava/lang/String;

    const-string v4, "renttime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v1, -0x9a00

    iput v1, v7, Lmm/sms/purchasesdk/ui/o;->w:I

    :goto_4
    invoke-virtual {v5, v6}, Lmm/sms/purchasesdk/a/c;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lmm/sms/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/sms/purchasesdk/ui/o;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_1
    const/high16 v1, -0x1000000

    iput v1, v7, Lmm/sms/purchasesdk/ui/o;->w:I

    goto :goto_4

    :cond_2
    invoke-static {v5, v1}, Lmm/sms/purchasesdk/b/a;->a(Lmm/sms/purchasesdk/a/c;F)V

    move-object v3, v5

    :goto_5
    return-object v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x4ba

    invoke-static {v0}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto/16 :goto_1
.end method
