.class public Lcom/lawyee/wenshuapp/ui/SplashActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field j:Ljava/lang/Runnable;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/lawyee/wenshuapp/ui/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/SplashActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/SplashActivity;)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity;->j:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const p1, 0x7f0c0025

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SplashActivity;->setContentView(I)V

    const p1, 0x7f090162

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity;->k:Landroid/os/Handler;

    const-string p1, "\u5f00\u59cb\u8bfb\u53d6\u76f8\u5173\u6570\u636e\uff1a"

    invoke-static {p1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/lawyee/wenshuapp/ui/SplashActivity$1;

    invoke-direct {p1, p0}, Lcom/lawyee/wenshuapp/ui/SplashActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/SplashActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p1, "\u5f00\u59cb\u51c6\u5907\u5207\u6362\u5230\u4e3b\u754c\u9762"

    invoke-static {p1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity;->k:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x898

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
