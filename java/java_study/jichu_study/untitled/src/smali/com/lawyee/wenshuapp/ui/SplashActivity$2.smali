.class Lcom/lawyee/wenshuapp/ui/SplashActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/ui/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity$2;->a:Lcom/lawyee/wenshuapp/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity$2;->a:Lcom/lawyee/wenshuapp/ui/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SplashActivity$2;->a:Lcom/lawyee/wenshuapp/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/ui/SplashActivity;->finish()V

    return-void
.end method
