.class Landroid/support/transition/d$4;
.super Landroid/support/transition/Transition$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/d;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroid/support/transition/d;


# direct methods
.method constructor <init>(Landroid/support/transition/d;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/d$4;->b:Landroid/support/transition/d;

    iput-object p2, p0, Landroid/support/transition/d$4;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/support/transition/Transition$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p1, p0, Landroid/support/transition/d$4;->a:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/transition/d$4;->a:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
