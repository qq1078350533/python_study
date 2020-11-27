.class Lcom/lawyee/wenshuapp/ui/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/lawyee/wenshuapp/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/MainActivity;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    iput-boolean p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->a:Z

    iput-boolean p3, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->b(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->b(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->j()V

    :cond_0
    invoke-static {}, Lcom/lawyee/wenshuapp/ui/MainActivity;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u6587\u4e66\u6570\u91cf\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;Ljava/lang/String;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u6587\u4e66\u6570\u91cf\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->c(Lcom/lawyee/wenshuapp/ui/MainActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->b(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->b(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->j()V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/lawyee/wenshuapp/vo/WsCountVo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;Lcom/lawyee/wenshuapp/vo/WsCountVo;)Lcom/lawyee/wenshuapp/vo/WsCountVo;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p1, p2, v1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/ui/MainActivity;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->c(Lcom/lawyee/wenshuapp/ui/MainActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity$4;->c:Lcom/lawyee/wenshuapp/ui/MainActivity;

    const v0, 0x7f0e003c

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
