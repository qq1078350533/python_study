.class public Landroid/support/transition/Slide;
.super Landroid/support/transition/Visibility;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Slide$c;,
        Landroid/support/transition/Slide$b;,
        Landroid/support/transition/Slide$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/animation/TimeInterpolator;

.field private static final i:Landroid/animation/TimeInterpolator;

.field private static final l:Landroid/support/transition/Slide$a;

.field private static final m:Landroid/support/transition/Slide$a;

.field private static final n:Landroid/support/transition/Slide$a;

.field private static final o:Landroid/support/transition/Slide$a;

.field private static final p:Landroid/support/transition/Slide$a;

.field private static final q:Landroid/support/transition/Slide$a;


# instance fields
.field private j:Landroid/support/transition/Slide$a;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->a:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->i:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/transition/Slide$1;

    invoke-direct {v0}, Landroid/support/transition/Slide$1;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->l:Landroid/support/transition/Slide$a;

    new-instance v0, Landroid/support/transition/Slide$2;

    invoke-direct {v0}, Landroid/support/transition/Slide$2;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->m:Landroid/support/transition/Slide$a;

    new-instance v0, Landroid/support/transition/Slide$3;

    invoke-direct {v0}, Landroid/support/transition/Slide$3;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->n:Landroid/support/transition/Slide$a;

    new-instance v0, Landroid/support/transition/Slide$4;

    invoke-direct {v0}, Landroid/support/transition/Slide$4;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->o:Landroid/support/transition/Slide$a;

    new-instance v0, Landroid/support/transition/Slide$5;

    invoke-direct {v0}, Landroid/support/transition/Slide$5;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->p:Landroid/support/transition/Slide$a;

    new-instance v0, Landroid/support/transition/Slide$6;

    invoke-direct {v0}, Landroid/support/transition/Slide$6;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->q:Landroid/support/transition/Slide$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    sget-object v0, Landroid/support/transition/Slide;->q:Landroid/support/transition/Slide$a;

    iput-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    const/16 v0, 0x50

    iput v0, p0, Landroid/support/transition/Slide;->k:I

    invoke-virtual {p0, v0}, Landroid/support/transition/Slide;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/transition/Slide;->q:Landroid/support/transition/Slide$a;

    iput-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    const/16 v0, 0x50

    iput v0, p0, Landroid/support/transition/Slide;->k:I

    sget-object v1, Landroid/support/transition/r;->h:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "slideEdge"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Landroid/support/transition/Slide;->a(I)V

    return-void
.end method

.method private d(Landroid/support/transition/w;)V
    .locals 2

    iget-object v0, p1, Landroid/support/transition/w;->b:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p1, Landroid/support/transition/w;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/w;Landroid/support/transition/w;)Landroid/animation/Animator;
    .locals 9

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p4, Landroid/support/transition/w;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iget-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    iget-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Landroid/support/transition/Slide;->a:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    invoke-static/range {v0 .. v8}, Landroid/support/transition/y;->a(Landroid/view/View;Landroid/support/transition/w;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/support/transition/Slide;->p:Landroid/support/transition/Slide$a;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slide direction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Landroid/support/transition/Slide;->m:Landroid/support/transition/Slide$a;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/support/transition/Slide;->q:Landroid/support/transition/Slide$a;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/support/transition/Slide;->n:Landroid/support/transition/Slide$a;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/support/transition/Slide;->o:Landroid/support/transition/Slide$a;

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/support/transition/Slide;->l:Landroid/support/transition/Slide$a;

    :goto_0
    iput-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    iput p1, p0, Landroid/support/transition/Slide;->k:I

    new-instance v0, Landroid/support/transition/q;

    invoke-direct {v0}, Landroid/support/transition/q;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/transition/q;->a(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/Slide;->a(Landroid/support/transition/u;)V

    return-void
.end method

.method public a(Landroid/support/transition/w;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->a(Landroid/support/transition/w;)V

    invoke-direct {p0, p1}, Landroid/support/transition/Slide;->d(Landroid/support/transition/w;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/w;Landroid/support/transition/w;)Landroid/animation/Animator;
    .locals 9

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p4, p3, Landroid/support/transition/w;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    iget-object v0, p0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    const/4 p1, 0x0

    aget v2, p4, p1

    const/4 p1, 0x1

    aget v3, p4, p1

    sget-object v8, Landroid/support/transition/Slide;->i:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v8}, Landroid/support/transition/y;->a(Landroid/view/View;Landroid/support/transition/w;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/support/transition/w;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->b(Landroid/support/transition/w;)V

    invoke-direct {p0, p1}, Landroid/support/transition/Slide;->d(Landroid/support/transition/w;)V

    return-void
.end method
