.class Landroid/support/transition/ChangeTransform$a;
.super Landroid/support/transition/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/support/transition/g;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/transition/g;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/s;-><init>()V

    iput-object p1, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/transition/ChangeTransform$a;->b:Landroid/support/transition/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/Transition;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->b(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    invoke-static {p1}, Landroid/support/transition/h;->a(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    sget v0, Landroid/support/transition/n$a;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$a;->a:Landroid/view/View;

    sget v0, Landroid/support/transition/n$a;->parent_matrix:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/support/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$a;->b:Landroid/support/transition/g;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/support/transition/g;->setVisibility(I)V

    return-void
.end method

.method public c(Landroid/support/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroid/support/transition/ChangeTransform$a;->b:Landroid/support/transition/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/transition/g;->setVisibility(I)V

    return-void
.end method
