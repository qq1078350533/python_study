.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    new-instance v0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;

    invoke-direct {v0, p0, p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;-><init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V

    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_1

    check-cast p2, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;->removeViewAt(I)V

    :cond_0
    invoke-virtual {p2, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    const/4 p3, 0x0

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-interface {p2, p1, p3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Landroid/widget/Checkable;

    if-eqz p3, :cond_2

    new-instance p3, Lnet/lawyee/mobilewidget/dslv/DragSortItemViewCheckable;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p3, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p2}, Lnet/lawyee/mobilewidget/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    move-object p2, p3

    :cond_3
    :goto_1
    iget-object p3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p3, p1, p2, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;ILandroid/view/View;Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method
