.class public Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final CENTERSTYLE:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: center; LINE-HEIGHT: 25pt; MARGIN: 0.5pt 0cm; FONT-FAMILY: \u5b8b\u4f53; FONT-SIZE: 22pt;\'>"

.field private static final CENTERSTYLEWS:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: center; LINE-HEIGHT: 30pt; MARGIN: 0.5pt 0cm; FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 26pt;\'>"

.field public static final CINT_FONT_DEFAUT:I = 0x3

.field private static final CSTRS_STYLE_FONTSIZE1:[Ljava/lang/String;

.field private static final CSTRS_STYLE_FONTSIZE2:[Ljava/lang/String;

.field private static final CSTRS_STYLE_FONTSIZE3:[Ljava/lang/String;

.field private static final CSTR_STYLE_RIGHTSTYLE_NEW:Ljava/lang/String; = "MARGIN: 0.5pt 0cm;"

.field private static final CSTR_STYLE_RIGHTSTYLE_OLD:Ljava/lang/String; = "MARGIN: 0.5pt 72pt 0.5pt 0cm;"

.field private static final LEFTSPACE2STYLE:Ljava/lang/String; = "<div style=\'LINE-HEIGHT: 25pt;TEXT-ALIGN:justify;TEXT-JUSTIFY:inter-ideograph; TEXT-INDENT: 30pt; MARGIN: 0.5pt 0cm;FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 16pt;\'>"

.field private static final LEFTSTYLE:Ljava/lang/String; = "<div style=\'LINE-HEIGHT: 25pt;TEXT-ALIGN:justify;TEXT-JUSTIFY:inter-ideograph; MARGIN: 0.5pt 0cm;FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 16pt;\'>"

.field private static final RIGHTSTYLE:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: right; LINE-HEIGHT: 25pt; MARGIN: 0.5pt 72pt 0.5pt 0cm;FONT-FAMILY: \u4eff\u5b8b; FONT-SIZE: 16pt;\'>"

.field private static final RIGHTSTYLE15:Ljava/lang/String; = "<div style=\'TEXT-ALIGN: right; LINE-HEIGHT: 30pt; MARGIN: 0.5pt 0cm;  FONT-FAMILY: \u4eff\u5b8b;FONT-SIZE: 16pt; \'>"

.field private static final serialVersionUID:J = 0x4f11f5a03ef556d3L


# instance fields
.field private casename:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private count:I

.field private html:Ljava/lang/String;

.field private uploaddate:Ljava/lang/String;

.field private wenshuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "FONT-SIZE: 20pt;"

    const-string v1, "FONT-SIZE: 18pt;"

    const-string v2, "FONT-SIZE: 14pt;"

    const-string v3, "FONT-SIZE: 12pt;"

    const-string v4, "FONT-SIZE: 13px;"

    const-string v5, "FONT-SIZE: 11px;"

    const-string v6, "FONT-SIZE: 9px;"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->CSTRS_STYLE_FONTSIZE1:[Ljava/lang/String;

    const-string v1, "FONT-SIZE: 24pt;"

    const-string v2, "FONT-SIZE: 20pt;"

    const-string v3, "FONT-SIZE: 16pt;"

    const-string v4, "FONT-SIZE: 14pt;"

    const-string v5, "FONT-SIZE: 15px;"

    const-string v6, "FONT-SIZE: 13px;"

    const-string v7, "FONT-SIZE: 11px;"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->CSTRS_STYLE_FONTSIZE2:[Ljava/lang/String;

    const-string v1, "FONT-SIZE: 26pt;"

    const-string v2, "FONT-SIZE: 22pt;"

    const-string v3, "FONT-SIZE: 18pt;"

    const-string v4, "FONT-SIZE: 16pt;"

    const-string v5, "FONT-SIZE: 17px;"

    const-string v6, "FONT-SIZE: 15px;"

    const-string v7, "FONT-SIZE: 13px;"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->CSTRS_STYLE_FONTSIZE3:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static dataFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x4f11f5a03ef556d3L    # 7.932912044487931E72

    invoke-static {p0, v0, v1, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->dataFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFontCSSFileName(I)[Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->CSTRS_STYLE_FONTSIZE3:[Ljava/lang/String;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->CSTRS_STYLE_FONTSIZE2:[Ljava/lang/String;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->CSTRS_STYLE_FONTSIZE1:[Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parserVO(Ljava/lang/String;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;
    .locals 4

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "queryResult"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "resultList"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;-><init>()V

    const-string v2, "Title"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->setCasename(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->setWenshuid(Ljava/lang/String;)V

    const-string p1, "Html"

    const-string v2, ""

    invoke-static {p0, p1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->setHtml(Ljava/lang/String;)V

    const-string p1, "PubDate"

    const-string v2, ""

    invoke-static {p0, p1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->setUploaddate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-class p1, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public addCount(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->setCount(I)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->dataFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->saveVO(Lnet/lawyee/mobilelib/vo/BaseVO;Ljava/lang/String;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/lawyee/mobilelib/vo/BaseVO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getWenshuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public generateHtml(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "wenshu.html"

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u3010\u6587\u4e66\u5185\u5bb9\u4e3a\u7a7a\u3011"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getHtml()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "%\u6848\u4ef6\u540d\u79f0%"

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getCasename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getCasename()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%\u53d1\u5e03\u65e5\u671f%"

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getUploaddate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getUploaddate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%\u6b21\u6570%"

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1"

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%\u6587\u4e66\u5185\u5bb9%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MARGIN: 0.5pt 72pt 0.5pt 0cm;"

    const-string v1, "MARGIN: 0.5pt 0cm;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<span style=\"color:red\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    invoke-static {p3}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getFontCSSFileName(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getFontCSSFileName(I)[Ljava/lang/String;

    move-result-object v1

    if-le p2, p3, :cond_5

    const/4 p2, 0x0

    :goto_4
    array-length p3, v0

    if-ge p2, p3, :cond_6

    array-length p3, v1

    if-ge p2, p3, :cond_6

    aget-object p3, v0, p2

    aget-object v2, v1, p2

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_5
    if-ltz p2, :cond_6

    aget-object p3, v0, p2

    aget-object v2, v1, p2

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_6
    return-object p1
.end method

.method public getCasename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->casename:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->count:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaddate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->uploaddate:Ljava/lang/String;

    return-object v0
.end method

.method public getWenshuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->wenshuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCasename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->casename:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->content:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->count:I

    return-void
.end method

.method public setCount(Landroid/content/Context;I)Z
    .locals 1

    iget v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->count:I

    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->setCount(I)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->getWenshuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->dataFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->saveVO(Lnet/lawyee/mobilelib/vo/BaseVO;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->html:Ljava/lang/String;

    return-void
.end method

.method public setUploaddate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->uploaddate:Ljava/lang/String;

    return-void
.end method

.method public setWenshuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailVO;->wenshuid:Ljava/lang/String;

    return-void
.end method
