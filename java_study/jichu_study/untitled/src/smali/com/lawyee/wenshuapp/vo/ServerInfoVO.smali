.class public Lcom/lawyee/wenshuapp/vo/ServerInfoVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final serialVersionUID:J = -0x5be392404b18f7ebL


# instance fields
.field private mContextPath:Ljava/lang/String;

.field private mServerIP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static dataFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide v0, -0x5be392404b18f7ebL    # -9.778203028769904E-135

    invoke-static {p0, v0, v1}, Lcom/lawyee/wenshuapp/vo/ServerInfoVO;->dataFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContextPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/ServerInfoVO;->mContextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/ServerInfoVO;->mServerIP:Ljava/lang/String;

    return-object v0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/ServerInfoVO;->mContextPath:Ljava/lang/String;

    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/ServerInfoVO;->mServerIP:Ljava/lang/String;

    return-void
.end method
