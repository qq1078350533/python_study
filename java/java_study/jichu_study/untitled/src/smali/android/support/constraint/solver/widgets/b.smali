.class public Landroid/support/constraint/solver/widgets/b;
.super Landroid/support/constraint/solver/widgets/h;


# instance fields
.field private ak:I

.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/k;",
            ">;"
        }
    .end annotation
.end field

.field private am:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/b;->al:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/b;->am:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    return-void
.end method

.method public a(Landroid/support/constraint/solver/e;)V
    .locals 10

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    move v0, v2

    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    if-ltz v0, :cond_11

    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    aget-object v0, v0, v1

    move v1, v2

    :goto_1
    iget v6, p0, Landroid/support/constraint/solver/widgets/b;->aj:I

    if-ge v1, v6, :cond_6

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/b;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v1

    iget-boolean v7, p0, Landroid/support/constraint/solver/widgets/b;->am:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    iget v7, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    if-eqz v7, :cond_2

    if-ne v7, v4, :cond_3

    :cond_2
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_3

    :goto_2
    move v1, v4

    goto :goto_4

    :cond_3
    iget v7, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    if-eq v7, v3, :cond_4

    if-ne v7, v5, :cond_5

    :cond_4
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_4
    iget v6, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    if-eqz v6, :cond_8

    if-ne v6, v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/b;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/b;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    :goto_6
    move v1, v2

    :cond_9
    move v6, v2

    :goto_7
    iget v7, p0, Landroid/support/constraint/solver/widgets/b;->aj:I

    if-ge v6, v7, :cond_d

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/b;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/b;->am:Z

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a()Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_9

    :cond_a
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v9, :cond_c

    if-ne v9, v3, :cond_b

    goto :goto_8

    :cond_b
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    iget v0, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_a
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto :goto_b

    :cond_e
    if-ne v0, v4, :cond_f

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_a

    :cond_f
    if-ne v0, v3, :cond_10

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_a

    :cond_10
    if-ne v0, v5, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-nez v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_a

    :cond_11
    :goto_b
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/b;->am:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Landroid/support/constraint/solver/widgets/h;->b()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/b;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/b;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast p1, Landroid/support/constraint/solver/widgets/e;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/e;->u(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/k;->b(I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/k;F)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/k;F)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_2
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/k;F)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Landroid/support/constraint/solver/widgets/b;->aj:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/b;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    iget-boolean v3, p0, Landroid/support/constraint/solver/widgets/b;->am:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_6

    :cond_4
    iget v3, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    packed-switch v3, :pswitch_data_1

    move-object v1, v2

    goto :goto_5

    :pswitch_4
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_4

    :pswitch_5
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_4

    :pswitch_6
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_4

    :pswitch_7
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_4
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_5

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/b;->al:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/m;)V

    :cond_5
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public c()V
    .locals 8

    iget v0, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    move v1, v2

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_1
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/b;->al:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/b;->al:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/k;

    iget v6, v5, Landroid/support/constraint/solver/widgets/k;->i:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    return-void

    :cond_0
    iget v6, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    goto :goto_4

    :cond_1
    iget v6, v5, Landroid/support/constraint/solver/widgets/k;->f:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_3

    goto :goto_5

    :cond_2
    :goto_4
    iget v6, v5, Landroid/support/constraint/solver/widgets/k;->f:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_3

    :goto_5
    iget v1, v5, Landroid/support/constraint/solver/widgets/k;->f:F

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v2

    iget-wide v4, v2, Landroid/support/constraint/solver/f;->z:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/solver/f;->z:J

    :cond_5
    iput-object v3, v0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput v1, v0, Landroid/support/constraint/solver/widgets/k;->f:F

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/k;->f()V

    iget v0, p0, Landroid/support/constraint/solver/widgets/b;->ak:I

    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_6

    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_6

    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_6

    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/b;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_6
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/k;F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
