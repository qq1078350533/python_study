.class Landroid/support/design/widget/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/h$a;,
        Landroid/support/design/widget/h$c;,
        Landroid/support/design/widget/h$b;,
        Landroid/support/design/widget/h$e;,
        Landroid/support/design/widget/h$f;,
        Landroid/support/design/widget/h$d;
    }
.end annotation


# static fields
.field static final a:Landroid/animation/TimeInterpolator;

.field static final p:[I

.field static final q:[I

.field static final r:[I

.field static final s:[I

.field static final t:[I

.field static final u:[I


# instance fields
.field private A:F

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/graphics/RectF;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/Matrix;

.field private H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field b:I

.field c:Landroid/animation/Animator;

.field d:Landroid/support/design/a/h;

.field e:Landroid/support/design/a/h;

.field f:Landroid/support/design/widget/l;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/graphics/drawable/Drawable;

.field i:Landroid/support/design/widget/b;

.field j:Landroid/graphics/drawable/Drawable;

.field k:F

.field l:F

.field m:F

.field n:I

.field o:F

.field final v:Landroid/support/design/widget/VisibilityAwareImageButton;

.field final w:Landroid/support/design/widget/m;

.field private x:Landroid/support/design/a/h;

.field private y:Landroid/support/design/a/h;

.field private final z:Landroid/support/design/widget/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/support/design/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/support/design/widget/h;->a:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/design/widget/h;->p:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/design/widget/h;->q:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/design/widget/h;->r:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/design/widget/h;->s:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/h;->t:[I

    new-array v0, v1, [I

    sput-object v0, Landroid/support/design/widget/h;->u:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/h;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/h;->o:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->D:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->E:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->G:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    iput-object p2, p0, Landroid/support/design/widget/h;->w:Landroid/support/design/widget/m;

    new-instance p1, Landroid/support/design/widget/o;

    invoke-direct {p1}, Landroid/support/design/widget/o;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    iget-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    sget-object p2, Landroid/support/design/widget/h;->p:[I

    new-instance v0, Landroid/support/design/widget/h$c;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$c;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    sget-object p2, Landroid/support/design/widget/h;->q:[I

    new-instance v0, Landroid/support/design/widget/h$b;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$b;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    sget-object p2, Landroid/support/design/widget/h;->r:[I

    new-instance v0, Landroid/support/design/widget/h$b;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$b;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    sget-object p2, Landroid/support/design/widget/h;->s:[I

    new-instance v0, Landroid/support/design/widget/h$b;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$b;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    sget-object p2, Landroid/support/design/widget/h;->t:[I

    new-instance v0, Landroid/support/design/widget/h$e;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$e;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    sget-object p2, Landroid/support/design/widget/h;->u:[I

    new-instance v0, Landroid/support/design/widget/h$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$a;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/o;->a([ILandroid/animation/ValueAnimator;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/h;->A:F

    return-void
.end method

.method private a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "scale"

    invoke-virtual {p1, p3}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Landroid/support/design/widget/h;->G:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Landroid/support/design/widget/h;->a(FLandroid/graphics/Matrix;)V

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    new-instance p3, Landroid/support/design/a/f;

    invoke-direct {p3}, Landroid/support/design/a/f;-><init>()V

    new-instance p4, Landroid/support/design/a/g;

    invoke-direct {p4}, Landroid/support/design/a/g;-><init>()V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/design/widget/h;->G:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Landroid/support/design/a/h;->b(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Landroid/support/design/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method private a(Landroid/support/design/widget/h$f;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Landroid/support/design/widget/h;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FLandroid/graphics/Matrix;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/design/widget/h;->n:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/h;->E:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/widget/h;->F:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Landroid/support/design/widget/h;->n:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Landroid/support/design/widget/h;->n:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private t()Landroid/support/design/a/h;
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->x:Landroid/support/design/a/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->x:Landroid/support/design/a/h;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->x:Landroid/support/design/a/h;

    return-object v0
.end method

.method private u()Landroid/support/design/a/h;
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->y:Landroid/support/design/a/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->y:Landroid/support/design/a/h;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->y:Landroid/support/design/a/h;

    return-object v0
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/h$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/h$3;-><init>(Landroid/support/design/widget/h;)V

    iput-object v0, p0, Landroid/support/design/widget/h;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method private w()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v0}, Landroid/support/v4/view/s;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/design/widget/h;->A:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/l;

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/support/design/widget/h;->A:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/h;->i:Landroid/support/design/widget/b;

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/design/widget/h;->A:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/b;->b(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/h;->k:F

    return v0
.end method

.method a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/b;
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/h;->n()Landroid/support/design/widget/b;

    move-result-object v1

    sget v2, Landroid/support/design/a$c;->design_fab_stroke_top_outer_color:I

    invoke-static {v0, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/a$c;->design_fab_stroke_top_inner_color:I

    invoke-static {v0, v3}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/a$c;->design_fab_stroke_end_inner_color:I

    invoke-static {v0, v4}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/a$c;->design_fab_stroke_end_outer_color:I

    invoke-static {v0, v5}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/b;->a(IIII)V

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/support/design/widget/b;->a(F)V

    invoke-virtual {v1, p2}, Landroid/support/design/widget/b;->a(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method

.method final a(F)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/h;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/h;->k:F

    iget p1, p0, Landroid/support/design/widget/h;->k:F

    iget v0, p0, Landroid/support/design/widget/h;->l:F

    iget v1, p0, Landroid/support/design/widget/h;->m:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/design/widget/h;->a(FFF)V

    :cond_0
    return-void
.end method

.method a(FFF)V
    .locals 0

    iget-object p2, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/l;

    if-eqz p2, :cond_0

    iget p3, p0, Landroid/support/design/widget/h;->m:F

    add-float/2addr p3, p1

    invoke-virtual {p2, p1, p3}, Landroid/support/design/widget/l;->a(FF)V

    invoke-virtual {p0}, Landroid/support/design/widget/h;->j()V

    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/h;->n:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/h;->n:I

    invoke-virtual {p0}, Landroid/support/design/widget/h;->d()V

    :cond_0
    return-void
.end method

.method a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->B:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->i:Landroid/support/design/widget/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/b;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/design/widget/h;->p()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/h;->p()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/h;->h:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/design/widget/h;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-lez p4, :cond_1

    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/h;->a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/b;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/h;->i:Landroid/support/design/widget/b;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Landroid/support/design/widget/h;->i:Landroid/support/design/widget/b;

    aput-object p4, p1, v0

    iget-object p4, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    aput-object p4, p1, p2

    iget-object p2, p0, Landroid/support/design/widget/h;->h:Landroid/graphics/drawable/Drawable;

    aput-object p2, p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/h;->i:Landroid/support/design/widget/b;

    new-array p1, p3, [Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    aput-object p3, p1, v0

    iget-object p3, p0, Landroid/support/design/widget/h;->h:Landroid/graphics/drawable/Drawable;

    aput-object p3, p1, p2

    :goto_0
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Landroid/support/design/widget/h;->j:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/support/design/widget/l;

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/h;->j:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/design/widget/h;->w:Landroid/support/design/widget/m;

    invoke-interface {p2}, Landroid/support/design/widget/m;->a()F

    move-result v4

    iget v5, p0, Landroid/support/design/widget/h;->k:F

    iget p2, p0, Landroid/support/design/widget/h;->m:F

    add-float v6, v5, p2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/l;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object p1, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/l;

    iget-object p1, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/l;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/l;->a(Z)V

    iget-object p1, p0, Landroid/support/design/widget/h;->w:Landroid/support/design/widget/m;

    iget-object p2, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/l;

    invoke-interface {p1, p2}, Landroid/support/design/widget/m;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/l;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method final a(Landroid/support/design/a/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/h;->d:Landroid/support/design/a/h;

    return-void
.end method

.method a(Landroid/support/design/widget/h$d;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/h;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/h;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/support/design/a/h;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/h;->u()Landroid/support/design/a/h;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/h;->a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/h$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/h$1;-><init>(Landroid/support/design/widget/h;ZLandroid/support/design/widget/h$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->C:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/support/design/widget/h$d;->b()V

    :cond_6
    :goto_3
    return-void
.end method

.method a([I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/o;->a([I)V

    return-void
.end method

.method b()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/h;->l:F

    return v0
.end method

.method final b(F)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/h;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/h;->l:F

    iget p1, p0, Landroid/support/design/widget/h;->k:F

    iget v0, p0, Landroid/support/design/widget/h;->l:F

    iget v1, p0, Landroid/support/design/widget/h;->m:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/design/widget/h;->a(FFF)V

    :cond_0
    return-void
.end method

.method b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method final b(Landroid/support/design/a/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/h;->e:Landroid/support/design/a/h;

    return-void
.end method

.method b(Landroid/support/design/widget/h$d;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/widget/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/h;->w()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    invoke-virtual {p0, v2}, Landroid/support/design/widget/h;->d(F)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/support/design/a/h;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/design/widget/h;->t()Landroid/support/design/a/h;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Landroid/support/design/widget/h;->a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/h$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/h$2;-><init>(Landroid/support/design/widget/h;ZLandroid/support/design/widget/h$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->B:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    iget-object p2, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/h;->d(F)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/support/design/widget/h$d;->a()V

    :cond_6
    :goto_2
    return-void
.end method

.method c()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/h;->m:F

    return v0
.end method

.method final c(F)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/h;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/h;->m:F

    iget p1, p0, Landroid/support/design/widget/h;->k:F

    iget v0, p0, Landroid/support/design/widget/h;->l:F

    iget v1, p0, Landroid/support/design/widget/h;->m:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/design/widget/h;->a(FFF)V

    :cond_0
    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->C:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/h;->o:F

    invoke-virtual {p0, v0}, Landroid/support/design/widget/h;->d(F)V

    return-void
.end method

.method final d(F)V
    .locals 1

    iput p1, p0, Landroid/support/design/widget/h;->o:F

    iget-object v0, p0, Landroid/support/design/widget/h;->G:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/h;->a(FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final e()Landroid/support/design/a/h;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/support/design/a/h;

    return-object v0
.end method

.method final f()Landroid/support/design/a/h;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/support/design/a/h;

    return-object v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->z:Landroid/support/design/widget/o;

    invoke-virtual {v0}, Landroid/support/design/widget/o;->a()V

    return-void
.end method

.method final h()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method i()V
    .locals 0

    return-void
.end method

.method final j()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/h;->D:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/h;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/h;->b(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/design/widget/h;->w:Landroid/support/design/widget/m;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/m;->a(IIII)V

    return-void
.end method

.method k()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/h;->v()V

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method l()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/h;->H:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method n()Landroid/support/design/widget/b;
    .locals 1

    new-instance v0, Landroid/support/design/widget/b;

    invoke-direct {v0}, Landroid/support/design/widget/b;-><init>()V

    return-object v0
.end method

.method o()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/h;->A:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/support/design/widget/h;->A:F

    invoke-direct {p0}, Landroid/support/design/widget/h;->x()V

    :cond_0
    return-void
.end method

.method p()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/h;->q()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method q()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method r()Z
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/h;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroid/support/design/widget/h;->b:I

    if-eq v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method s()Z
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/h;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/h;->b:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroid/support/design/widget/h;->b:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
