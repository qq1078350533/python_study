.class public Lcom/unnamed/b/atv/view/AndroidTreeView;
.super Ljava/lang/Object;


# static fields
.field private static final NODES_PATH_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private applyForRoot:Z

.field private containerStyle:I

.field private defaultViewHolderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private enableAutoToggle:Z

.field private mContext:Landroid/content/Context;

.field protected mRoot:Lcom/unnamed/b/atv/model/TreeNode;

.field private mSelectionModeEnabled:Z

.field private mUseDefaultAnimation:Z

.field private nodeClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

.field private nodeLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

.field private use2dScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    const-class v1, Lcom/unnamed/b/atv/holder/SimpleViewHolder;

    iput-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    const-class v1, Lcom/unnamed/b/atv/holder/SimpleViewHolder;

    iput-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    iput-object p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;
    .locals 0

    iget-object p0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/unnamed/b/atv/view/AndroidTreeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    return p0
.end method

.method static synthetic access$200(Lcom/unnamed/b/atv/view/AndroidTreeView;)Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    return-object p0
.end method

.method private addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    :cond_0
    new-instance p1, Lcom/unnamed/b/atv/view/AndroidTreeView$2;

    invoke-direct {p1, p0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView$2;-><init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/unnamed/b/atv/view/AndroidTreeView$3;

    invoke-direct {p1, p0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView$3;-><init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static collapse(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    new-instance v1, Lcom/unnamed/b/atv/view/AndroidTreeView$5;

    invoke-direct {v1, p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView$5;-><init>(Landroid/view/View;I)V

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/unnamed/b/atv/model/TreeNode;->setExpanded(Z)Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapse(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static expand(Landroid/view/View;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/unnamed/b/atv/view/AndroidTreeView$4;

    invoke-direct {v1, p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView$4;-><init>(Landroid/view/View;I)V

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private expandLevel(Lcom/unnamed/b/atv/model/TreeNode;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getLevel()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandLevel(Lcom/unnamed/b/atv/model/TreeNode;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/unnamed/b/atv/model/TreeNode;->setExpanded(Z)Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggle(Z)V

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expand(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private getSaveState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSaveState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getSelected(Lcom/unnamed/b/atv/model/TreeNode;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected(Lcom/unnamed/b/atv/model/TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    .locals 5

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getViewHolder()Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    invoke-virtual {p1, v0}, Lcom/unnamed/b/atv/model/TreeNode;->setViewHolder(Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;)Lcom/unnamed/b/atv/model/TreeNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getContainerStyle()I

    move-result p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    invoke-virtual {v0, p1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->setContainerStyle(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getTreeView()Lcom/unnamed/b/atv/view/AndroidTreeView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->setTreeViev(Lcom/unnamed/b/atv/view/AndroidTreeView;)V

    :cond_2
    return-object v0
.end method

.method private makeAllSelection(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v1, p1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->selectNode(Lcom/unnamed/b/atv/model/TreeNode;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private restoreNodeState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->restoreNodeState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private selectNode(Lcom/unnamed/b/atv/model/TreeNode;ZZ)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->setSelected(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v0, p2, p3}, Lcom/unnamed/b/atv/view/AndroidTreeView;->selectNode(Lcom/unnamed/b/atv/model/TreeNode;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toggleSelectionMode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v0, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleSelectionMode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->toggleSelectionMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addNode(Lcom/unnamed/b/atv/model/TreeNode;Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->addNode(Landroid/view/ViewGroup;Lcom/unnamed/b/atv/model/TreeNode;)V

    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 3

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public collapseNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    return-void
.end method

.method public deselectAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->makeAllSelection(ZZ)V

    return-void
.end method

.method public expandAll()V
    .locals 2

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    return-void
.end method

.method public expandLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v1, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandLevel(Lcom/unnamed/b/atv/model/TreeNode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    return-void
.end method

.method public getSaveState()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSaveState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected(Lcom/unnamed/b/atv/model/TreeNode;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSelectedValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v2}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4

    if-lez p1, :cond_1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/unnamed/b/atv/view/TwoDScrollView;

    invoke-direct {p1, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/unnamed/b/atv/view/TwoDScrollView;

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->applyForRoot:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    iget v3, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/unnamed/b/atv/R$id;->tree_items:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    new-instance v2, Lcom/unnamed/b/atv/view/AndroidTreeView$1;

    iget-object v3, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView$1;-><init>(Lcom/unnamed/b/atv/view/AndroidTreeView;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Lcom/unnamed/b/atv/model/TreeNode;->setViewHolder(Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;)Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    return-object p1
.end method

.method public is2dScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    return v0
.end method

.method public isAutoToggleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    return v0
.end method

.method public isSelectionModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    return v0
.end method

.method public removeNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getParent()Lcom/unnamed/b/atv/model/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->getParent()Lcom/unnamed/b/atv/model/TreeNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unnamed/b/atv/model/TreeNode;->deleteChild(Lcom/unnamed/b/atv/model/TreeNode;)I

    move-result p1

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getViewHolderForNode(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->getNodeItemsView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public restoreState(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseAll()V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->restoreNodeState(Lcom/unnamed/b/atv/model/TreeNode;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->makeAllSelection(ZZ)V

    return-void
.end method

.method public selectNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/unnamed/b/atv/model/TreeNode;->setSelected(Z)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toogleSelectionForNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    :cond_0
    return-void
.end method

.method public setDefaultAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mUseDefaultAnimation:Z

    return-void
.end method

.method public setDefaultContainerStyle(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultContainerStyle(IZ)V

    return-void
.end method

.method public setDefaultContainerStyle(IZ)V
    .locals 0

    iput p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->containerStyle:I

    iput-boolean p2, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->applyForRoot:Z

    return-void
.end method

.method public setDefaultNodeClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    return-void
.end method

.method public setDefaultNodeLongClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->nodeLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    return-void
.end method

.method public setDefaultViewHolder(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->defaultViewHolderClass:Ljava/lang/Class;

    return-void
.end method

.method public setRoot(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    return-void
.end method

.method public setSelectionModeEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->deselectAll()V

    :cond_0
    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mSelectionModeEnabled:Z

    iget-object v0, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->mRoot:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0, v1, p1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->toggleSelectionMode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUse2dScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->use2dScroll:Z

    return-void
.end method

.method public setUseAutoToggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/AndroidTreeView;->enableAutoToggle:Z

    return-void
.end method

.method public toggleNode(Lcom/unnamed/b/atv/model/TreeNode;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isExpanded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->collapseNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->expandNode(Lcom/unnamed/b/atv/model/TreeNode;Z)V

    :goto_0
    return-void
.end method
