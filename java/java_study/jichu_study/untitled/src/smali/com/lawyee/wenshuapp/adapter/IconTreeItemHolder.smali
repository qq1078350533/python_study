.class public Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;
.super Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder<",
        "Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private arrowView:Landroid/widget/ImageView;

.field private nodeSelector:Landroid/widget/CheckBox;

.field private tvValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/model/TreeNode$BaseNodeViewHolder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->nodeSelector:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method public createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c003e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->tvValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->tvValue:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    invoke-virtual {v3}, Lnet/lawyee/mobilelib/vo/BaseVO;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09009e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090042

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->arrowView:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    instance-of v3, v3, Lcom/lawyee/wenshuapp/vo/Anyou;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    check-cast v3, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lawyee/wenshuapp/vo/Anyou;->hasSub(Ljava/util/List;)Z

    move-result v3

    :goto_0
    iput-boolean v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->hasSub:Z

    goto :goto_1

    :cond_0
    iget-object v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    instance-of v3, v3, Lcom/lawyee/wenshuapp/vo/Spcx;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    check-cast v3, Lcom/lawyee/wenshuapp/vo/Spcx;

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lawyee/wenshuapp/vo/Spcx;->hasSub(Ljava/util/List;)Z

    move-result v3

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v3, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->hasSub:Z

    if-eqz v3, :cond_3

    iget-boolean p2, p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->isFirstLevel:Z

    if-eqz p2, :cond_2

    const p2, 0x7f08007d

    goto :goto_2

    :cond_2
    const p2, 0x7f08007b

    :goto_2
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->arrowView:Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    const p2, 0x7f08007a

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->arrowView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0900d6

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->nodeSelector:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->nodeSelector:Landroid/widget/CheckBox;

    new-instance v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$1;-><init>(Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;Lcom/unnamed/b/atv/model/TreeNode;)V

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->nodeSelector:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/unnamed/b/atv/model/TreeNode;->isSelected()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object v0
.end method

.method public bridge synthetic createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    check-cast p2, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->createNodeView(Lcom/unnamed/b/atv/model/TreeNode;Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public toggle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->arrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f080075

    goto :goto_0

    :cond_0
    const p1, 0x7f080077

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public toggleSelectionMode(Z)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->nodeSelector:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;->mNode:Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
