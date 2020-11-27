.class Landroid/support/transition/ac;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/ab;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/transition/aa;

    invoke-direct {v0, p0}, Landroid/support/transition/aa;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/support/transition/z;->a(Landroid/view/ViewGroup;)Landroid/support/transition/z;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/support/transition/ae;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/ad;->a(Landroid/view/ViewGroup;Z)V

    :goto_0
    return-void
.end method
