.class public Landroid/support/constraint/solver/widgets/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/n$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/n;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->a:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->b:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->c:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->d:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/n;->e:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/constraint/solver/widgets/n$a;

    invoke-direct {v4, v2}, Landroid/support/constraint/solver/widgets/n$a;-><init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->a:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->b:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->c:I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/n;->d:I

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/n$a;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/n$a;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 3

    iget v0, p0, Landroid/support/constraint/solver/widgets/n;->a:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/n;->b:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/n;->c:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j(I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/n;->d:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k(I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/n$a;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/n$a;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
