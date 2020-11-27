.class Landroid/support/transition/e;
.super Landroid/view/View;

# interfaces
.implements Landroid/support/transition/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/View;

.field d:I

.field e:Landroid/graphics/Matrix;

.field private f:I

.field private g:I

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/e;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/support/transition/e$1;

    invoke-direct {v0, p0}, Landroid/support/transition/e$1;-><init>(Landroid/support/transition/e;)V

    iput-object v0, p0, Landroid/support/transition/e;->i:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p1, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/e;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/support/transition/g;
    .locals 1

    invoke-static {p0}, Landroid/support/transition/e;->b(Landroid/view/View;)Landroid/support/transition/e;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/transition/e;->a(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/support/transition/e;

    invoke-direct {v0, p0}, Landroid/support/transition/e;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget p0, v0, Landroid/support/transition/e;->d:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/support/transition/e;->d:I

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 1

    :goto_0
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static a(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Landroid/support/transition/e;->b(Landroid/view/View;)Landroid/support/transition/e;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/support/transition/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/e;->d:I

    iget v0, p0, Landroid/support/transition/e;->d:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/support/transition/e;)V
    .locals 1

    sget v0, Landroid/support/transition/n$a;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static b(Landroid/view/View;)Landroid/support/transition/e;
    .locals 1

    sget v0, Landroid/support/transition/n$a;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/transition/e;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/e;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/support/transition/e;->c:Landroid/view/View;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/transition/e;->a(Landroid/view/View;Landroid/support/transition/e;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0, v1}, Landroid/support/transition/e;->getLocationOnScreen([I)V

    iget-object v2, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v3

    aget v4, v0, v2

    aget v2, v1, v2

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/support/transition/e;->f:I

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/transition/e;->g:I

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/e;->i:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/e;->i:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/e;->a(Landroid/view/View;Landroid/support/transition/e;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroid/support/transition/e;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/support/transition/e;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/support/transition/e;->h:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/transition/e;->f:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/transition/e;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/support/transition/e;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/transition/e;->a:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
