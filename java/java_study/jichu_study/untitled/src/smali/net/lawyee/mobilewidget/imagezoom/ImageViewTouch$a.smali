.class Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget v1, v1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->e:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget v1, v1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->e:F

    add-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iput v0, v1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a(FFFF)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->invalidate()V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    const/high16 v1, 0x40400000    # 3.0f

    div-float v2, p3, v1

    div-float v1, p4, v1

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v2, v1, v3}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->c(FFF)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->invalidate()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget-boolean p1, p1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->performLongClick()Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->c(FF)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->invalidate()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
