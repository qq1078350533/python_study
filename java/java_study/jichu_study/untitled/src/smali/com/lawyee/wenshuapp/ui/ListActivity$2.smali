.class Lcom/lawyee/wenshuapp/ui/ListActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/ListActivity;->m()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/ListActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$2;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$2;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->d(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    return-void
.end method

.method public b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$2;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->e(Lcom/lawyee/wenshuapp/ui/ListActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$2;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->f(Lcom/lawyee/wenshuapp/ui/ListActivity;)I

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$2;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->g(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    return-void
.end method
