.class Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Z

.field final synthetic c:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;->c:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;->a:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;->c:Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;->a:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilewidget/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
