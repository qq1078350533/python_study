.class Landroid/support/transition/h;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/g;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/support/transition/f;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/e;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/support/transition/g;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/transition/f;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/support/transition/e;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method
