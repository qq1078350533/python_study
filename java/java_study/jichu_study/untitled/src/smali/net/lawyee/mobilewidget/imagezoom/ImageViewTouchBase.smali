.class public Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;,
        Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$a;
    }
.end annotation


# instance fields
.field private a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$a;

.field protected i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

.field protected j:Landroid/graphics/Matrix;

.field protected k:Landroid/graphics/Matrix;

.field protected l:Landroid/os/Handler;

.field protected m:Ljava/lang/Runnable;

.field protected n:F

.field protected final o:Landroid/graphics/Matrix;

.field protected final p:[F

.field protected q:I

.field protected r:I

.field protected s:Landroid/graphics/Bitmap;

.field protected final t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;)V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->l:Landroid/os/Handler;

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->m:Ljava/lang/Runnable;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->o:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->p:[F

    const/4 p1, -0x1

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->q:I

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->r:I

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->t:F

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;)V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->l:Landroid/os/Handler;

    iput-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->m:Ljava/lang/Runnable;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->o:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->p:[F

    const/4 p1, -0x1

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->q:I

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->r:I

    iput-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->t:F

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->p:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->p:[F

    aget p1, p1, p2

    return p1
.end method

.method protected a()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected a(F)V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected a(FFF)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(FFFF)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v5

    sub-float v6, p1, v5

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->l:Landroid/os/Handler;

    new-instance v9, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$2;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$2;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {p1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 6

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v5, v1, p1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->b(ZZ)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    :cond_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FF)V

    :cond_2
    return-void
.end method

.method public a(ZZF)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->b(ZZ)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    :cond_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p1, p3}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->c(FFF)V

    :cond_2
    return-void
.end method

.method public b(ZZ)Landroid/graphics/PointF;
    .locals 5

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v4, p2, v3

    if-gez v4, :cond_1

    sub-float/2addr v3, p2

    div-float/2addr v3, v2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float p2, v3, p2

    goto :goto_0

    :cond_1
    iget p2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    goto :goto_0

    :cond_2
    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_3

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v3

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v4, p1, v3

    if-gez v4, :cond_4

    sub-float/2addr v3, p1

    div-float/2addr v3, v2

    iget p1, v0, Landroid/graphics/RectF;->left:F

    :goto_1
    sub-float v1, v3, p1

    goto :goto_2

    :cond_4
    iget p1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    iget p1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, p1

    goto :goto_2

    :cond_5
    iget p1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    iget p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a()V

    return-void
.end method

.method public b(FF)V
    .locals 3

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FFFF)V

    return-void
.end method

.method public b(FFF)V
    .locals 1

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FFF)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(F)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(ZZ)V

    return-void
.end method

.method protected c()F
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->q:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->r:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public c(FF)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a()V

    invoke-virtual {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FF)V

    return-void
.end method

.method public c(FFF)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->c(FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a(FFF)V

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->l:Landroid/os/Handler;

    iget-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->i:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBaseScale()F
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapRect()Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v1
.end method

.method public getDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->o:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->o:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 2

    iget v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->n:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->c()F

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->n:F

    :cond_0
    iget v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->n:F

    return v0
.end method

.method public getScale()F
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getViewportCenter()Landroid/graphics/PointF;
    .locals 4

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    iput p4, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->q:I

    sub-int/2addr p5, p3

    iput p5, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->r:I

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->m:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->m:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->m:Ljava/lang/Runnable;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->k:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    :cond_2
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->c()F

    move-result p2

    iput p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->n:F

    iget-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$a;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$a;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method

.method public setOnBitmapChangedListener(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$a;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$a;

    return-void
.end method
