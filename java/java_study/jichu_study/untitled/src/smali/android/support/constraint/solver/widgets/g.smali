.class public Landroid/support/constraint/solver/widgets/g;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;


# instance fields
.field protected ai:F

.field protected aj:I

.field protected ak:I

.field private al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private am:I

.field private an:Z

.field private ao:I

.field private ap:Landroid/support/constraint/solver/widgets/j;

.field private aq:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/g;->an:Z

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->ao:I

    new-instance v1, Landroid/support/constraint/solver/widgets/j;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/j;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/g;->ap:Landroid/support/constraint/solver/widgets/j;

    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/solver/widgets/g;->aq:I

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/g;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    return v0
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    sget-object v0, Landroid/support/constraint/solver/widgets/g$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    if-nez v0, :cond_0

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_0
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/g;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->A:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/solver/e;)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/g;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/g;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/g;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v6, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    if-nez v6, :cond_3

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/e;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->D:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v4

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iget v6, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iget v6, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    invoke-virtual {p1, v2, v0, v5, v7}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2

    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    iget v7, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/g;->an:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/g;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/g;->J()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    :goto_1
    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    goto :goto_4

    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_2
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    neg-int v1, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_6

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/g;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    :goto_3
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/solver/widgets/k;->a(ILandroid/support/constraint/solver/widgets/k;I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public c(Landroid/support/constraint/solver/e;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/g;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/g;->al:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->b(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Landroid/support/constraint/solver/widgets/g;->am:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/g;->h(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/g;->i(I)V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/g;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/g;->k(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/g;->j(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/g;->h(I)V

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/g;->i(I)V

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/g;->k()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/g;->j(I)V

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/g;->k(I)V

    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    iput p1, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/solver/widgets/g;->ai:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/g;->aj:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/g;->ak:I

    :cond_0
    return-void
.end method
