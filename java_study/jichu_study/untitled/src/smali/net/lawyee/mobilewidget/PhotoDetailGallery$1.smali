.class Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lnet/lawyee/mobilewidget/PhotoDetailGallery;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/PhotoDetailGallery;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->c:Lnet/lawyee/mobilewidget/PhotoDetailGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p1, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->c:Lnet/lawyee/mobilewidget/PhotoDetailGallery;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->getSelectedView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->c:Lnet/lawyee/mobilewidget/PhotoDetailGallery;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v0, v3, v4}, Lnet/lawyee/mobilewidget/PhotoDetailGallery;->a(Lnet/lawyee/mobilewidget/PhotoDetailGallery;D)D

    iput v2, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->a:F

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->b:F

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v5, v0, v0

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->a:F

    cmpl-float v2, v6, v2

    if-nez v2, :cond_1

    iput v5, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->a:F

    goto :goto_0

    :cond_1
    div-float/2addr v5, v6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v2, p0, Lnet/lawyee/mobilewidget/PhotoDetailGallery$1;->b:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v0, v5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v4, p2

    const/high16 p2, 0x43fa0000    # 500.0f

    invoke-virtual {p1, v2, v0, v4, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FFFF)V

    :cond_2
    :goto_0
    return v1
.end method
