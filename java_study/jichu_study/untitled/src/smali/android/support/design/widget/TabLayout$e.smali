.class Landroid/support/design/widget/TabLayout$e;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:F

.field final synthetic c:Landroid/support/design/widget/TabLayout;

.field private d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/drawable/GradientDrawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$e;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V
    .locals 3

    invoke-static {p1}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$h;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$h;->getRight()I

    move-result p1

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int p1, v1, v0

    add-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private b()V
    .locals 7

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->t:Z

    if-nez v3, :cond_0

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->t:Z

    if-nez v5, :cond_1

    instance-of v5, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v5, :cond_1

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    :cond_1
    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v0

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    float-to-int v1, v3

    int-to-float v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v5, v0

    int-to-float v0, v2

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    move v2, v1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout$e;->a(II)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0}, Landroid/support/v4/view/s;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method a(IF)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    iput p2, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$e;->b()V

    return-void
.end method

.method a(II)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    iput p2, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    invoke-static {p0}, Landroid/support/v4/view/s;->d(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method a()Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method b(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->d:I

    invoke-static {p0}, Landroid/support/v4/view/s;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method b(II)V
    .locals 9

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$e;->b()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->t:Z

    if-nez v3, :cond_2

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_2
    move v6, v1

    move v8, v2

    iget v5, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    iget v7, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    if-ne v5, v6, :cond_3

    if-eq v7, v8, :cond_4

    :cond_3
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance p2, Landroid/support/design/widget/TabLayout$e$1;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/design/widget/TabLayout$e$1;-><init>(Landroid/support/design/widget/TabLayout$e;IIII)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Landroid/support/design/widget/TabLayout$e$2;

    invoke-direct {p2, p0, p1}, Landroid/support/design/widget/TabLayout$e$2;-><init>(Landroid/support/design/widget/TabLayout$e;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->d:I

    if-ltz v2, :cond_1

    move v0, v2

    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->q:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    :pswitch_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v0

    :goto_1
    :pswitch_3
    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    if-ltz v2, :cond_5

    iget v3, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    if-le v3, v2, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/drawable/GradientDrawable;

    :goto_2
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_4
    :goto_3
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    iget p3, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    const/high16 p4, 0x3f800000    # 1.0f

    iget-object p5, p0, Landroid/support/design/widget/TabLayout$e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p4, p5

    long-to-float p1, p1

    mul-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/support/design/widget/TabLayout$e;->b(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$e;->b()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->o:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gtz v4, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v3

    mul-int v5, v4, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    if-gt v5, v6, :cond_7

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v4, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    :cond_4
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/support/design/widget/TabLayout;

    iput v2, v0, Landroid/support/design/widget/TabLayout;->o:I

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->a(Z)V

    :goto_2
    if-eqz v1, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->requestLayout()V

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->g:I

    :cond_0
    return-void
.end method
