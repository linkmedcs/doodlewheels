package mm.sms.purchasesdk.b;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import mm.sms.purchasesdk.PurchaseCode;
import mm.sms.purchasesdk.d.b;
import mm.sms.purchasesdk.d.c;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
import mm.sms.purchasesdk.ui.o;
import org.cocos2dx.lib.Cocos2dxHandler;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String TAG = a.class.getSimpleName();

    private static int a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        try {
            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(str.getBytes()), "utf-8");
            String strNextText = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                switch (eventType) {
                    case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                        String name = xmlPullParserNewPullParser.getName();
                        if ("File".equals(name)) {
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(0);
                            c.b(TAG, "aname = " + IdentifyApp.decryptPapaya(attributeValue));
                            String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(1);
                            c.b(TAG, "asize = " + IdentifyApp.decryptPapaya(attributeValue2));
                            String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(2);
                            c.b(TAG, "avalue = " + IdentifyApp.decryptPapaya(attributeValue3));
                            HashMap map = new HashMap();
                            map.put("name", attributeValue);
                            map.put("size", attributeValue2);
                            map.put("value", attributeValue3);
                            arrayList.add(map);
                        } else if ("ProgramId".equals(name)) {
                            c.b(TAG, "aProgramId = " + xmlPullParserNewPullParser.nextText());
                        } else if ("Provider".equals(name)) {
                            c.b(TAG, "aProvider = " + xmlPullParserNewPullParser.nextText());
                        } else if ("Mark".equals(name)) {
                            strNextText = xmlPullParserNewPullParser.nextText();
                            c.b(TAG, "aMark = " + strNextText);
                        } else if ("channel".equals(name)) {
                            String strNextText2 = xmlPullParserNewPullParser.nextText();
                            c.b(TAG, "achannel = " + strNextText2);
                            b.d(strNextText2);
                        }
                        break;
                }
            }
            if (!strNextText.equals(str2)) {
                c.b(TAG, "md5data error: ");
                return PurchaseCode.BILL_INVALID_APP;
            }
            if (arrayList.size() > 0) {
                Map map2 = (Map) arrayList.get(0);
                String strDecryptPapaya = IdentifyApp.decryptPapaya((String) map2.get("name"));
                String strDecryptPapaya2 = IdentifyApp.decryptPapaya((String) map2.get("size"));
                String strDecryptPapaya3 = IdentifyApp.decryptPapaya((String) map2.get("value"));
                c.b(TAG, "aDesclassname = " + strDecryptPapaya);
                c.b(TAG, "aDesclasssize = " + strDecryptPapaya2);
                c.b(TAG, "aDesclassvalue = " + strDecryptPapaya3);
                for (int i = 1; i <= arrayList.size() - 1; i++) {
                    Map map3 = (Map) arrayList.get(i);
                    String strDecryptPapaya4 = IdentifyApp.decryptPapaya((String) map3.get("name"));
                    String strDecryptPapaya5 = IdentifyApp.decryptPapaya((String) map3.get("size"));
                    String strDecryptPapaya6 = IdentifyApp.decryptPapaya((String) map3.get("value"));
                    c.b(TAG, "aDessoname = " + strDecryptPapaya4);
                    c.b(TAG, "aDessosize = " + strDecryptPapaya5);
                    c.b(TAG, "aDessovalue = " + strDecryptPapaya6);
                    int iCheckdexso = IdentifyApp.checkdexso(strDecryptPapaya3, strDecryptPapaya2, strDecryptPapaya4, strDecryptPapaya5, strDecryptPapaya6);
                    c.b(TAG, "ret = " + iCheckdexso);
                    switch (iCheckdexso) {
                        case -15:
                            c.b(TAG, "so error: ");
                            return PurchaseCode.BILL_APP_SO_ERR;
                        case -14:
                            c.b(TAG, "so size error: ");
                            return PurchaseCode.BILL_APP_SO_ERR;
                        case -13:
                            c.b(TAG, "classes.dex size error: ");
                            return PurchaseCode.BILL_APP_ERR;
                        case -12:
                            c.b(TAG, "classes.dex error: ");
                            return PurchaseCode.BILL_APP_ERR;
                        default:
                            break;
                    }
                }
            }
            return PurchaseCode.BILL_NOORDER;
        } catch (IOException e) {
            c.a(TAG, "failed to read mmiap.xml. io excetion ", e);
            return PurchaseCode.BILL_XML_PARSE_ERR;
        } catch (XmlPullParserException e2) {
            c.a(TAG, "failed to read mmiap.xml excepiton. ", e2);
            return PurchaseCode.BILL_XML_PARSE_ERR;
        }
    }

    public static Boolean a(mm.sms.purchasesdk.a.a aVar) {
        PurchaseCode.setStatusCode(PurchaseCode.ORDER_OK);
        aVar.b(b.i());
        aVar.a(b.m7c());
        if (b.m5a().booleanValue()) {
            aVar.a(b());
            aVar.a(b.m6a());
            return true;
        }
        new mm.sms.purchasesdk.c.a();
        String strC = mm.sms.purchasesdk.c.a.c();
        String strA = null;
        if (strC == null) {
            c.b(TAG, "read mmiap.xml false ");
            PurchaseCode.setStatusCode(PurchaseCode.INIT_TEST_APK);
            return false;
        }
        if (!b.m5a().booleanValue() && ((strA = a(strC)) == null || strA.trim().length() <= 0)) {
            PurchaseCode.setStatusCode(PurchaseCode.INIT_TEST_APK);
            return false;
        }
        if (!b.m5a().booleanValue()) {
            c.b(TAG, "md5data signContent MD5 is: " + IdentifyApp.md5(strA.getBytes()));
            int iA = a(strC, IdentifyApp.md5(strA.getBytes()));
            if (1202 != iA) {
                c.b(TAG, "classes.des so error: ");
                PurchaseCode.setStatusCode(iA);
                return false;
            }
        }
        mm.sms.purchasesdk.a.c cVarM4a = m4a(b.i(), strC);
        if (cVarM4a == null) {
            PurchaseCode.setStatusCode(PurchaseCode.BILL_PAYCODE_ERR);
            return false;
        }
        aVar.a(cVarM4a);
        aVar.a(b.m6a());
        return true;
    }

    public static String a(String str) {
        int iIndexOf = str.indexOf("<ProgramId>");
        int iIndexOf2 = str.indexOf("<Mark>");
        if (iIndexOf < 0) {
            return null;
        }
        String strSubstring = str.substring(iIndexOf, iIndexOf2);
        c.b(TAG, "md5data signContent is: " + strSubstring);
        c.b(TAG, "md5data signContentlength  is: " + strSubstring.length());
        strSubstring.trim();
        strSubstring.replace(" ", "");
        return strSubstring;
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    private static mm.sms.purchasesdk.a.c m4a(String str, String str2) {
        new ArrayList().add(new mm.sms.purchasesdk.c.a());
        try {
            return b(str, str2);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private static o a(Element element, String str, int i) {
        Element element2 = (Element) element.getElementsByTagName(str).item(i);
        String strDecryptPapaya = IdentifyApp.decryptPapaya(element2.getFirstChild() != null ? element2.getFirstChild().getNodeValue() : null);
        o oVar = new o();
        if (str.equals("Provider")) {
            oVar.n = "provider";
            oVar.m = "提供商:";
            oVar.mValue = strDecryptPapaya;
        } else if (str.equals("AppName")) {
            oVar.n = "appname";
            oVar.m = "应用名称:";
            oVar.mValue = strDecryptPapaya;
        }
        return oVar;
    }

    private static void a(mm.sms.purchasesdk.a.c cVar, float f) {
        o oVar = new o();
        oVar.n = "itemcount";
        oVar.m = "数量：";
        oVar.mValue = "" + b.a();
        oVar.w = -39424;
        cVar.c(oVar.m);
        cVar.a(oVar.m, oVar);
        o oVar2 = new o();
        oVar2.n = "totalprice";
        oVar2.m = "支付金额:";
        oVar2.mValue = (b.a() * f) + "元";
        oVar2.w = -39424;
        cVar.c(oVar2.m);
        cVar.a(oVar2.m, oVar2);
    }

    private static mm.sms.purchasesdk.a.c b() {
        mm.sms.purchasesdk.a.c cVar = new mm.sms.purchasesdk.a.c();
        o oVar = new o();
        oVar.n = "appname";
        oVar.m = "应用名称：";
        oVar.mValue = "" + b.g();
        oVar.w = -16777216;
        cVar.c(oVar.m);
        cVar.a(oVar.m, oVar);
        o oVar2 = new o();
        oVar2.n = "provider";
        oVar2.m = "提供商：";
        oVar2.mValue = "" + b.g();
        oVar2.w = -16777216;
        cVar.c(oVar2.m);
        cVar.a(oVar2.m, oVar2);
        o oVar3 = new o();
        oVar3.n = "itemname";
        oVar3.m = "商品：";
        oVar3.mValue = "" + b.i();
        oVar3.w = -16777216;
        cVar.c(oVar3.m);
        cVar.a(oVar3.m, oVar3);
        o oVar4 = new o();
        oVar4.n = "itemprice";
        oVar4.m = "单价：";
        oVar4.mValue = "0.1元";
        oVar4.w = -39424;
        cVar.c(oVar4.m);
        cVar.a(oVar4.m, oVar4);
        o oVar5 = new o();
        oVar5.n = "itemcount";
        oVar5.m = "数量：";
        oVar5.mValue = "" + b.a();
        oVar5.w = -39424;
        cVar.c(oVar5.m);
        cVar.a(oVar5.m, oVar5);
        o oVar6 = new o();
        oVar6.n = "totalprice";
        oVar6.m = "支付金额:";
        oVar6.mValue = (((double) b.a()) * 0.1d) + "元";
        oVar6.w = -39424;
        cVar.c(oVar6.m);
        cVar.a(oVar6.m, oVar6);
        return cVar;
    }

    private static mm.sms.purchasesdk.a.c b(String str, String str2) {
        float fFloatValue;
        int i = 0;
        c.b(TAG, "enter parseProductInfo");
        mm.sms.purchasesdk.a.c cVar = new mm.sms.purchasesdk.a.c();
        Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(str2.getBytes())).getDocumentElement();
        cVar.a("appname", a(documentElement, "AppName", 0));
        cVar.c("appname");
        cVar.a("provider", a(documentElement, "Provider", 0));
        cVar.c("provider");
        NodeList elementsByTagName = documentElement.getElementsByTagName("ProductInfo");
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            Element element = (Element) documentElement.getElementsByTagName("paycode").item(i2);
            String strDecryptPapaya = IdentifyApp.decryptPapaya(element.getFirstChild() != null ? element.getFirstChild().getNodeValue() : null);
            c.b(TAG, "paycode =" + strDecryptPapaya);
            c.b(TAG, "apaycode =" + str);
            if (strDecryptPapaya.equals(str)) {
                NodeList elementsByTagName2 = ((Element) documentElement.getElementsByTagName("ProductInfo").item(i2)).getElementsByTagName("Item");
                c.b(TAG, "nodes.getLength() = " + elementsByTagName2.getLength());
                float f = 0.0f;
                while (i < elementsByTagName2.getLength()) {
                    Element element2 = (Element) elementsByTagName2.item(i);
                    String attribute = element2.getAttribute("id");
                    String attribute2 = element2.getAttribute("name");
                    String attribute3 = element2.getAttribute("value");
                    c.b(TAG, "id = " + attribute);
                    c.b(TAG, "name = " + attribute2);
                    c.b(TAG, "value = " + attribute3);
                    o oVar = new o();
                    oVar.n = IdentifyApp.decryptPapaya(attribute);
                    oVar.m = IdentifyApp.decryptPapaya(attribute2) + ":";
                    oVar.mValue = IdentifyApp.decryptPapaya(attribute3);
                    c.b(TAG, "info.mID = " + oVar.n);
                    c.b(TAG, "info.mKey = " + oVar.m);
                    c.b(TAG, "info.mValue = " + oVar.mValue);
                    if (oVar.n.equals("itemprice")) {
                        Integer num = new Integer(oVar.mValue.replace("分", ""));
                        oVar.mValue = (num.floatValue() / 100.0f) + "元";
                        fFloatValue = num.floatValue() / 100.0f;
                        c.b(TAG, "Price = " + oVar.mValue);
                    } else {
                        fFloatValue = f;
                    }
                    if (oVar.n.equals("totalprice") || oVar.n.equals("itemcount") || oVar.n.equals("itemprice") || oVar.n.equals("renttime")) {
                        oVar.w = -39424;
                    } else {
                        oVar.w = -16777216;
                    }
                    cVar.c(attribute2);
                    cVar.a(attribute2, oVar);
                    i++;
                    f = fFloatValue;
                }
                a(cVar, f);
                return cVar;
            }
        }
        PurchaseCode.setStatusCode(PurchaseCode.BILL_PAYCODE_NULL);
        return null;
    }
}
