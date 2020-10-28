.class Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    iget-object p1, p1, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/util/i;->a(Landroid/content/Context;)Lcom/lawyee/wenshuapp/util/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/util/i;->c()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter$1;->this$0:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/util/i;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;->setNewDataList(Ljava/util/List;)V

    return-void
.end method
