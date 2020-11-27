.class public Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final serialVersionUID:J = 0x2792373ddc027003L


# instance fields
.field private DocContent:Ljava/lang/String;

.field private casename:Ljava/lang/String;

.field private caseno:Ljava/lang/String;

.field private casetype:Ljava/lang/String;

.field private courtname:Ljava/lang/String;

.field private uploaddate:Ljava/lang/String;

.field private wenshuid:Ljava/lang/String;


# direct methods
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

    const-wide v0, 0x2792373ddc027003L    # 4.51470796639528E-118

    invoke-static {p0, v0, v1, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->dataFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static detailFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".c"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x2792373ddc027003L    # 4.51470796639528E-118

    invoke-static {p0, v0, v1, p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->dataFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parserVO(Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;
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

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;-><init>()V

    const-string v2, "\u6848\u4ef6\u540d\u79f0"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setCasename(Ljava/lang/String;)V

    const-string v2, "\u6587\u4e66ID"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setWenshuid(Ljava/lang/String;)V

    const-string v2, "\u6cd5\u9662\u540d\u79f0"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setCourtname(Ljava/lang/String;)V

    const-string v2, "\u6848\u4ef6\u7c7b\u578b"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setCasetype(Ljava/lang/String;)V

    const-string v2, "\u6848\u53f7"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setCaseno(Ljava/lang/String;)V

    const-string v2, "DocContent"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setDocContent(Ljava/lang/String;)V

    const-string v2, "\u4e0a\u4f20\u65e5\u671f"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->setUploaddate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    const-class v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/lawyee/mobilelib/vo/BaseVO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getWenshuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getWenshuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public generateHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "wenshu.html"

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getDocContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getDocContent()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&amp;#xA;"

    const-string v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&#xA;"

    const-string v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v3, "\n"

    const-string v4, "<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCourtname()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCourtname()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-static {v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCasetypeStr()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCasetypeStr()Ljava/lang/String;

    move-result-object v2

    :cond_9
    :goto_2
    const-string v3, "%\u6848\u4ef6\u540d\u79f0%"

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCasename()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, ""

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCasename()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "%\u53d1\u5e03\u65e5\u671f%"

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getUploaddate()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const-string v4, ""

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getUploaddate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "%\u6b21\u6570%"

    if-nez p2, :cond_c

    const-string p2, ""

    :cond_c
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u6cd5\u9662%"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u6587\u4e66\u7c7b\u578b%"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u6848\u53f7%"

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCaseno()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, ""

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCaseno()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%\u5185\u5bb9%"

    if-nez v0, :cond_e

    const-string v0, "\u3010\u6587\u4e66\u5185\u5bb9\u4e3a\u7a7a\u3011"

    :cond_e
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCasename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->casename:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseno()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->caseno:Ljava/lang/String;

    return-object v0
.end method

.method public getCasetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->casetype:Ljava/lang/String;

    return-object v0
.end method

.method public getCasetypeStr()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->getCasetype()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getCasetypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCourtname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->courtname:Ljava/lang/String;

    return-object v0
.end method

.method public getDocContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->DocContent:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaddate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->uploaddate:Ljava/lang/String;

    return-object v0
.end method

.method public getWenshuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->wenshuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCasename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->casename:Ljava/lang/String;

    return-void
.end method

.method public setCaseno(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->caseno:Ljava/lang/String;

    return-void
.end method

.method public setCasetype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->casetype:Ljava/lang/String;

    return-void
.end method

.method public setCourtname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->courtname:Ljava/lang/String;

    return-void
.end method

.method public setDocContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->DocContent:Ljava/lang/String;

    return-void
.end method

.method public setUploaddate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->uploaddate:Ljava/lang/String;

    return-void
.end method

.method public setWenshuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;->wenshuid:Ljava/lang/String;

    return-void
.end method
