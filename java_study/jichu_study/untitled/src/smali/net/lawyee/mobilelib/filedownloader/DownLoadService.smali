.class public Lnet/lawyee/mobilelib/filedownloader/DownLoadService;
.super Landroid/app/Service;


# static fields
.field private static a:Lnet/lawyee/mobilelib/filedownloader/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-direct {v0, p0}, Lnet/lawyee/mobilelib/filedownloader/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/lawyee/mobilelib/filedownloader/DownLoadService;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lnet/lawyee/mobilelib/filedownloader/DownLoadService;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/filedownloader/b;->a()V

    const/4 v0, 0x0

    sput-object v0, Lnet/lawyee/mobilelib/filedownloader/DownLoadService;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-object p1, Lnet/lawyee/mobilelib/filedownloader/DownLoadService;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    if-nez p1, :cond_0

    new-instance p1, Lnet/lawyee/mobilelib/filedownloader/b;

    invoke-direct {p1, p0}, Lnet/lawyee/mobilelib/filedownloader/b;-><init>(Landroid/content/Context;)V

    sput-object p1, Lnet/lawyee/mobilelib/filedownloader/DownLoadService;->a:Lnet/lawyee/mobilelib/filedownloader/b;

    :cond_0
    return-void
.end method
