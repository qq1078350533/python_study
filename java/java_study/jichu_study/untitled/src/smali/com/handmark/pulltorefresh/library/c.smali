.class public final Lcom/handmark/pulltorefresh/library/c;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public static a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "*>;IIIIIIFZ)V"
        }
    .end annotation

    sget-object v0, Lcom/handmark/pulltorefresh/library/c$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result p1

    move p2, p4

    move v2, p3

    move p3, p1

    move p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result p3

    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result p4

    if-nez p4, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p8, :cond_5

    if-eqz p1, :cond_5

    add-int/2addr p1, p2

    rsub-int/lit8 p2, p6, 0x0

    if-ge p1, p2, :cond_2

    invoke-virtual {p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array p4, v1, [Z

    invoke-virtual {p0, p2, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_1
    add-int/2addr p3, p1

    :goto_1
    int-to-float p1, p3

    mul-float/2addr p7, p1

    float-to-int p1, p7

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_3

    :cond_2
    add-int p2, p5, p6

    if-le p1, p2, :cond_4

    invoke-virtual {p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_3

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array p4, v1, [Z

    invoke-virtual {p0, p2, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_3
    add-int/2addr p3, p1

    sub-int/2addr p3, p5

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, p6, :cond_6

    sub-int/2addr p1, p5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, p6, :cond_7

    goto :goto_2

    :cond_5
    if-eqz p8, :cond_7

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object p2

    if-ne p1, p2, :cond_7

    :cond_6
    :goto_2
    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array p2, v1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "*>;IIIIIZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/handmark/pulltorefresh/library/c;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V

    return-void
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "*>;IIIIZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/c;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V

    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
