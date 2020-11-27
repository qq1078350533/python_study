.class Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$4;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    iget-boolean v0, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->hasSub:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    instance-of v0, v0, Lcom/lawyee/wenshuapp/vo/Anyou;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    check-cast p2, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/Anyou;->getSubList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/Anyou;

    new-instance v1, Lcom/unnamed/b/atv/model/TreeNode;

    new-instance v2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;-><init>(Lnet/lawyee/mobilelib/vo/BaseVO;Z)V

    invoke-direct {v1, v2}, Lcom/unnamed/b/atv/model/TreeNode;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$4;->a:Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->d(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Lcom/unnamed/b/atv/view/AndroidTreeView;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Lcom/unnamed/b/atv/model/TreeNode;Lcom/unnamed/b/atv/model/TreeNode;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
