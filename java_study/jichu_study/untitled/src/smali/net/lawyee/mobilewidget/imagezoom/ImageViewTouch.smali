.class public Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;
.super Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;,
        Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/ScaleGestureDetector;

.field protected b:Landroid/view/GestureDetector;

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:Z

.field protected g:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;

.field protected h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;

.field private u:Landroid/view/GestureDetector$OnDoubleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->u:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    invoke-super {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a()V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->c:I

    new-instance v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;

    invoke-direct {v0, p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->g:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;

    new-instance v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;

    invoke-direct {v0, p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$b;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->g:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->d:F

    return-void
.end method

.method public a(F)V
    .locals 1

    invoke-super {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(F)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->d:F

    :cond_0
    return-void
.end method

.method public getExternalDoubleTapListener()Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->u:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getScale()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    const/high16 v2, 0x43fa0000    # 500.0f

    if-gez p1, :cond_1

    invoke-virtual {p0, v1, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->b(FF)V

    :cond_1
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getScale()F

    move-result p1

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result p1

    invoke-virtual {p0, p1, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->b(FF)V

    :cond_2
    invoke-virtual {p0, v0, v0, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->a(ZZF)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->f:Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->b()V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setExternalDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->u:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouch;->e:F

    return-void
.end method
