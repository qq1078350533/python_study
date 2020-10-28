.class public abstract Lcom/lawyee/wenshuapp/ui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# static fields
.field protected static final j:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private k:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/BaseActivity;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BaseActivity;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BaseActivity;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->a(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-static {p0}, Lcom/lawyee/wenshuapp/util/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->finish()V

    return-void
.end method
