.class public Lcom/lawyee/wenshuapp/vo/DevInfoVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final serialVersionUID:J = 0x6c557a8199b0993eL


# instance fields
.field private devid:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private validityTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static dataFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x6c557a8199b0993eL    # 7.230722534430959E213

    invoke-static {p0, v0, v1}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->dataFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setValidityTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->validityTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public checkToken()Z
    .locals 6

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->token:Ljava/lang/String;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->validityTime:Ljava/util/Date;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token\u6709\u6548\u671f\u81f3\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->validityTime:Ljava/util/Date;

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->validityTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getDevid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->devid:Ljava/lang/String;

    return-object v0
.end method

.method public getIvParameter()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->devid:Ljava/lang/String;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->devid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->devid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->validityTime:Ljava/util/Date;

    return-object v0
.end method

.method public parserToken(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "token"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->setToken(Ljava/lang/String;)V

    const-string v0, "validity"

    invoke-static {p1, v0, v1}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectInt(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->setValidity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-class v0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v1
.end method

.method public setDevid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->devid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->token:Ljava/lang/String;

    return-void
.end method

.method public setValidity(I)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    invoke-direct {p0, v0}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->setValidityTime(Ljava/util/Date;)V

    return-void
.end method
