.class public Lnet/lawyee/mobilewidget/PhotoDetailGallery;
.super Landroid/widget/Gallery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lawyee/mobilewidget/PhotoDetailGallery$b;,
        Lnet/lawyee/mobilewidget/PhotoDetailGallery$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lnet/lawyee/mobilewidget/PhotoDetailGallery$a;

.field private e:Lnet/lawyee/mobilewidget/PhotoDetailGallery$b;

.field private f:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->f:D

    iput-object p1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->c:Landroid/content/Context;

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a()V

    return-void
.end method

.method static synthetic a(Lnet/lawyee/mobilewidget/PhotoDetailGallery;D)D
    .locals 0

    iput-wide p1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->f:D

    return-wide p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->c:Landroid/content/Context;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/d;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->c:Landroid/content/Context;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/d;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    new-instance v0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;

    invoke-direct {v0, p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;-><init>(Lnet/lawyee/mobilewidget/PhotoDetailGallery;)V

    invoke-virtual {p0, v0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(ILnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->d:Lnet/lawyee/mobilewidget/PhotoDetailGallery$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/lawyee/mobilewidget/PhotoDetailGallery$a;->a(ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private a(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->e:Lnet/lawyee/mobilewidget/PhotoDetailGallery$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/lawyee/mobilewidget/PhotoDetailGallery$b;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    if-eqz v1, :cond_9

    check-cast v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget v2, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    int-to-float v2, v2

    iget v3, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    int-to-float v3, v3

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v3

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    :cond_0
    float-to-int v4, v2

    iget v5, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    const/4 v6, 0x1

    if-gt v4, v5, :cond_1

    float-to-int v5, v3

    iget v7, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    if-gt v5, v7, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getChildCount()I

    move-result p1

    if-le p1, v6, :cond_a

    :goto_0
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getSelectedItemPosition()I

    move-result p1

    add-int/2addr p1, v6

    invoke-direct {p0, p1, v0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a(ILnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;)V

    goto/16 :goto_2

    :cond_1
    iget v5, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ge v4, v5, :cond_5

    float-to-int v4, v3

    iget v5, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    if-le v4, v5, :cond_5

    const/4 v2, 0x5

    aget v1, v1, v2

    add-float/2addr v3, v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    cmpl-float v2, p4, v8

    if-lez v2, :cond_4

    iget v1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    div-int/2addr v1, v7

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    neg-float p1, p3

    neg-float p2, p4

    invoke-virtual {v0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FF)V

    goto :goto_2

    :cond_4
    cmpg-float v2, p4, v8

    if-gez v2, :cond_a

    iget v2, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    div-int/2addr v2, v7

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    goto :goto_1

    :cond_5
    aget v1, v1, v7

    add-float/2addr v2, v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    cmpl-float v3, p3, v8

    if-lez v3, :cond_7

    cmpl-float v1, v1, v8

    if-lez v1, :cond_6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getChildCount()I

    move-result p1

    if-le p1, v6, :cond_a

    goto :goto_0

    :cond_6
    iget v1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getChildCount()I

    move-result p1

    if-le p1, v6, :cond_a

    goto :goto_0

    :cond_7
    cmpg-float v3, p3, v8

    if-gez v3, :cond_a

    iget v3, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getChildCount()I

    move-result p1

    if-le p1, v6, :cond_a

    goto/16 :goto_0

    :cond_8
    cmpl-float v1, v1, v8

    if-lez v1, :cond_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getChildCount()I

    move-result p1

    if-le p1, v6, :cond_a

    goto/16 :goto_0

    :cond_9
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :cond_a
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->f:D

    sub-double/2addr v2, v4

    const-wide v4, 0x4060400000000000L    # 130.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    invoke-direct {p0, v0}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;)V

    return v1

    :cond_1
    instance-of v2, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v3

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v2

    iget v4, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a:I

    if-gt v2, v4, :cond_2

    float-to-int v2, v3

    iget v3, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->b:I

    if-gt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(ZZ)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChangePageListener(Lnet/lawyee/mobilewidget/PhotoDetailGallery$a;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->d:Lnet/lawyee/mobilewidget/PhotoDetailGallery$a;

    return-void
.end method

.method public setClickListener(Lnet/lawyee/mobilewidget/PhotoDetailGallery$b;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->e:Lnet/lawyee/mobilewidget/PhotoDetailGallery$b;

    return-void
.end method
