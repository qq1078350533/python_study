.class public Lcom/lawyee/wenshuapp/vo/VersionVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final CSTR_PREKEY_UPDATE_LASETVERSION:Ljava/lang/String; = "lastcheckhintversion"

.field public static final CSTR_UPDATETYPE_MUST:Ljava/lang/String; = "1"

.field private static final serialVersionUID:J = 0x5db9c29086439491L


# instance fields
.field private apptype:Ljava/lang/String;

.field private appversion:Ljava/lang/String;

.field private downloadurl:Ljava/lang/String;

.field private updatedesc:Ljava/lang/String;

.field private updatetype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static parseVO(Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/VersionVO;
    .locals 3

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/lawyee/wenshuapp/vo/VersionVO;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/vo/VersionVO;-><init>()V

    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "apptype"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/VersionVO;->setApptype(Ljava/lang/String;)V

    const-string v1, "updatetype"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/VersionVO;->setUpdatetype(Ljava/lang/String;)V

    const-string v1, "appversion"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/VersionVO;->setAppversion(Ljava/lang/String;)V

    const-string v1, "downloadurl"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/VersionVO;->setDownloadurl(Ljava/lang/String;)V

    const-string v1, "updatedesc"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/vo/VersionVO;->setUpdatedesc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-class v1, Lcom/lawyee/wenshuapp/vo/VersionVO;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getApptype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->apptype:Ljava/lang/String;

    return-object v0
.end method

.method public getAppversion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->appversion:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->downloadurl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->updatedesc:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->updatetype:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/VersionVO;->getAppversion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/VersionVO;->getAppversion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/VersionVO;->getDownloadurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public mustUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->updatetype:Ljava/lang/String;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->updatetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public saveUpdateHint(Landroid/content/Context;)V
    .locals 2

    const-string v0, "lastcheckhintversion"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->appversion:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/lawyee/wenshuapp/util/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setApptype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->apptype:Ljava/lang/String;

    return-void
.end method

.method public setAppversion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->appversion:Ljava/lang/String;

    return-void
.end method

.method public setDownloadurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->downloadurl:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->updatedesc:Ljava/lang/String;

    return-void
.end method

.method public setUpdatetype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/VersionVO;->updatetype:Ljava/lang/String;

    return-void
.end method

.method public showUpdateHint(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/VersionVO;->mustUpdate()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "lastcheckhintversion"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Lcom/lawyee/wenshuapp/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/vo/VersionVO;->hasUpdate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
