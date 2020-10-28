.class Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;

.field final synthetic val$node:Lcom/unnamed/b/atv/model/TreeNode;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;->this$0:Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;->val$node:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;->this$0:Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->getTreeView()Lcom/unnamed/b/atv/view/AndroidTreeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->deselectAll()V

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;->val$node:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->setSelected(Z)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;->this$0:Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->access$000(Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
