.class public Lcom/unnamed/b/atv/view/TreeNodeWrapperView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final containerStyle:I

.field private nodeContainer:Landroid/view/ViewGroup;

.field private nodeItemsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->containerStyle:I

    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/unnamed/b/atv/R$id;->node_header:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->containerStyle:I

    invoke-direct {v1, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->containerStyle:I

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    sget v2, Lcom/unnamed/b/atv/R$id;->node_items:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getNodeContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public insertNodeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TreeNodeWrapperView;->nodeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
