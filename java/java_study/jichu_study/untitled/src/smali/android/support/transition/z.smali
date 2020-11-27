.class Landroid/support/transition/z;
.super Landroid/support/transition/af;

# interfaces
.implements Landroid/support/transition/ab;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/af;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/z;
    .locals 0

    invoke-static {p0}, Landroid/support/transition/af;->d(Landroid/view/View;)Landroid/support/transition/af;

    move-result-object p0

    check-cast p0, Landroid/support/transition/z;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/af$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/af$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/z;->a:Landroid/support/transition/af$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/af$a;->b(Landroid/view/View;)V

    return-void
.end method
