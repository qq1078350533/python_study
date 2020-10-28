.class public Lcom/unnamed/b/atv/model/TreeNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;,
        Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;,
        Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;
    }
.end annotation


# static fields
.field public static final NODES_ID_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

.field private mExpanded:Z

.field private mId:I

.field private mLastId:I

.field private mLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

.field private mParent:Lcom/unnamed/b/atv/model/TreeNode;

.field private mSelectable:Z

.field private mSelected:Z

.field private mValue:Ljava/lang/Object;

.field private mViewHolder:Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private generateId()I
    .locals 1

    iget v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLastId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLastId:I

    return v0
.end method

.method public static root()Lcom/unnamed/b/atv/model/TreeNode;
    .locals 2

    new-instance v0, Lcom/unnamed/b/atv/model/TreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unnamed/b/atv/model/TreeNode;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/model/TreeNode;->setSelectable(Z)V

    return-object v0
.end method


# virtual methods
.method public addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 1

    iput-object p0, p1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-direct {p0}, Lcom/unnamed/b/atv/model/TreeNode;->generateId()I

    move-result v0

    iput v0, p1, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addChildren(Ljava/util/Collection;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;)",
            "Lcom/unnamed/b/atv/model/TreeNode;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addChildren([Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public deleteChild(Lcom/unnamed/b/atv/model/TreeNode;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p1, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unnamed/b/atv/model/TreeNode;

    iget v2, v2, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unnamed/b/atv/model/TreeNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    :goto_0
    iget-object v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLongClickListener()Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    return-object v0
.end method

.method public getParent()Lcom/unnamed/b/atv/model/TreeNode;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/unnamed/b/atv/model/TreeNode;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, v1, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/unnamed/b/atv/model/TreeNode;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHolder()Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mViewHolder:Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mExpanded:Z

    return v0
.end method

.method public isFirstChild()Z
    .locals 3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    iget v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget v2, p0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLastChild()Z
    .locals 4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    iget-object v2, v2, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    iget v0, v0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    iget v2, p0, Lcom/unnamed/b/atv/model/TreeNode;->mId:I

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public isLeaf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/model/TreeNode;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoot()Z
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mParent:Lcom/unnamed/b/atv/model/TreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;

    return-object p0
.end method

.method public setExpanded(Z)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mExpanded:Z

    return-object p0
.end method

.method public setLongClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mLongClickListener:Lcom/unnamed/b/atv/model/TreeNode$TreeNodeLongClickListener;

    return-object p0
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelectable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mSelected:Z

    return-void
.end method

.method public setViewHolder(Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;)Lcom/unnamed/b/atv/model/TreeNode;
    .locals 0

    iput-object p1, p0, Lcom/unnamed/b/atv/model/TreeNode;->mViewHolder:Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;->mNode:Lcom/unnamed/b/atv/model/TreeNode;

    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/model/TreeNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
