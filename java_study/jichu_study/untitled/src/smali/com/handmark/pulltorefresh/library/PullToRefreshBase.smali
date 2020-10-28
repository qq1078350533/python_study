.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$e;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$a;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field private i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private k:Landroid/widget/FrameLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Interpolator;

.field private r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field private s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private u:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private w:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private x:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "TT;>.f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a(IJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$e;)V

    return-void
.end method

.method private final a(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$e;)V
    .locals 8

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;->a()V

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v0

    goto :goto_0

    :goto_1
    if-eq v3, p1, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    :cond_2
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$e;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;

    invoke-virtual {p0, p1, p4, p5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$f;

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()V

    return-void
.end method

.method static synthetic b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    :goto_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b:I

    sget-object v0, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :cond_1
    sget v3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/view/View;)V

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ptrAdapterViewBackground"

    const-string p2, "ptrRefreshableViewBackground"

    invoke-static {p1, p2}, Lcom/handmark/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_1
    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    :cond_5
    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/handmark/pulltorefresh/library/d$g;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    :cond_6
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getMaximumPullScroll()I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;->b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o()V
    .locals 6

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iget v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    :goto_0
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->c:[I

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eq v3, v1, :cond_1

    sub-float/2addr v0, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v2

    goto :goto_1

    :cond_1
    sub-float/2addr v0, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->c:[I

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    :goto_2
    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(F)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v2, v1, :cond_3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    :goto_4
    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    goto :goto_5

    :cond_3
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v1, v3, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v2, v0, :cond_4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    goto :goto_4

    :cond_4
    :goto_5
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(ZZ)Lcom/handmark/pulltorefresh/library/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    return-object p1
.end method

.method protected a()V
    .locals 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJ)V

    return-void
.end method

.method protected final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p1, p2, :cond_0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :pswitch_1
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq p2, p1, :cond_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$e;)V
    .locals 8

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/PullToRefreshBase$e;)V

    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final varargs a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
    .locals 1

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->b:[I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    aget-boolean p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c()V

    :goto_0
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {p1, p0, p2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g()V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g()V

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;

    invoke-direct {p1, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/PullToRefreshBase$e;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()V

    :goto_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(ZZ)Lcom/handmark/pulltorefresh/library/b;
    .locals 1

    new-instance v0, Lcom/handmark/pulltorefresh/library/b;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/b;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    :cond_1
    return-object v0
.end method

.method protected b()V
    .locals 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    return-void
.end method

.method protected abstract d()Z
.end method

.method protected abstract e()Z
.end method

.method protected f()V
    .locals 3

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    return v0
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method protected final k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    return-void
.end method

.method protected final l()V
    .locals 7

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v4

    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    neg-int v2, v0

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v4, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    neg-int v4, v0

    goto :goto_2

    :cond_1
    move v4, v6

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    neg-int v1, v0

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    neg-int v3, v0

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    sub-float v1, v0, v1

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v3, p1, v3

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v1, p1, v1

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    sub-float v3, v0, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    iget-boolean v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    if-eqz v5, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_1
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_9

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    return p1

    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    return v1
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ptr_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    const-string v0, "ptr_show_refreshing_view"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v0

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v3, :cond_1

    :cond_0
    new-array v3, v2, [Z

    aput-boolean v2, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l()V

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(II)V

    new-instance p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;

    invoke-direct {p1, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()V

    return v2

    :pswitch_1
    iget-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    return v2

    :cond_5
    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iput p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    return v2

    :cond_6
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 3

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/handmark/pulltorefresh/library/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$b;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/handmark/pulltorefresh/library/a;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/handmark/pulltorefresh/library/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/handmark/pulltorefresh/library/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    return-void
.end method
