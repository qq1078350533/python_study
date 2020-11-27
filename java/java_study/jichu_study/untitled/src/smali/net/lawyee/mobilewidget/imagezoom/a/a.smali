.class public Lnet/lawyee/mobilewidget/imagezoom/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(FF)F
    .locals 1

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method
