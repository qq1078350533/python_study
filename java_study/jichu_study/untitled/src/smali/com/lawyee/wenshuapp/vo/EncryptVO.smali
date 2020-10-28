.class public Lcom/lawyee/wenshuapp/vo/EncryptVO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;,
        Lcom/lawyee/wenshuapp/vo/EncryptVO$RetBean;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private data:Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

.field private ret:Lcom/lawyee/wenshuapp/vo/EncryptVO$RetBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/EncryptVO;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/EncryptVO;->data:Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    return-object v0
.end method

.method public getRet()Lcom/lawyee/wenshuapp/vo/EncryptVO$RetBean;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/EncryptVO;->ret:Lcom/lawyee/wenshuapp/vo/EncryptVO$RetBean;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/EncryptVO;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setData(Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/EncryptVO;->data:Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    return-void
.end method

.method public setRet(Lcom/lawyee/wenshuapp/vo/EncryptVO$RetBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/EncryptVO;->ret:Lcom/lawyee/wenshuapp/vo/EncryptVO$RetBean;

    return-void
.end method
