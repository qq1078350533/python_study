.class Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:J

.field g:Z

.field final synthetic h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;


# direct methods
.method private constructor <init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;)V
    .locals 2

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a:F

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->b:F

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->c:F

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->d:F

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->e:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;-><init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->g:Z

    return-void
.end method

.method public a(FFF)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a(FFFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->c:F

    iput v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->d:F

    div-float/2addr p1, p3

    iput p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a:F

    div-float/2addr p2, p3

    iput p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->b:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->f:J

    iput p4, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->e:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->g:Z

    return-void
.end method

.method public run()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    invoke-virtual {v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->e:F

    iget-wide v4, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->f:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->e:F

    invoke-static {v0, v1}, Lnet/lawyee/mobilewidget/imagezoom/a/a;->a(FF)F

    move-result v1

    iget v3, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->a:F

    mul-float/2addr v3, v1

    iget v4, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->b:F

    mul-float/2addr v1, v4

    iget-object v4, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    iget v5, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->c:F

    sub-float v5, v3, v5

    mul-float/2addr v5, v2

    iget v6, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->d:F

    sub-float v6, v1, v6

    mul-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(FF)V

    iput v3, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->c:F

    iput v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->d:F

    iget-boolean v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->g:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->l:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$b;->h:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    const/high16 v1, 0x43fa0000    # 500.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->a(ZZF)V

    :goto_0
    return-void
.end method
