.class public Landroid/support/constraint/solver/widgets/l;
.super Landroid/support/constraint/solver/widgets/m;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/l;->a:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/l;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/l;->a:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float p1, p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/l;->a:F

    iget p1, p0, Landroid/support/constraint/solver/widgets/l;->i:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/l;->e()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/l;->f()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Landroid/support/constraint/solver/widgets/m;->b()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/l;->a:F

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/widgets/l;->i:I

    return-void
.end method
