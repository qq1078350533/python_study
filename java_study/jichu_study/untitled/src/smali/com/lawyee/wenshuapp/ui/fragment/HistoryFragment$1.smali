.class Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$1;->a:Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;

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

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$1;->a:Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;)Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setDate(Ljava/util/Date;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$1;->a:Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;

    invoke-static {p2, p1}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void
.end method
