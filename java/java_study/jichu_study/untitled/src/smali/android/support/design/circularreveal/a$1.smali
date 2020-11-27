.class final Landroid/support/design/circularreveal/a$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/circularreveal/a;->a(Landroid/support/design/circularreveal/c;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/circularreveal/c;


# direct methods
.method constructor <init>(Landroid/support/design/circularreveal/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/circularreveal/a$1;->a:Landroid/support/design/circularreveal/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/circularreveal/a$1;->a:Landroid/support/design/circularreveal/c;

    invoke-interface {p1}, Landroid/support/design/circularreveal/c;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/circularreveal/a$1;->a:Landroid/support/design/circularreveal/c;

    invoke-interface {p1}, Landroid/support/design/circularreveal/c;->a()V

    return-void
.end method
