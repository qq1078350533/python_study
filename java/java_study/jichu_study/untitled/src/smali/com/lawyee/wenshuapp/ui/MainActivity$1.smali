.class Lcom/lawyee/wenshuapp/ui/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$1;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$1;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;Z)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$1;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->l()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$1;->a:Lcom/lawyee/wenshuapp/ui/MainActivity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;ZZ)V

    return-void
.end method

.method public b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
