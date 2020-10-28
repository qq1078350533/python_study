.class public abstract Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unnamed/b/atv/model/TreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNodeViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected containerStyle:I

.field protected context:Landroid/content/Context;

.field protected mNode:Lcom/unnamed/b/atv/model/TreeNode;

.field private mView:Landroid/view/View;

.field protected tView:Lcom/unnamed/b/atv/view/AndroidTreeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            "TE;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public getContainerStyle()I
    .locals 1

    iget v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->containerStyle:I

    return v0
.end method

.method public getNodeItemsView()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/unnamed/b/atv/R$id;->node_items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNodeView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTreeView()Lcom/unnamed/b/atv/view/AndroidTreeView;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->tView:Lcom/unnamed/b/atv/view/AndroidTreeView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->insertNodeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContainerStyle(I)V
    .locals 0

    iput p1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->containerStyle:I

    return-void
.end method

.method public setTreeViev(Lcom/unnamed/b/atv/view/AndroidTreeView;)V
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->tView:Lcom/unnamed/b/atv/view/AndroidTreeView;

    return-void
.end method

.method public toggle(Z)V
    .locals 0

    return-void
.end method

.method public toggleSelectionMode(Z)V
    .locals 0

    return-void
.end method
