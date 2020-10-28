.class Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->f:Z

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget v3, v3, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->d:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->d:F

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    iget v2, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->d:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->b(FFF)V

    iget-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;->a:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->invalidate()V

    return v1
.end method
