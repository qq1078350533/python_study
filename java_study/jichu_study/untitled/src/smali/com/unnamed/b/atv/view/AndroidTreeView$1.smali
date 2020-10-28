.class Lcom/unnamed/b/atv/view/AndroidTreeView$1;
.super Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unnamed/b/atv/view/AndroidTreeView;->getView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

.field final synthetic val$viewTreeItems:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$1;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iput-object p3, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$1;->val$viewTreeItems:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNodeItemsView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$1;->val$viewTreeItems:Landroid/widget/LinearLayout;

    return-object v0
.end method
