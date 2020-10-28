.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$b;,
        Landroid/support/design/widget/BottomSheetBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:I

.field f:Landroid/support/v4/widget/t;

.field g:I

.field h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Z

.field private l:Z

.field private m:F

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Landroid/support/design/widget/BottomSheetBehavior$a;

.field private w:Landroid/view/VelocityTracker;

.field private x:I

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Landroid/support/v4/widget/t$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->z:Landroid/support/v4/widget/t$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->z:Landroid/support/v4/widget/t$a;

    sget-object v1, Landroid/support/design/a$k;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Landroid/support/design/a$k;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-ne v3, v2, :cond_0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/design/a$k;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->a(I)V

    sget v1, Landroid/support/design/a$k;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(Z)V

    sget v1, Landroid/support/design/a$k;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Z)V

    sget v0, Landroid/support/design/a$k;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(Z)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:F

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    return p0
.end method

.method static synthetic b(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/support/design/widget/CoordinatorLayout$d;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$d;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$d;->b()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    instance-of v0, p0, Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/design/widget/BottomSheetBehavior;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 7

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    if-eqz v5, :cond_7

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_6

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v5, 0x4

    :goto_2
    invoke-static {v4, v5}, Landroid/support/v4/view/s;->b(Landroid/view/View;I)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Ljava/util/Map;

    :cond_9
    return-void
.end method

.method private e()F
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private f()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    return v0
.end method

.method a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/s;->x(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    :goto_1
    if-eqz v0, :cond_3

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public a(Landroid/support/design/widget/BottomSheetBehavior$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    check-cast p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-virtual {p3}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget p1, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget p1, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->a:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    :goto_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_9

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    const/4 p3, 0x0

    const/4 p4, 0x4

    if-lez p1, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->e()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    const/4 v2, 0x6

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v1, p1, :cond_7

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    if-ge p1, v1, :cond_5

    iget p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge p1, p4, :cond_6

    move p1, p3

    goto :goto_0

    :cond_5
    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_7

    :cond_6
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v0, v2

    goto :goto_0

    :cond_7
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v0, p4

    :goto_0
    iget-object p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p4, p2, v1, p1}, Landroid/support/v4/widget/t;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    new-instance p1, Landroid/support/design/widget/BottomSheetBehavior$b;

    invoke-direct {p1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, p1}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    :goto_1
    iput-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    if-eq p3, p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result p3

    if-ge p7, p3, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    const/4 p3, 0x3

    :goto_0
    invoke-virtual {p0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    goto :goto_3

    :cond_2
    aput p5, p6, p1

    :goto_1
    neg-int p3, p5

    invoke-static {p2, p3}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    goto :goto_3

    :cond_3
    if-gez p5, :cond_6

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_6

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-le p7, p3, :cond_5

    iget-boolean p7, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz p7, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr p4, p3

    aput p4, p6, p1

    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    const/4 p3, 0x4

    goto :goto_0

    :cond_5
    :goto_2
    aput p5, p6, p1

    goto :goto_1

    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->d(I)V

    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    return-void
.end method

.method a(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    if-gt v1, v2, :cond_1

    move p2, v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/widget/t;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$b;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()V

    :cond_1
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/support/v4/view/s;->s(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/s;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget-boolean p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-eqz p3, :cond_2

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Landroid/support/design/a$d;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    :cond_1
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_2
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    :goto_0
    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    const/4 p3, 0x0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    const/4 v2, 0x2

    div-int/2addr p3, v2

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()V

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v3, 0x3

    if-ne p3, v3, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result p3

    :goto_1
    invoke-static {p2, p3}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x6

    if-ne p3, v3, :cond_4

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    if-ne p3, v3, :cond_5

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    goto :goto_1

    :cond_5
    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v3, 0x4

    if-ne p3, v3, :cond_6

    iget p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_1

    :cond_6
    if-eq p3, v1, :cond_7

    if-ne p3, v2, :cond_8

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    :cond_8
    :goto_2
    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    if-nez p3, :cond_9

    iget-object p3, p0, Landroid/support/design/widget/BottomSheetBehavior;->z:Landroid/support/v4/widget/t$a;

    invoke-static {p1, p3}, Landroid/support/v4/widget/t;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/t$a;)Landroid/support/v4/widget/t;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    :cond_9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/t;->b(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()V

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez p1, :cond_5

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    invoke-virtual {v0}, Landroid/support/v4/widget/t;->d()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/widget/t;->a(Landroid/view/View;I)V

    :cond_5
    iget-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    and-int/lit8 p2, p5, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method a(Landroid/view/View;F)Z
    .locals 4

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/support/v4/view/s;->C(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()V

    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v6, v4

    :goto_0
    if-eqz v6, :cond_4

    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    invoke-virtual {p1, v6, v3, v7}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    :cond_4
    iget v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    if-ne v6, v5, :cond_5

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    invoke-virtual {p1, p2, v3, v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_5

    move p2, v2

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    goto :goto_2

    :cond_6
    :pswitch_1
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    iput v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-eqz p2, :cond_7

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    return v1

    :cond_7
    :goto_2
    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p3}, Landroid/support/v4/widget/t;->a(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v2

    :cond_8
    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/view/View;

    :cond_9
    const/4 p2, 0x2

    if-ne v0, p2, :cond_a

    if-eqz v4, :cond_a

    iget-boolean p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez p2, :cond_a

    iget p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-eq p2, v2, :cond_a

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v4, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    if-eqz p1, :cond_a

    iget p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/t;

    invoke-virtual {p2}, Landroid/support/v4/widget/t;->d()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a

    move v1, v2

    :cond_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c(I)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->d(Z)V

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    return-void
.end method

.method d(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/support/design/widget/BottomSheetBehavior$a;

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-le p1, v2, :cond_0

    sub-int p1, v2, p1

    int-to-float p1, p1

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_0

    :cond_0
    sub-int p1, v2, p1

    int-to-float p1, p1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_0
    div-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$a;->a(Landroid/view/View;F)V

    :cond_1
    return-void
.end method
