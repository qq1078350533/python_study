.class public Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
        "Landroid/widget/HorizontalScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$a;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    sget p1, Lcom/handmark/pulltorefresh/library/d$d;->scrollview:I

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setId(I)V

    return-object v0
.end method

.method protected d()Z
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected e()Z
    .locals 4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->a:Landroid/view/View;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
