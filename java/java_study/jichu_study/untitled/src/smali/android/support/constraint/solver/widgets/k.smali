.class public Landroid/support/constraint/solver/widgets/k;
.super Landroid/support/constraint/solver/widgets/m;


# instance fields
.field a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field b:F

.field c:Landroid/support/constraint/solver/widgets/k;

.field d:F

.field e:Landroid/support/constraint/solver/widgets/k;

.field f:F

.field g:I

.field private j:Landroid/support/constraint/solver/widgets/k;

.field private k:F

.field private l:Landroid/support/constraint/solver/widgets/l;

.field private m:I

.field private n:Landroid/support/constraint/solver/widgets/l;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->l:Landroid/support/constraint/solver/widgets/l;

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->m:I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->n:Landroid/support/constraint/solver/widgets/l;

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->o:I

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DIRECT"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "CENTER"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "MATCH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "CHAIN"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "BARRIER"

    return-object p1

    :cond_4
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public a()V
    .locals 8

    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->l:Landroid/support/constraint/solver/widgets/l;

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/support/constraint/solver/widgets/l;->i:I

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->m:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->l:Landroid/support/constraint/solver/widgets/l;

    iget v2, v2, Landroid/support/constraint/solver/widgets/l;->a:F

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->n:Landroid/support/constraint/solver/widgets/l;

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/support/constraint/solver/widgets/l;->i:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->o:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->n:Landroid/support/constraint/solver/widgets/l;

    iget v2, v2, Landroid/support/constraint/solver/widgets/l;->a:F

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/support/constraint/solver/widgets/k;->k:F

    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_6

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->i:I

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    if-nez v0, :cond_7

    iput-object p0, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    goto :goto_0

    :cond_7
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget v1, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/k;->f()V

    goto/16 :goto_7

    :cond_8
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->i:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->i:I

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v0

    iget-wide v5, v0, Landroid/support/constraint/solver/f;->w:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroid/support/constraint/solver/f;->w:J

    :cond_9
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput-object v2, v0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v2, :cond_a

    goto :goto_1

    :cond_a
    move v1, v3

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    :goto_2
    iget v2, v2, Landroid/support/constraint/solver/widgets/k;->f:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v4, :cond_e

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v4, :cond_d

    goto :goto_3

    :cond_d
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:F

    goto :goto_4

    :cond_e
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:F

    :goto_4
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v5

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    if-ne v6, v7, :cond_f

    const/high16 v2, 0x3f000000    # 0.5f

    move v5, v3

    goto :goto_5

    :cond_f
    move v3, v4

    :goto_5
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v6, v1, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget v6, v6, Landroid/support/constraint/solver/widgets/k;->f:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Landroid/support/constraint/solver/widgets/k;->f:F

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget v1, v1, Landroid/support/constraint/solver/widgets/k;->f:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    goto :goto_6

    :cond_10
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget v1, v1, Landroid/support/constraint/solver/widgets/k;->f:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget v3, v3, Landroid/support/constraint/solver/widgets/k;->f:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Landroid/support/constraint/solver/widgets/k;->f:F

    goto :goto_6

    :cond_11
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_13

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->i:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    if-eqz v0, :cond_13

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->i:I

    if-ne v0, v1, :cond_13

    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v0

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->x:J

    :cond_12
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput-object v3, v1, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iget v0, v0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget v3, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    add-float/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget v0, v2, Landroid/support/constraint/solver/widgets/k;->f:F

    iget v2, v1, Landroid/support/constraint/solver/widgets/k;->d:F

    add-float/2addr v0, v2

    iput v0, v1, Landroid/support/constraint/solver/widgets/k;->f:F

    :goto_6
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/k;->f()V

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/k;->f()V

    goto :goto_7

    :cond_13
    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c()V

    :cond_14
    :goto_7
    return-void
.end method

.method public a(ILandroid/support/constraint/solver/widgets/k;I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    int-to-float p1, p3

    iput p1, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/m;)V

    return-void
.end method

.method a(Landroid/support/constraint/solver/e;)V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    iget v3, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    :goto_0
    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/k;F)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->i:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    if-eq v0, p1, :cond_2

    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_0
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput p2, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    iget p1, p0, Landroid/support/constraint/solver/widgets/k;->i:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/k;->e()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/k;->f()V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/k;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    int-to-float p1, p2

    iput p1, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/m;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/k;ILandroid/support/constraint/solver/widgets/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/m;)V

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/k;->l:Landroid/support/constraint/solver/widgets/l;

    iput p2, p0, Landroid/support/constraint/solver/widgets/k;->m:I

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/k;->l:Landroid/support/constraint/solver/widgets/l;

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/widgets/l;->a(Landroid/support/constraint/solver/widgets/m;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-super {p0}, Landroid/support/constraint/solver/widgets/m;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->c:Landroid/support/constraint/solver/widgets/k;

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->d:F

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->l:Landroid/support/constraint/solver/widgets/l;

    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/solver/widgets/k;->m:I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->n:Landroid/support/constraint/solver/widgets/l;

    iput v2, p0, Landroid/support/constraint/solver/widgets/k;->o:I

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->b:F

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->k:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    return-void
.end method

.method public b(Landroid/support/constraint/solver/widgets/k;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iput p2, p0, Landroid/support/constraint/solver/widgets/k;->k:F

    return-void
.end method

.method public b(Landroid/support/constraint/solver/widgets/k;ILandroid/support/constraint/solver/widgets/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/k;->j:Landroid/support/constraint/solver/widgets/k;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/k;->n:Landroid/support/constraint/solver/widgets/l;

    iput p2, p0, Landroid/support/constraint/solver/widgets/k;->o:I

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    iput v1, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v2

    iput v1, v2, Landroid/support/constraint/solver/widgets/k;->g:I

    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_3

    :cond_2
    neg-int v1, v1

    :cond_3
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/k;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/k;I)V

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/support/constraint/solver/widgets/k;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/k;->g:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->e:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/k;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/k;->a:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    goto :goto_0
.end method
