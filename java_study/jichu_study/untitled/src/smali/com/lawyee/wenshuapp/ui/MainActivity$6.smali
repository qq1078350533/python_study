.class Lcom/lawyee/wenshuapp/ui/MainActivity$6;
.super Lcom/lawyee/wenshuapp/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/MainActivity;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/MainActivity;Landroid/content/Context;III)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$6;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lawyee/wenshuapp/widget/a;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity$6;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$6;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->e(Lcom/lawyee/wenshuapp/ui/MainActivity;)V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$6;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v1, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method
