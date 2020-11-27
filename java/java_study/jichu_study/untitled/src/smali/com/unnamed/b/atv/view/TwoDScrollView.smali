.class public Lcom/unnamed/b/atv/view/TwoDScrollView;
.super Landroid/widget/FrameLayout;


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTwoDScrollViewMovedFocus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->initTwoDScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->initTwoDScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->initTwoDScrollView()V

    return-void
.end method

.method private canScroll()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private clamp(III)I
    .locals 1

    if-ge p2, p3, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    sub-int/2addr p3, p2

    return p3

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private doScroll(II)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZIIZII)Landroid/view/View;
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x2

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v6, :cond_b

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v15

    const/16 v16, 0x1

    if-ge v0, v13, :cond_a

    if-ge v12, v1, :cond_a

    if-ge v2, v15, :cond_a

    if-ge v14, v3, :cond_a

    if-ge v0, v12, :cond_0

    if-ge v13, v1, :cond_0

    if-ge v2, v14, :cond_0

    if-ge v15, v3, :cond_0

    move/from16 v17, v16

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    :goto_1
    if-nez v9, :cond_1

    move-object v9, v11

    move/from16 v10, v17

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v12, v7, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v13, v7, :cond_4

    :cond_3
    move/from16 v7, v16

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz p4, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    if-lt v14, v12, :cond_6

    :cond_5
    if-nez p4, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v15, v12, :cond_7

    :cond_6
    move/from16 v12, v16

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-eqz v10, :cond_8

    if-eqz v17, :cond_a

    if-eqz v7, :cond_a

    if-eqz v12, :cond_a

    goto :goto_4

    :cond_8
    if-eqz v17, :cond_9

    move-object v9, v11

    move/from16 v10, v16

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v12, :cond_a

    :goto_4
    move-object v9, v11

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_b
    return-object v9
.end method

.method private findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    sub-int v4, p2, v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int v6, p4, p2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sub-int v7, p4, p2

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p2

    if-ge p2, v4, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p2

    if-le p2, v3, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result p2

    if-ge p2, v7, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p2

    if-le p2, v6, :cond_0

    return-object p5

    :cond_0
    move-object v1, p0

    move v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initTwoDScrollView()V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scrollAndFocus(IIIIII)Z
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v13

    add-int v14, v13, v0

    const/16 v0, 0x21

    const/4 v6, 0x1

    if-ne v8, v0, :cond_0

    move/from16 v16, v6

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v5

    add-int v4, v5, v1

    move/from16 v1, p4

    if-ne v1, v0, :cond_1

    move/from16 v17, v6

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    move v15, v4

    move/from16 v4, v17

    move v8, v5

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v7

    :cond_2
    if-lt v9, v13, :cond_3

    if-le v10, v14, :cond_4

    :cond_3
    if-lt v11, v8, :cond_5

    if-gt v12, v15, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    if-eqz v16, :cond_6

    sub-int v1, v9, v13

    goto :goto_2

    :cond_6
    sub-int v1, v10, v14

    :goto_2
    if-eqz v17, :cond_7

    sub-int v2, v11, v8

    goto :goto_3

    :cond_7
    sub-int v2, v12, v15

    :goto_3
    invoke-direct {v7, v2, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    const/4 v1, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_8

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    :cond_8
    return v1
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(IZ)Z
    .locals 5

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getMaxScrollAmountHorizontal()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getMaxScrollAmountVertical()I

    move-result v1

    :goto_0
    const/16 v2, 0x21

    const/16 v3, 0x82

    const/4 v4, 0x0

    if-nez p2, :cond_7

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    invoke-direct {p0, v4, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    goto :goto_3

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result p2

    if-ge p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p0, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-ge p2, v1, :cond_4

    move v1, p2

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return v4

    :cond_5
    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    neg-int v1, v1

    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    invoke-direct {p0, p2, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_6

    :cond_8
    if-ne p1, v2, :cond_9

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result p2

    if-ge p2, v1, :cond_9

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    goto :goto_4

    :cond_9
    if-ne p1, v3, :cond_a

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    invoke-virtual {p0, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-ge p2, v1, :cond_a

    move v1, p2

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    return v4

    :cond_b
    if-ne p1, v3, :cond_c

    goto :goto_5

    :cond_c
    neg-int v1, v1

    :goto_5
    invoke-direct {p0, v1, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    :goto_6
    const/4 p1, 0x1

    return p1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 7

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v5, v4}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result v3

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->onScrollChanged(IIII)V

    :cond_2
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->postInvalidate()V

    :cond_3
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    :goto_0
    add-int/2addr p1, v1

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_2
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x42

    if-nez p1, :cond_4

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x11

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x21

    if-nez p1, :cond_6

    invoke-virtual {p0, v0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fullScroll(IZ)Z

    move-result v3

    :cond_7
    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(II)V
    .locals 17

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v6, v7}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v8, v6, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v10

    const/4 v13, 0x0

    sub-int v14, v3, v2

    const/4 v15, 0x0

    sub-int v16, v1, v0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v8 .. v16}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v8, 0x1

    if-lez p2, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    if-lez p1, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    iget-object v0, v6, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v0, v6, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_4

    if-eqz v9, :cond_3

    const/16 v1, 0x82

    goto :goto_2

    :cond_3
    const/16 v1, 0x21

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v8, v6, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    iput-boolean v7, v6, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    :cond_4
    iget-object v0, v6, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->awakenScrollBars(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->invalidate()V

    :cond_5
    return-void
.end method

.method public fullScroll(IZ)Z
    .locals 9

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    if-ne p1, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result p1

    return p1

    :cond_2
    if-ne p1, v0, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    sub-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollAndFocus(IIIIII)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmountHorizontal()I
    .locals 2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountVertical()I
    .locals 2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v0, p3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p2

    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->canScroll()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTouchSlop:I

    if-gt v0, v2, :cond_2

    if-le p1, v2, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    iput p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsBeingDragged:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    iget-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->doScroll(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iget v3, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v3, v2

    float-to-int v3, v3

    iput p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    iput v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result p1

    if-gez p1, :cond_5

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, p1

    if-lez v2, :cond_3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    if-gez v3, :cond_6

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_7

    goto :goto_1

    :cond_6
    if-lez v3, :cond_7

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    if-lez v2, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_7
    move v1, v3

    :cond_8
    :goto_1
    if-nez v1, :cond_9

    if-eqz p1, :cond_c

    :cond_9
    invoke-virtual {p0, p1, v1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMaximumVelocity:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mMinimumVelocity:I

    if-le v1, v2, :cond_a

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    neg-int v0, v0

    neg-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->fling(II)V

    :cond_a
    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_b
    iput v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionY:F

    iput p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastMotionX:F

    :cond_c
    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mTwoDScrollViewMovedFocus:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v1, v0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->clamp(III)I

    move-result p2

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unnamed/b/atv/view/TwoDScrollView;->awakenScrollBars(I)Z

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/unnamed/b/atv/view/TwoDScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/unnamed/b/atv/view/TwoDScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/unnamed/b/atv/view/TwoDScrollView;->smoothScrollBy(II)V

    return-void
.end method
