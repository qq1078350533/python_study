.class Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/util/i$a;


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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$2;->a:Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$2;->a:Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;)Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
