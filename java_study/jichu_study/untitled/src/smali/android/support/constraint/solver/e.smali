.class public Landroid/support/constraint/solver/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/e$a;
    }
.end annotation


# static fields
.field public static g:Landroid/support/constraint/solver/f; = null

.field private static h:I = 0x3e8


# instance fields
.field a:I

.field b:[Landroid/support/constraint/solver/b;

.field public c:Z

.field d:I

.field e:I

.field final f:Landroid/support/constraint/solver/c;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/support/constraint/solver/e$a;

.field private k:I

.field private l:I

.field private m:[Z

.field private n:I

.field private o:[Landroid/support/constraint/solver/SolverVariable;

.field private p:I

.field private q:[Landroid/support/constraint/solver/b;

.field private final r:Landroid/support/constraint/solver/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/e;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/e;->i:Ljava/util/HashMap;

    const/16 v2, 0x20

    iput v2, p0, Landroid/support/constraint/solver/e;->k:I

    iget v2, p0, Landroid/support/constraint/solver/e;->k:I

    iput v2, p0, Landroid/support/constraint/solver/e;->l:I

    iput-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    iput-boolean v0, p0, Landroid/support/constraint/solver/e;->c:Z

    new-array v1, v2, [Z

    iput-object v1, p0, Landroid/support/constraint/solver/e;->m:[Z

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->d:I

    iput v0, p0, Landroid/support/constraint/solver/e;->e:I

    iput v2, p0, Landroid/support/constraint/solver/e;->n:I

    sget v1, Landroid/support/constraint/solver/e;->h:I

    new-array v1, v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, p0, Landroid/support/constraint/solver/e;->o:[Landroid/support/constraint/solver/SolverVariable;

    iput v0, p0, Landroid/support/constraint/solver/e;->p:I

    new-array v0, v2, [Landroid/support/constraint/solver/b;

    iput-object v0, p0, Landroid/support/constraint/solver/e;->q:[Landroid/support/constraint/solver/b;

    new-array v0, v2, [Landroid/support/constraint/solver/b;

    iput-object v0, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    invoke-direct {p0}, Landroid/support/constraint/solver/e;->i()V

    new-instance v0, Landroid/support/constraint/solver/c;

    invoke-direct {v0}, Landroid/support/constraint/solver/c;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    new-instance v0, Landroid/support/constraint/solver/d;

    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/d;-><init>(Landroid/support/constraint/solver/c;)V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->j:Landroid/support/constraint/solver/e$a;

    new-instance v0, Landroid/support/constraint/solver/b;

    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/b;-><init>(Landroid/support/constraint/solver/c;)V

    iput-object v0, p0, Landroid/support/constraint/solver/e;->r:Landroid/support/constraint/solver/e$a;

    return-void
.end method

.method private final a(Landroid/support/constraint/solver/e$a;Z)I
    .locals 13

    sget-object p2, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    iget-wide v2, p2, Landroid/support/constraint/solver/f;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroid/support/constraint/solver/f;->h:J

    :cond_0
    const/4 p2, 0x0

    move v2, p2

    :goto_0
    iget v3, p0, Landroid/support/constraint/solver/e;->d:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/e;->m:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    move v3, v2

    :goto_1
    if-nez v2, :cond_d

    sget-object v4, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v4, :cond_2

    iget-wide v5, v4, Landroid/support/constraint/solver/f;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroid/support/constraint/solver/f;->i:J

    :cond_2
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroid/support/constraint/solver/e;->d:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_3

    return v3

    :cond_3
    invoke-interface {p1}, Landroid/support/constraint/solver/e$a;->g()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/constraint/solver/e;->m:[Z

    invoke-interface {p1}, Landroid/support/constraint/solver/e$a;->g()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    iget v6, v6, Landroid/support/constraint/solver/SolverVariable;->a:I

    aput-boolean v5, v4, v6

    :cond_4
    iget-object v4, p0, Landroid/support/constraint/solver/e;->m:[Z

    invoke-interface {p1, p0, v4}, Landroid/support/constraint/solver/e$a;->a(Landroid/support/constraint/solver/e;[Z)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v6, p0, Landroid/support/constraint/solver/e;->m:[Z

    iget v7, v4, Landroid/support/constraint/solver/SolverVariable;->a:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_5

    return v3

    :cond_5
    iget-object v6, p0, Landroid/support/constraint/solver/e;->m:[Z

    iget v7, v4, Landroid/support/constraint/solver/SolverVariable;->a:I

    aput-boolean v5, v6, v7

    :cond_6
    if-eqz v4, :cond_c

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    move v9, v6

    move v8, v7

    move v6, p2

    :goto_2
    iget v10, p0, Landroid/support/constraint/solver/e;->e:I

    if-ge v6, v10, :cond_a

    iget-object v10, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v10, v10, v6

    iget-object v11, v10, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v11, Landroid/support/constraint/solver/SolverVariable;->f:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v12, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v11, v12, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v11, v10, Landroid/support/constraint/solver/b;->e:Z

    if-eqz v11, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v10, v4}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v10, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    invoke-virtual {v11, v4}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_9

    iget v10, v10, Landroid/support/constraint/solver/b;->b:F

    neg-float v10, v10

    div-float/2addr v10, v11

    cmpg-float v11, v10, v9

    if-gez v11, :cond_9

    move v8, v6

    move v9, v10

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    if-le v8, v7, :cond_c

    iget-object v5, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v5, v5, v8

    iget-object v6, v5, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iput v7, v6, Landroid/support/constraint/solver/SolverVariable;->b:I

    sget-object v6, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v6, :cond_b

    iget-wide v9, v6, Landroid/support/constraint/solver/f;->j:J

    add-long/2addr v9, v0

    iput-wide v9, v6, Landroid/support/constraint/solver/f;->j:J

    :cond_b
    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/b;->c(Landroid/support/constraint/solver/SolverVariable;)V

    iget-object v4, v5, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iput v8, v4, Landroid/support/constraint/solver/SolverVariable;->b:I

    iget-object v4, v5, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/SolverVariable;->c(Landroid/support/constraint/solver/b;)V

    goto/16 :goto_1

    :cond_c
    move v2, v5

    goto/16 :goto_1

    :cond_d
    return v3
.end method

.method private a(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v0, v0, Landroid/support/constraint/solver/c;->b:Landroid/support/constraint/solver/g$a;

    invoke-interface {v0}, Landroid/support/constraint/solver/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/solver/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->b()V

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/SolverVariable;->a(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V

    iget p1, p0, Landroid/support/constraint/solver/e;->p:I

    sget p2, Landroid/support/constraint/solver/e;->h:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    sput p2, Landroid/support/constraint/solver/e;->h:I

    iget-object p1, p0, Landroid/support/constraint/solver/e;->o:[Landroid/support/constraint/solver/SolverVariable;

    sget p2, Landroid/support/constraint/solver/e;->h:I

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object p1, p0, Landroid/support/constraint/solver/e;->o:[Landroid/support/constraint/solver/SolverVariable;

    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/e;->o:[Landroid/support/constraint/solver/SolverVariable;

    iget p2, p0, Landroid/support/constraint/solver/e;->p:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->p:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public static a(Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/b;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/b;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/b;

    move-result-object p0

    return-object p0
.end method

.method public static a()Landroid/support/constraint/solver/f;
    .locals 1

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    return-object v0
.end method

.method private b(Landroid/support/constraint/solver/e$a;)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Landroid/support/constraint/solver/e;->e:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->f:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v6, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/support/constraint/solver/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_11

    sget-object v6, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3

    iget-wide v9, v6, Landroid/support/constraint/solver/f;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroid/support/constraint/solver/f;->k:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, -0x1

    move v12, v6

    move v10, v9

    move v11, v10

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_4
    iget v14, v0, Landroid/support/constraint/solver/e;->e:I

    if-ge v6, v14, :cond_c

    iget-object v14, v0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v14, v14, v6

    iget-object v15, v14, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iget-object v15, v15, Landroid/support/constraint/solver/SolverVariable;->f:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v15, v1, :cond_4

    goto :goto_8

    :cond_4
    iget-boolean v1, v14, Landroid/support/constraint/solver/b;->e:Z

    if-eqz v1, :cond_5

    goto :goto_8

    :cond_5
    iget v1, v14, Landroid/support/constraint/solver/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    iget v15, v0, Landroid/support/constraint/solver/e;->d:I

    if-ge v1, v15, :cond_b

    iget-object v15, v0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v15, v15, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v15, v15, v1

    iget-object v5, v14, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    invoke-virtual {v5, v15}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v5

    cmpg-float v16, v5, v4

    if-gtz v16, :cond_6

    goto :goto_7

    :cond_6
    move v4, v13

    move v13, v12

    move v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_6
    const/4 v7, 0x7

    if-ge v10, v7, :cond_a

    iget-object v7, v15, Landroid/support/constraint/solver/SolverVariable;->e:[F

    aget v7, v7, v10

    div-float/2addr v7, v5

    cmpg-float v8, v7, v13

    if-gez v8, :cond_7

    if-eq v10, v4, :cond_8

    :cond_7
    if-le v10, v4, :cond_9

    :cond_8
    move v12, v1

    move v11, v6

    move v13, v7

    move v4, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v4

    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_4

    :cond_c
    if-eq v10, v9, :cond_e

    iget-object v1, v0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v1, v1, v10

    iget-object v4, v1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iput v9, v4, Landroid/support/constraint/solver/SolverVariable;->b:I

    sget-object v4, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v4, :cond_d

    iget-wide v5, v4, Landroid/support/constraint/solver/f;->j:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/support/constraint/solver/f;->j:J

    :cond_d
    iget-object v4, v0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v4, v4, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v4, v4, v11

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/b;->c(Landroid/support/constraint/solver/SolverVariable;)V

    iget-object v4, v1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iput v10, v4, Landroid/support/constraint/solver/SolverVariable;->b:I

    iget-object v4, v1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v4, v1}, Landroid/support/constraint/solver/SolverVariable;->c(Landroid/support/constraint/solver/b;)V

    goto :goto_9

    :cond_e
    const/4 v2, 0x1

    :goto_9
    iget v1, v0, Landroid/support/constraint/solver/e;->d:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v3, 0x0

    :cond_11
    return v3
.end method

.method private b(Landroid/support/constraint/solver/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/e;I)Landroid/support/constraint/solver/b;

    return-void
.end method

.method private final c(Landroid/support/constraint/solver/b;)V
    .locals 2

    iget v0, p0, Landroid/support/constraint/solver/e;->e:I

    if-lez v0, :cond_0

    iget-object v0, p1, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    iget-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/a;->a(Landroid/support/constraint/solver/b;[Landroid/support/constraint/solver/b;)V

    iget-object v0, p1, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    iget v0, v0, Landroid/support/constraint/solver/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/solver/b;->e:Z

    :cond_0
    return-void
.end method

.method private final d(Landroid/support/constraint/solver/b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    iget v1, p0, Landroid/support/constraint/solver/e;->e:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v0, v0, Landroid/support/constraint/solver/c;->a:Landroid/support/constraint/solver/g$a;

    iget-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    iget v2, p0, Landroid/support/constraint/solver/e;->e:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/support/constraint/solver/g$a;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    iget v1, p0, Landroid/support/constraint/solver/e;->e:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/e;->e:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->e:I

    iget-object v0, p1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->c(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method private h()V
    .locals 5

    iget v0, p0, Landroid/support/constraint/solver/e;->k:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/e;->k:I

    iget-object v0, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    iget v1, p0, Landroid/support/constraint/solver/e;->k:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/b;

    iput-object v0, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    iget-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v1, v0, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/e;->k:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v1, v0, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v0, p0, Landroid/support/constraint/solver/e;->k:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroid/support/constraint/solver/e;->m:[Z

    iput v0, p0, Landroid/support/constraint/solver/e;->l:I

    iput v0, p0, Landroid/support/constraint/solver/e;->n:I

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->d:J

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->p:J

    iget v3, p0, Landroid/support/constraint/solver/e;->k:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->p:J

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->p:J

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->D:J

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v2, v2, Landroid/support/constraint/solver/c;->a:Landroid/support/constraint/solver/g$a;

    invoke-interface {v2, v1}, Landroid/support/constraint/solver/g$a;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/e;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    iget v1, v1, Landroid/support/constraint/solver/b;->b:F

    iput v1, v2, Landroid/support/constraint/solver/SolverVariable;->d:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;
    .locals 5

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->m:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/e;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/solver/e;->h()V

    :cond_1
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p2

    iget v0, p0, Landroid/support/constraint/solver/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/e;->a:I

    iget v0, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/e;->d:I

    iget v0, p0, Landroid/support/constraint/solver/e;->a:I

    iput v0, p2, Landroid/support/constraint/solver/SolverVariable;->a:I

    iput p1, p2, Landroid/support/constraint/solver/SolverVariable;->c:I

    iget-object p1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object p1, p1, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v0, p0, Landroid/support/constraint/solver/e;->a:I

    aput-object p2, p1, v0

    iget-object p1, p0, Landroid/support/constraint/solver/e;->j:Landroid/support/constraint/solver/e$a;

    invoke-interface {p1, p2}, Landroid/support/constraint/solver/e$a;->d(Landroid/support/constraint/solver/SolverVariable;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/solver/e;->l:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/solver/e;->h()V

    :cond_1
    instance-of v1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b()Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    move-object v0, p1

    :cond_2
    iget p1, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    iget v2, p0, Landroid/support/constraint/solver/e;->a:I

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object p1, p1, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    :cond_3
    iget p1, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    if-eq p1, v1, :cond_4

    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->b()V

    :cond_4
    iget p1, p0, Landroid/support/constraint/solver/e;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/e;->a:I

    iget p1, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/e;->d:I

    iget p1, p0, Landroid/support/constraint/solver/e;->a:I

    iput p1, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    sget-object p1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object p1, v0, Landroid/support/constraint/solver/SolverVariable;->f:Landroid/support/constraint/solver/SolverVariable$Type;

    iget-object p1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object p1, p1, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v1, p0, Landroid/support/constraint/solver/e;->a:I

    aput-object v0, p1, v1

    :cond_5
    return-object v0
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;I)V
    .locals 3

    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->b:I

    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroid/support/constraint/solver/b;->e:Z

    if-eqz v1, :cond_0

    :goto_0
    int-to-float p1, p2

    iput p1, v0, Landroid/support/constraint/solver/b;->b:F

    goto :goto_2

    :cond_0
    iget-object v1, v0, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    iget v1, v1, Landroid/support/constraint/solver/a;->a:I

    if-nez v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/constraint/solver/b;->e:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/b;->b(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {v10, p0, v1}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/e;I)Landroid/support/constraint/solver/b;

    :cond_0
    invoke-virtual {p0, v10}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->c:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/b;

    const/4 p1, 0x6

    if-eq p6, p1, :cond_0

    invoke-virtual {v6, p0, p6}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/e;I)Landroid/support/constraint/solver/b;

    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->c:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    if-eqz p3, :cond_0

    iget-object p1, v0, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    iget-wide v3, v0, Landroid/support/constraint/solver/f;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroid/support/constraint/solver/f;->f:J

    iget-boolean v0, p1, Landroid/support/constraint/solver/b;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v3, v0, Landroid/support/constraint/solver/f;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroid/support/constraint/solver/f;->g:J

    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/e;->e:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroid/support/constraint/solver/e;->n:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/2addr v0, v3

    iget v4, p0, Landroid/support/constraint/solver/e;->l:I

    if-lt v0, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/support/constraint/solver/e;->h()V

    :cond_3
    const/4 v0, 0x0

    iget-boolean v4, p1, Landroid/support/constraint/solver/b;->e:Z

    if-nez v4, :cond_a

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/b;)V

    invoke-virtual {p1}, Landroid/support/constraint/solver/b;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/support/constraint/solver/b;->d()V

    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/e;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->e()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iput-object v0, p1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/e;->d(Landroid/support/constraint/solver/b;)V

    iget-object v4, p0, Landroid/support/constraint/solver/e;->r:Landroid/support/constraint/solver/e$a;

    invoke-interface {v4, p1}, Landroid/support/constraint/solver/e$a;->a(Landroid/support/constraint/solver/e$a;)V

    iget-object v4, p0, Landroid/support/constraint/solver/e;->r:Landroid/support/constraint/solver/e$a;

    invoke-direct {p0, v4, v3}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/e$a;Z)I

    iget v4, v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    iget-object v4, p1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    if-ne v4, v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/b;->b(Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v4, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v4, :cond_5

    iget-wide v5, v4, Landroid/support/constraint/solver/f;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroid/support/constraint/solver/f;->j:J

    :cond_5
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/b;->c(Landroid/support/constraint/solver/SolverVariable;)V

    :cond_6
    iget-boolean v0, p1, Landroid/support/constraint/solver/b;->e:Z

    if-nez v0, :cond_7

    iget-object v0, p1, Landroid/support/constraint/solver/b;->a:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->c(Landroid/support/constraint/solver/b;)V

    :cond_7
    iget v0, p0, Landroid/support/constraint/solver/e;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/solver/e;->e:I

    :cond_8
    move v0, v3

    :cond_9
    invoke-virtual {p1}, Landroid/support/constraint/solver/b;->a()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/e;->d(Landroid/support/constraint/solver/b;)V

    :cond_b
    return-void
.end method

.method a(Landroid/support/constraint/solver/b;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/support/constraint/solver/e;->a(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/support/constraint/solver/b;->c(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    return-void
.end method

.method a(Landroid/support/constraint/solver/e$a;)V
    .locals 5

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->t:J

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->u:J

    iget v3, p0, Landroid/support/constraint/solver/e;->d:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->u:J

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->v:J

    iget v3, p0, Landroid/support/constraint/solver/e;->e:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->v:J

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/b;

    invoke-direct {p0, v0}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/b;)V

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/e$a;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/e$a;Z)I

    invoke-direct {p0}, Landroid/support/constraint/solver/e;->j()V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/support/constraint/solver/b;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/b;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/solver/b;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/b;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->b()Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v2, v2, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v2, v2, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/constraint/solver/SolverVariable;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v1, v1, Landroid/support/constraint/solver/c;->b:Landroid/support/constraint/solver/g$a;

    iget-object v2, p0, Landroid/support/constraint/solver/e;->o:[Landroid/support/constraint/solver/SolverVariable;

    iget v3, p0, Landroid/support/constraint/solver/e;->p:I

    invoke-interface {v1, v2, v3}, Landroid/support/constraint/solver/g$a;->a([Ljava/lang/Object;I)V

    iput v0, p0, Landroid/support/constraint/solver/e;->p:I

    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v1, v1, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/constraint/solver/e;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v0, p0, Landroid/support/constraint/solver/e;->a:I

    iget-object v1, p0, Landroid/support/constraint/solver/e;->j:Landroid/support/constraint/solver/e$a;

    invoke-interface {v1}, Landroid/support/constraint/solver/e$a;->f()V

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->d:I

    move v1, v0

    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/e;->e:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroid/support/constraint/solver/b;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/solver/e;->i()V

    iput v0, p0, Landroid/support/constraint/solver/e;->e:I

    return-void
.end method

.method public b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->c:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/solver/b;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p4}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->d()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->c:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/constraint/solver/b;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    if-eqz p3, :cond_0

    iget-object p1, v0, Landroid/support/constraint/solver/b;->d:Landroid/support/constraint/solver/a;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-void
.end method

.method public c()Landroid/support/constraint/solver/b;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v0, v0, Landroid/support/constraint/solver/c;->a:Landroid/support/constraint/solver/g$a;

    invoke-interface {v0}, Landroid/support/constraint/solver/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/solver/b;

    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/b;-><init>(Landroid/support/constraint/solver/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/b;->c()V

    :goto_0
    invoke-static {}, Landroid/support/constraint/solver/SolverVariable;->a()V

    return-object v0
.end method

.method public c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    invoke-virtual {v0, p0, p4}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/e;I)Landroid/support/constraint/solver/b;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    return-object v0
.end method

.method public d()Landroid/support/constraint/solver/SolverVariable;
    .locals 5

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->n:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/e;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/solver/e;->h()V

    :cond_1
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->a:I

    iget v1, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->d:I

    iget v1, p0, Landroid/support/constraint/solver/e;->a:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v1, v1, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/e;->a:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public e()Landroid/support/constraint/solver/SolverVariable;
    .locals 5

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/support/constraint/solver/f;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/solver/f;->o:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/solver/e;->l:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/solver/e;->h()V

    :cond_1
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->a:I

    iget v1, p0, Landroid/support/constraint/solver/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/e;->d:I

    iget v1, p0, Landroid/support/constraint/solver/e;->a:I

    iput v1, v0, Landroid/support/constraint/solver/SolverVariable;->a:I

    iget-object v1, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    iget-object v1, v1, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    iget v2, p0, Landroid/support/constraint/solver/e;->a:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public f()V
    .locals 5

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Landroid/support/constraint/solver/f;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroid/support/constraint/solver/f;->e:J

    :cond_0
    iget-boolean v0, p0, Landroid/support/constraint/solver/e;->c:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_1

    iget-wide v3, v0, Landroid/support/constraint/solver/f;->r:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroid/support/constraint/solver/f;->r:J

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget v4, p0, Landroid/support/constraint/solver/e;->e:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroid/support/constraint/solver/e;->b:[Landroid/support/constraint/solver/b;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Landroid/support/constraint/solver/b;->e:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v0, :cond_5

    iget-wide v3, v0, Landroid/support/constraint/solver/f;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroid/support/constraint/solver/f;->q:J

    :cond_5
    invoke-direct {p0}, Landroid/support/constraint/solver/e;->j()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/constraint/solver/e;->j:Landroid/support/constraint/solver/e$a;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/e$a;)V

    :goto_3
    return-void
.end method

.method public g()Landroid/support/constraint/solver/c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/solver/e;->f:Landroid/support/constraint/solver/c;

    return-object v0
.end method
