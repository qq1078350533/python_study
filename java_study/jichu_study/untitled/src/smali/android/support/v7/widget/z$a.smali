.class Landroid/support/v7/widget/z$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/z;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/z$a;->a:Landroid/support/v7/widget/z;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/z$a;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/z$a;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Landroid/support/v7/widget/z$a;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroid/support/v7/widget/z$a;->b:Z

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/z$a;->a:Landroid/support/v7/widget/z;

    iget-object p1, p1, Landroid/support/v7/widget/z;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/z$a;->a:Landroid/support/v7/widget/z;

    iput v0, p1, Landroid/support/v7/widget/z;->j:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/z;->a(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/z$a;->a:Landroid/support/v7/widget/z;

    const/4 v0, 0x2

    iput v0, p1, Landroid/support/v7/widget/z;->j:I

    invoke-virtual {p1}, Landroid/support/v7/widget/z;->a()V

    :goto_0
    return-void
.end method
