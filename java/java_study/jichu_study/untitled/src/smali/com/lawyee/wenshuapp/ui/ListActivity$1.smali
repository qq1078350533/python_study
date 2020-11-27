.class Lcom/lawyee/wenshuapp/ui/ListActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/ListActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->b(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p2, p1, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    const-class p4, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "docid"

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getWenshuid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "keyword"

    iget-object p4, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p4}, Lcom/lawyee/wenshuapp/ui/ListActivity;->c(Lcom/lawyee/wenshuapp/ui/ListActivity;)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "wenlistvo"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "caseName"

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCasename()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "time"

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getJudgmentdate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/ui/ListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
