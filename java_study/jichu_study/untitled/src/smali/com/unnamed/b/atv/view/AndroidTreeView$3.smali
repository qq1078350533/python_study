.class Lcom/unnamed/b/atv/view/AndroidTreeView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

.field final synthetic val$n:Lcom/unnamed/b/atv/model/TreeNode;


# direct methods
.method constructor <init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iput-object p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getLongClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getLongClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;->onLongClick(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$200(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$200(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-static {p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->access$100(Lcom/unnamed/b/atv/view/AndroidTreeView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->this$0:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView$3;->val$n:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleNode(Lcom/unnamed/b/atv/model/TreeNode;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
