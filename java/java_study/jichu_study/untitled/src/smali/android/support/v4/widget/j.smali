.class public abstract Landroid/support/v4/widget/j;
.super Landroid/support/v4/view/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/j$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Rect;

.field private static final l:Landroid/support/v4/widget/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/k$a<",
            "Landroid/support/v4/view/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Landroid/support/v4/widget/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/k$b<",
            "Landroid/support/v4/e/n<",
            "Landroid/support/v4/view/a/c;",
            ">;",
            "Landroid/support/v4/view/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:I

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:[I

.field private final h:Landroid/view/accessibility/AccessibilityManager;

.field private final i:Landroid/view/View;

.field private j:Landroid/support/v4/widget/j$a;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/j;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v4/widget/j$1;

    invoke-direct {v0}, Landroid/support/v4/widget/j$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/j;->l:Landroid/support/v4/widget/k$a;

    new-instance v0, Landroid/support/v4/widget/j$2;

    invoke-direct {v0}, Landroid/support/v4/widget/j$2;-><init>()V

    sput-object v0, Landroid/support/v4/widget/j;->m:Landroid/support/v4/widget/k$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/j;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/j;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/j;->g:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/j;->b:I

    iput v0, p0, Landroid/support/v4/widget/j;->c:I

    iput v0, p0, Landroid/support/v4/widget/j;->k:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/j;->h:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Landroid/support/v4/view/s;->e(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_1

    const/16 p0, 0x82

    if-ne p1, p0, :cond_0

    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object p2
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->a(I)Landroid/support/v4/view/a/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/view/a/c;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/s;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0
.end method

.method private b()Landroid/support/v4/e/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/e/n<",
            "Landroid/support/v4/view/a/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/j;->a(Ljava/util/List;)V

    new-instance v1, Landroid/support/v4/e/n;

    invoke-direct {v1}, Landroid/support/v4/e/n;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v4/widget/j;->g(I)Landroid/support/v4/view/a/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/e/n;->b(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/j;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/j;->f(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private b(ILandroid/graphics/Rect;)Z
    .locals 9

    invoke-direct {p0}, Landroid/support/v4/widget/j;->b()Landroid/support/v4/e/n;

    move-result-object v7

    iget v0, p0, Landroid/support/v4/widget/j;->c:I

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v0}, Landroid/support/v4/e/n;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/c;

    :goto_0
    move-object v3, v0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p2, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {p2}, Landroid/support/v4/view/s;->f(Landroid/view/View;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    move v5, p2

    :goto_1
    sget-object v1, Landroid/support/v4/widget/j;->m:Landroid/support/v4/widget/k$b;

    sget-object v2, Landroid/support/v4/widget/j;->l:Landroid/support/v4/widget/k$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/support/v4/widget/k;->a(Ljava/lang/Object;Landroid/support/v4/widget/k$b;Landroid/support/v4/widget/k$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, Landroid/support/v4/view/a/c;

    goto :goto_4

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Landroid/support/v4/widget/j;->c:I

    if-eq v0, v8, :cond_3

    invoke-direct {p0, v0, v4}, Landroid/support/v4/widget/j;->a(ILandroid/graphics/Rect;)V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {p2, p1, v4}, Landroid/support/v4/widget/j;->a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    :goto_3
    sget-object v1, Landroid/support/v4/widget/j;->m:Landroid/support/v4/widget/k$b;

    sget-object v2, Landroid/support/v4/widget/j;->l:Landroid/support/v4/widget/k$a;

    move-object v0, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v4/widget/k;->a(Ljava/lang/Object;Landroid/support/v4/widget/k$b;Landroid/support/v4/widget/k$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :goto_4
    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v7, p1}, Landroid/support/v4/e/n;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/support/v4/e/n;->d(I)I

    move-result v8

    :goto_5
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/j;->b(I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->a(I)Landroid/support/v4/view/a/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->t()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->u()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->q()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->p()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->o()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->g()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/j;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->s()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {p2, v0, p1}, Landroid/support/v4/view/a/e;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private c()Z
    .locals 3

    iget v0, p0, Landroid/support/v4/widget/j;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/j;->a(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/j;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->c(I)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j;->b(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/j;->i(I)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/j;->h(I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x82

    return p0

    :pswitch_1
    const/16 p0, 0x42

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    :pswitch_3
    const/16 p0, 0x21

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private d()Landroid/support/v4/view/a/c;
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/a/c;->a(Landroid/view/View;)Landroid/support/v4/view/a/c;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/a/c;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/j;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->c()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/a/c;->b(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private e(I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/j;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v4/widget/j;->k:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/j;->a(II)Z

    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/j;->a(II)Z

    return-void
.end method

.method private f(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private g(I)Landroid/support/v4/view/a/c;
    .locals 7

    invoke-static {}, Landroid/support/v4/view/a/c;->b()Landroid/support/v4/view/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/c;->j(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/c;->c(Z)V

    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->b(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/support/v4/widget/j;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->b(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/support/v4/widget/j;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->d(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->d(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/j;->a(ILandroid/support/v4/view/a/c;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->t()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->u()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/support/v4/widget/j;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v4/widget/j;->e:Landroid/graphics/Rect;

    sget-object v3, Landroid/support/v4/widget/j;->a:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->d()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_b

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    iget-object v2, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->a(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/view/a/c;->a(Landroid/view/View;I)V

    iget v2, p0, Landroid/support/v4/widget/j;->b:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/c;->f(Z)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/c;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v4/view/a/c;->f(Z)V

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->a(I)V

    :goto_1
    iget v2, p0, Landroid/support/v4/widget/j;->c:I

    if-ne v2, p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    if-eqz p1, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/c;->a(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/view/a/c;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/c;->a(I)V

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/c;->d(Z)V

    iget-object p1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/j;->g:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/c;->c(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    sget-object v2, Landroid/support/v4/widget/j;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/c;->a(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/support/v4/view/a/c;->a:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    invoke-static {}, Landroid/support/v4/view/a/c;->b()Landroid/support/v4/view/a/c;

    move-result-object p1

    iget v3, v0, Landroid/support/v4/view/a/c;->a:I

    :goto_4
    if-eq v3, v2, :cond_6

    iget-object v5, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Landroid/support/v4/view/a/c;->c(Landroid/view/View;I)V

    sget-object v5, Landroid/support/v4/widget/j;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/support/v4/view/a/c;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/j;->a(ILandroid/support/v4/view/a/c;)V

    iget-object v3, p0, Landroid/support/v4/widget/j;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/support/v4/view/a/c;->a(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/j;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v4/widget/j;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v3, p1, Landroid/support/v4/view/a/c;->a:I

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/view/a/c;->v()V

    :cond_7
    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/j;->g:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/j;->g:[I

    aget v3, v3, v1

    iget-object v5, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    iget-object p1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/j;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/widget/j;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/j;->g:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/j;->g:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/j;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/c;->d(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/j;->d:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/c;->e(Z)V

    :cond_9
    return-object v0

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/j;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/j;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/j;->b:I

    if-eq v0, p1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/j;->i(I)Z

    :cond_1
    iput p1, p0, Landroid/support/v4/widget/j;->b:I

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/j;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private i(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/j;->b:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/j;->b:I

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/j;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract a(FF)I
.end method

.method a(I)Landroid/support/v4/view/a/c;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/j;->d()Landroid/support/v4/view/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/j;->g(I)Landroid/support/v4/view/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/view/a/d;
    .locals 0

    iget-object p1, p0, Landroid/support/v4/widget/j;->j:Landroid/support/v4/widget/j$a;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/v4/widget/j$a;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/j$a;-><init>(Landroid/support/v4/widget/j;)V

    iput-object p1, p0, Landroid/support/v4/widget/j;->j:Landroid/support/v4/widget/j$a;

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/j;->j:Landroid/support/v4/widget/j$a;

    return-object p1
.end method

.method protected abstract a(ILandroid/support/v4/view/a/c;)V
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected a(IZ)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/support/v4/view/a/c;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/c;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/c;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/j;->a(Landroid/support/v4/view/a/c;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/j;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(ZILandroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/j;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/j;->c(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/j;->b(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final a(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/j;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/j;->b(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-static {v1, p2, p1}, Landroid/support/v4/view/v;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected abstract a(IILandroid/os/Bundle;)Z
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/16 v3, 0x42

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroid/support/v4/widget/j;->d(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0, v0, v4}, Landroid/support/v4/widget/j;->b(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroid/support/v4/widget/j;->c()Z

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/j;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/j;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v4/widget/j;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/j;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget p1, p0, Landroid/support/v4/widget/j;->k:I

    if-eq p1, v4, :cond_1

    invoke-direct {p0, v4}, Landroid/support/v4/widget/j;->e(I)V

    return v3

    :cond_1
    return v1

    :cond_2
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/j;->a(FF)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/j;->e(I)V

    if-eq p1, v4, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/j;->c:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/j;->c(I)Z

    :cond_2
    iput p1, p0, Landroid/support/v4/widget/j;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/j;->a(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/j;->a(II)Z

    return v0
.end method

.method b(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/j;->c(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/j;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final c(I)Z
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/j;->c:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/j;->c:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/j;->a(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/j;->a(II)Z

    const/4 p1, 0x1

    return p1
.end method
