.class public Lcom/bigkoo/pickerview/lib/WheelView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bigkoo/pickerview/lib/WheelView$DividerType;,
        Lcom/bigkoo/pickerview/lib/WheelView$ACTION;
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:J

.field F:I

.field private G:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

.field private H:Landroid/view/GestureDetector;

.field private I:Z

.field private J:Z

.field private K:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field private O:F

.field private P:I

.field private Q:I

.field private R:I

.field private S:F

.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field c:Lcom/bigkoo/pickerview/b/c;

.field d:Ljava/util/concurrent/ScheduledExecutorService;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field g:Landroid/graphics/Paint;

.field h:Lcom/bigkoo/pickerview/a/b;

.field i:I

.field j:I

.field k:I

.field l:F

.field m:Landroid/graphics/Typeface;

.field n:I

.field o:I

.field p:I

.field q:F

.field r:Z

.field s:F

.field t:F

.field u:F

.field v:F

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->J:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:Landroid/graphics/Typeface;

    const v1, -0x575758

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    const v1, -0xd5d5d6

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    const v1, -0x2a2a2b

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    const v1, 0x3fcccccd    # 1.6f

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    const/16 v1, 0xb

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->E:J

    const/16 v1, 0x11

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->Q:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->R:I

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/bigkoo/pickerview/a$b;->pickerview_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    const v2, 0x4019999a    # 2.4f

    :goto_0
    iput v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    goto :goto_1

    :cond_0
    cmpg-float v3, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-gtz v3, :cond_1

    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    const v2, 0x40666666    # 3.6f

    goto :goto_0

    :cond_1
    if-gtz v3, :cond_2

    cmpg-float v3, v2, v4

    if-gez v3, :cond_2

    const/high16 v2, 0x40900000    # 4.5f

    goto :goto_0

    :cond_2
    cmpg-float v3, v4, v2

    const/high16 v4, 0x40400000    # 3.0f

    if-gtz v3, :cond_3

    cmpg-float v3, v2, v4

    if-gez v3, :cond_3

    const/high16 v2, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_3
    cmpl-float v3, v2, v4

    if-ltz v3, :cond_4

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    sget-object v2, Lcom/bigkoo/pickerview/a$g;->pickerview:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/bigkoo/pickerview/a$g;->pickerview_pickerview_gravity:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    sget v0, Lcom/bigkoo/pickerview/a$g;->pickerview_pickerview_textColorOut:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    sget v0, Lcom/bigkoo/pickerview/a$g;->pickerview_pickerview_textColorCenter:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    sget v0, Lcom/bigkoo/pickerview/a$g;->pickerview_pickerview_dividerColor:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    sget v0, Lcom/bigkoo/pickerview/a$g;->pickerview_pickerview_textSize:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    sget v0, Lcom/bigkoo/pickerview/a$g;->pickerview_pickerview_lineSpacingMultiplier:I

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->c()V

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    add-int/2addr p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(I)I

    move-result p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/bigkoo/pickerview/c/a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bigkoo/pickerview/c/a;

    invoke-interface {p1}, Lcom/bigkoo/pickerview/c/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->a:Landroid/content/Context;

    new-instance v0, Lcom/bigkoo/pickerview/lib/c;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/lib/c;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->b:Landroid/os/Handler;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/bigkoo/pickerview/lib/b;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/lib/b;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Landroid/view/GestureDetector;

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    :goto_0
    iget v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    if-le v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->J:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_1
    mul-double/2addr v0, v2

    double-to-int p1, v0

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    :goto_2
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->Q:I

    goto :goto_3

    :cond_4
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->Q:I

    :goto_3
    return-void
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    const v1, 0x3f99999a    # 1.2f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    goto :goto_1

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->J:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    :goto_1
    mul-double/2addr v0, v2

    double-to-int p1, v0

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    :goto_2
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->R:I

    goto :goto_3

    :cond_4
    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->R:I

    :goto_3
    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->f()V

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->C:I

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->C:I

    mul-int/lit8 v1, v0, 0x2

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    int-to-double v0, v0

    div-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->F:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    int-to-float v1, v0

    iget v2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->u:F

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    :cond_2
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    return-void
.end method

.method private f()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v3}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v3, v2}, Lcom/bigkoo/pickerview/a/b;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->j:I

    if-le v3, v4, :cond_0

    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->j:I

    :cond_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    const-string v4, "\u661f\u671f"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v5

    iput v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [F

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move p1, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget p2, v2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected final a(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bigkoo/pickerview/lib/a;

    invoke-direct {v1, p0, p1}, Lcom/bigkoo/pickerview/lib/a;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;F)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method a(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V
    .locals 7

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    if-ne p1, v0, :cond_2

    :cond_0
    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_1
    neg-int p1, p1

    :goto_0
    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bigkoo/pickerview/lib/e;

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    invoke-direct {v1, p0, p1}, Lcom/bigkoo/pickerview/lib/e;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->K:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->J:Z

    return-void
.end method

.method protected final b()V
    .locals 3

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->c:Lcom/bigkoo/pickerview/b/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bigkoo/pickerview/lib/d;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/lib/d;-><init>(Lcom/bigkoo/pickerview/lib/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/bigkoo/pickerview/a/b;
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->M:I

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    new-array v8, v2, [Ljava/lang/Object;

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->y:I

    :try_start_0
    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->y:I

    invoke-interface {v1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v1

    rem-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "WheelView"

    const-string v2, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    const/4 v9, 0x0

    if-nez v1, :cond_2

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    if-gez v1, :cond_1

    iput v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    :cond_1
    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    iget-object v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    if-gez v1, :cond_3

    iget-object v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v1

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    :cond_3
    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_4

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    iput v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    :cond_4
    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    rem-float v10, v1, v2

    move v1, v9

    :goto_2
    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    if-ge v1, v2, :cond_8

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->x:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    sub-int/2addr v3, v2

    iget-boolean v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-eqz v2, :cond_5

    invoke-direct {v0, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->a(I)I

    move-result v2

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v3, v2}, Lcom/bigkoo/pickerview/a/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v1

    goto :goto_3

    :cond_5
    if-gez v3, :cond_6

    const-string v2, ""

    aput-object v2, v8, v1

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v2}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_7

    const-string v2, ""

    aput-object v2, v8, v1

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v2, v3}, Lcom/bigkoo/pickerview/a/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->G:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    sget-object v2, Lcom/bigkoo/pickerview/lib/WheelView$DividerType;->WRAP:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    const/4 v11, 0x0

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->j:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_9
    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->j:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    :goto_4
    add-int/lit8 v1, v1, -0xc

    int-to-float v1, v1

    cmpg-float v2, v1, v11

    if-gtz v2, :cond_a

    const/high16 v1, 0x41200000    # 10.0f

    :cond_a
    move v12, v1

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v1, v1

    sub-float v13, v1, v12

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    iget-object v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v5

    move v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    iget-object v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    :goto_5
    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->J:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    int-to-float v1, v1

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->u:F

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c
    move v1, v9

    :goto_6
    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    if-ge v1, v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    sub-float/2addr v2, v10

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double v12, v2, v12

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    double-to-float v4, v4

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v5, v4, v5

    if-gez v5, :cond_12

    const/high16 v5, -0x3d4c0000    # -90.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_d

    goto/16 :goto_b

    :cond_d
    iget-boolean v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->J:Z

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    aget-object v4, v8, v1

    invoke-direct {v0, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v8, v1

    invoke-direct {v0, v5}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_e
    aget-object v4, v8, v1

    invoke-direct {v0, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-direct {v0, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->b(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->c(Ljava/lang/String;)V

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-double v5, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    iget v14, v0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget v14, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-double v14, v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v5, v12

    double-to-float v5, v5

    invoke-virtual {v7, v11, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v6, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v7, v12, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    cmpg-float v13, v5, v6

    const v14, 0x3f4ccccd    # 0.8f

    if-gtz v13, :cond_f

    iget v13, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v13, v13

    add-float/2addr v13, v5

    cmpl-float v6, v13, v6

    if-ltz v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v6, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v6, v6

    iget v13, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    sub-float/2addr v13, v5

    invoke-virtual {v7, v11, v11, v6, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move v13, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v14

    invoke-virtual {v7, v12, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->R:I

    int-to-float v9, v9

    iget v10, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v10, v10

    iget-object v14, v0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v9, v10, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    sub-float/2addr v9, v5

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v5, v5

    iget v10, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v11, v9, v5, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v12

    invoke-virtual {v7, v12, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->Q:I

    int-to-float v2, v2

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v3, v3

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    :goto_8
    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_f
    move v13, v10

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    cmpg-float v10, v5, v9

    if-gtz v10, :cond_10

    iget v10, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v10, v10

    add-float/2addr v10, v5

    cmpl-float v9, v10, v9

    if-ltz v9, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v9, v9

    iget v10, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    sub-float/2addr v10, v5

    invoke-virtual {v7, v11, v11, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v12

    invoke-virtual {v7, v12, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->Q:I

    int-to-float v9, v9

    iget v10, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v10, v10

    iget v15, v0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    sub-float/2addr v10, v15

    iget-object v15, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v9, v10, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    sub-float/2addr v9, v5

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    int-to-float v5, v5

    iget v10, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v11, v9, v5, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    invoke-virtual {v7, v12, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->R:I

    int-to-float v2, v2

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    goto :goto_8

    :cond_10
    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->s:F

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_11

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v10, v9

    add-float/2addr v10, v5

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->t:F

    cmpg-float v5, v10, v5

    if-gtz v5, :cond_11

    int-to-float v2, v9

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->S:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->Q:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    aget-object v3, v8, v1

    invoke-interface {v2, v3}, Lcom/bigkoo/pickerview/a/b;->a(Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->M:I

    goto/16 :goto_9

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget v9, v0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    float-to-int v9, v9

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v6, v5, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    invoke-virtual {v7, v12, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->R:I

    int-to-float v2, v2

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->k:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, v0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget v3, v0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_c

    :cond_12
    :goto_b
    move v6, v9

    move v13, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move v9, v6

    move v10, v13

    goto/16 :goto_6

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->F:I

    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->e()V

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->B:I

    iget p2, p0, Lcom/bigkoo/pickerview/lib/WheelView;->A:I

    invoke-virtual {p0, p1, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->H:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-float v1, v0

    sub-float/2addr v1, p1

    int-to-float p1, v0

    div-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->D:I

    int-to-double v4, p1

    mul-double/2addr v0, v4

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p1, v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    float-to-double v4, p1

    div-double/2addr v0, v4

    double-to-int v0, v0

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    rem-float/2addr v1, p1

    add-float/2addr v1, p1

    rem-float/2addr v1, p1

    iget v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->z:I

    div-int/2addr v4, v3

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->N:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->E:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x78

    cmp-long p1, v0, v3

    if-lez p1, :cond_0

    sget-object p1, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->DAGGLE:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->CLICK:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V

    goto :goto_3

    :cond_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:F

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    iget-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-interface {v1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/bigkoo/pickerview/lib/WheelView;->l:F

    mul-float/2addr v1, v3

    iget v4, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    float-to-double v5, v4

    float-to-double v7, v3

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    float-to-double v7, p1

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    sub-float p1, v4, v0

    goto :goto_1

    :cond_2
    float-to-double v5, v4

    float-to-double v7, v3

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    float-to-double v7, v1

    cmpl-double v3, v5, v7

    if-lez v3, :cond_3

    sub-float v1, v4, v0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    cmpg-float v3, v0, p1

    if-gez v3, :cond_4

    float-to-int p1, p1

    :goto_2
    int-to-float p1, p1

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    goto :goto_3

    :cond_4
    cmpl-float p1, v0, v1

    if-lez p1, :cond_6

    float-to-int p1, v1

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->E:J

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->a()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->O:F

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    return v2
.end method

.method public final setAdapter(Lcom/bigkoo/pickerview/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->h:Lcom/bigkoo/pickerview/a/b;

    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->e()V

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->w:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->v:F

    invoke-virtual {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->r:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setDividerType(Lcom/bigkoo/pickerview/lib/WheelView$DividerType;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->G:Lcom/bigkoo/pickerview/lib/WheelView$DividerType;

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->P:I

    return-void
.end method

.method public setIsOptions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->I:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->L:Ljava/lang/String;

    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->q:F

    invoke-direct {p0}, Lcom/bigkoo/pickerview/lib/WheelView;->c()V

    :cond_0
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/bigkoo/pickerview/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->c:Lcom/bigkoo/pickerview/b/c;

    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->o:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextColorOut(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->n:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/WheelView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/WheelView;->m:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
