.class public Landroid/support/transition/AutoTransition;
.super Landroid/support/transition/TransitionSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    invoke-direct {p0}, Landroid/support/transition/AutoTransition;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Landroid/support/transition/AutoTransition;->s()V

    return-void
.end method

.method private s()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/transition/AutoTransition;->a(I)Landroid/support/transition/TransitionSet;

    new-instance v1, Landroid/support/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/support/transition/AutoTransition;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/support/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/support/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/support/transition/Fade;

    invoke-direct {v2, v0}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-void
.end method
