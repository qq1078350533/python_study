.class final Landroid/support/v4/widget/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/widget/k$b<",
        "Landroid/support/v4/e/n<",
        "Landroid/support/v4/view/a/c;",
        ">;",
        "Landroid/support/v4/view/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/e/n;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/n<",
            "Landroid/support/v4/view/a/c;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/e/n;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/support/v4/e/n;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/j$2;->a(Landroid/support/v4/e/n;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v4/e/n;I)Landroid/support/v4/view/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/e/n<",
            "Landroid/support/v4/view/a/c;",
            ">;I)",
            "Landroid/support/v4/view/a/c;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/support/v4/e/n;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/a/c;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/v4/e/n;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/j$2;->a(Landroid/support/v4/e/n;I)Landroid/support/v4/view/a/c;

    move-result-object p1

    return-object p1
.end method
