.class Landroid/support/v7/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/af$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/d$a;,
        Landroid/support/v7/widget/d$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v7/widget/d$a;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Landroid/support/v7/widget/af;

.field private g:Landroid/support/v4/e/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/k$a<",
            "Landroid/support/v7/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/d$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/d$a;Z)V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/d$a;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/e/k$b;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/e/k$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/d;->g:Landroid/support/v4/e/k$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/d;->h:I

    iput-object p1, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iput-boolean p2, p0, Landroid/support/v7/widget/d;->e:Z

    new-instance p1, Landroid/support/v7/widget/af;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/af$a;)V

    iput-object p1, p0, Landroid/support/v7/widget/d;->f:Landroid/support/v7/widget/af;

    return-void
.end method

.method private b(Landroid/support/v7/widget/d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    return-void
.end method

.method private c(Landroid/support/v7/widget/d$b;)V
    .locals 10

    iget v0, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/support/v7/widget/d$b;->b:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v4

    move v4, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v2, v1, :cond_5

    iget-object v8, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v8, v2}, Landroid/support/v7/widget/d$a;->a(I)Landroid/support/v7/widget/RecyclerView$v;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->d(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v9, :cond_1

    invoke-virtual {p0, v7, v0, v4, v6}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    move v6, v3

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {p0, v7, v0, v4, v6}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v7/widget/d;->e(Landroid/support/v7/widget/d$b;)V

    move v5, v9

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    move v6, v9

    :goto_4
    if-eqz v5, :cond_4

    sub-int/2addr v2, v4

    sub-int/2addr v1, v4

    move v4, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/2addr v2, v9

    move v5, v6

    goto :goto_0

    :cond_5
    iget v1, p1, Landroid/support/v7/widget/d$b;->d:I

    if-eq v4, v1, :cond_6

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    invoke-virtual {p0, v7, v0, v4, v6}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    :cond_6
    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->e(Landroid/support/v7/widget/d$b;)V

    goto :goto_6

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    :goto_6
    return-void
.end method

.method private d(II)I
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/d$b;

    iget v4, v3, Landroid/support/v7/widget/d$b;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v4, v3, Landroid/support/v7/widget/d$b;->d:I

    if-ge v2, v4, :cond_0

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v4, v3, Landroid/support/v7/widget/d$b;->d:I

    goto :goto_1

    :cond_0
    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    iget v4, v3, Landroid/support/v7/widget/d$b;->b:I

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    iget v4, v3, Landroid/support/v7/widget/d$b;->b:I

    if-ne v2, v4, :cond_3

    if-ne p2, v1, :cond_1

    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v2, v1

    :goto_2
    iput v2, v3, Landroid/support/v7/widget/d$b;->d:I

    goto :goto_3

    :cond_1
    if-ne p2, v5, :cond_2

    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_3
    if-ne p2, v1, :cond_4

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    add-int/2addr v2, v1

    :goto_4
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    goto :goto_5

    :cond_4
    if-ne p2, v5, :cond_5

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    sub-int/2addr v2, v1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_6
    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v2, v1

    :goto_6
    iput v2, v3, Landroid/support/v7/widget/d$b;->d:I

    goto :goto_8

    :cond_7
    if-ne p2, v5, :cond_c

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_6

    :cond_8
    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    if-gt v2, p1, :cond_a

    iget v2, v3, Landroid/support/v7/widget/d$b;->a:I

    if-ne v2, v1, :cond_9

    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_8

    :cond_9
    iget v2, v3, Landroid/support/v7/widget/d$b;->a:I

    if-ne v2, v5, :cond_c

    iget v2, v3, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr p1, v2

    goto :goto_8

    :cond_a
    if-ne p2, v1, :cond_b

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    add-int/2addr v2, v1

    :goto_7
    iput v2, v3, Landroid/support/v7/widget/d$b;->b:I

    goto :goto_8

    :cond_b
    if-ne p2, v5, :cond_c

    iget v2, v3, Landroid/support/v7/widget/d$b;->b:I

    sub-int/2addr v2, v1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_d
    iget-object p2, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_9
    if-ltz p2, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/d$b;

    iget v1, v0, Landroid/support/v7/widget/d$b;->a:I

    if-ne v1, v2, :cond_e

    iget v1, v0, Landroid/support/v7/widget/d$b;->d:I

    iget v3, v0, Landroid/support/v7/widget/d$b;->b:I

    if-eq v1, v3, :cond_f

    iget v1, v0, Landroid/support/v7/widget/d$b;->d:I

    if-gez v1, :cond_10

    goto :goto_a

    :cond_e
    iget v1, v0, Landroid/support/v7/widget/d$b;->d:I

    if-gtz v1, :cond_10

    :cond_f
    :goto_a
    iget-object v1, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    :cond_10
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_11
    return p1
.end method

.method private d(Landroid/support/v7/widget/d$b;)V
    .locals 9

    iget v0, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/support/v7/widget/d$b;->b:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v4

    move v4, v0

    move v0, v3

    :goto_0
    const/4 v6, 0x4

    if-ge v2, v1, :cond_4

    iget-object v7, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v7, v2}, Landroid/support/v7/widget/d$a;->a(I)Landroid/support/v7/widget/RecyclerView$v;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->d(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    iget-object v5, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v0, v5}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    move v4, v2

    move v0, v3

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    iget-object v5, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v0, v5}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/d;->e(Landroid/support/v7/widget/d$b;)V

    move v4, v2

    move v0, v3

    :cond_3
    move v5, v8

    :goto_2
    add-int/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/support/v7/widget/d$b;->d:I

    if-eq v0, v1, :cond_5

    iget-object v1, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    invoke-virtual {p0, v6, v4, v0, v1}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    :cond_5
    if-nez v5, :cond_6

    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->e(Landroid/support/v7/widget/d$b;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    :goto_3
    return-void
.end method

.method private d(I)Z
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/d$b;

    iget v4, v3, Landroid/support/v7/widget/d$b;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v3, v3, Landroid/support/v7/widget/d$b;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/d;->a(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    iget v4, v3, Landroid/support/v7/widget/d$b;->a:I

    if-ne v4, v6, :cond_2

    iget v4, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v5, v3, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/support/v7/widget/d$b;->b:I

    :goto_1
    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v5}, Landroid/support/v7/widget/d;->a(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private e(Landroid/support/v7/widget/d$b;)V
    .locals 12

    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    iget v0, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/d$b;->a:I

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/d;->d(II)I

    move-result v0

    iget v2, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v6

    :goto_0
    move v7, v0

    move v0, v1

    move v8, v2

    move v2, v0

    :goto_1
    iget v9, p1, Landroid/support/v7/widget/d$b;->d:I

    if-ge v0, v9, :cond_7

    iget v9, p1, Landroid/support/v7/widget/d$b;->b:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    iget v10, p1, Landroid/support/v7/widget/d$b;->a:I

    invoke-direct {p0, v9, v10}, Landroid/support/v7/widget/d;->d(II)I

    move-result v9

    iget v10, p1, Landroid/support/v7/widget/d$b;->a:I

    if-eq v10, v4, :cond_4

    if-eq v10, v5, :cond_3

    :cond_2
    move v10, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_2

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_4
    if-ne v9, v7, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget v10, p1, Landroid/support/v7/widget/d$b;->a:I

    iget-object v11, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object v7

    invoke-virtual {p0, v7, v8}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;I)V

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    iget v7, p1, Landroid/support/v7/widget/d$b;->a:I

    if-ne v7, v5, :cond_6

    add-int/2addr v8, v2

    :cond_6
    move v2, v1

    move v7, v9

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    if-lez v2, :cond_8

    iget p1, p1, Landroid/support/v7/widget/d$b;->a:I

    invoke-virtual {p0, p1, v7, v2, v0}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Landroid/support/v7/widget/d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/d;->g(Landroid/support/v7/widget/d$b;)V

    return-void
.end method

.method private g(Landroid/support/v7/widget/d$b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->b(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->c(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/d$a;->d(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/d$b;->d:I

    iget-object p1, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v7/widget/d$a;->a(IILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(II)I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/d$b;

    iget v2, v1, Landroid/support/v7/widget/d$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, Landroid/support/v7/widget/d$b;->b:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Landroid/support/v7/widget/d$b;->d:I

    goto :goto_1

    :cond_0
    iget v2, v1, Landroid/support/v7/widget/d$b;->b:I

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Landroid/support/v7/widget/d$b;->d:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v2, v1, Landroid/support/v7/widget/d$b;->b:I

    if-gt v2, p1, :cond_5

    iget v2, v1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget v2, v1, Landroid/support/v7/widget/d$b;->b:I

    iget v3, v1, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    iget v1, v1, Landroid/support/v7/widget/d$b;->d:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    iget v2, v1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d;->g:Landroid/support/v4/e/k$a;

    invoke-interface {v0}, Landroid/support/v4/e/k$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/d$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/d$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/d$b;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/support/v7/widget/d$b;->a:I

    iput p2, v0, Landroid/support/v7/widget/d$b;->b:I

    iput p3, v0, Landroid/support/v7/widget/d$b;->d:I

    iput-object p4, v0, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->a(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/d;->h:I

    return-void
.end method

.method public a(Landroid/support/v7/widget/d$b;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/widget/d;->g:Landroid/support/v4/e/k$a;

    invoke-interface {v0, p1}, Landroid/support/v4/e/k$a;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/d$b;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/d$a;->a(Landroid/support/v7/widget/d$b;)V

    iget v0, p1, Landroid/support/v7/widget/d$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v1, p1, Landroid/support/v7/widget/d$b;->d:I

    iget-object p1, p1, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroid/support/v7/widget/d$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget p1, p1, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v0, p2, p1}, Landroid/support/v7/widget/d$a;->a(II)V

    :goto_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/d$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/d$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/d;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(III)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/d;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Landroid/support/v7/widget/d;->h:I

    iget-object p1, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/d;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Landroid/support/v7/widget/d;->h:I

    iget-object p1, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/d;->a(II)I

    move-result p1

    return p1
.end method

.method b()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/d;->f:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->a(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    iget v3, v2, Landroid/support/v7/widget/d$b;->a:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->c(Landroid/support/v7/widget/d$b;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->f(Landroid/support/v7/widget/d$b;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->b(Landroid/support/v7/widget/d$b;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/d;->d(Landroid/support/v7/widget/d$b;)V

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/d;->d:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/d;->h:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/d;->h:I

    iget-object p1, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public c(I)I
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/d$b;

    iget v3, v2, Landroid/support/v7/widget/d$b;->a:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-gt v3, p1, :cond_4

    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    iget v4, v2, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v2, v2, Landroid/support/v7/widget/d$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_1

    :pswitch_1
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-gt v3, p1, :cond_4

    iget v2, v2, Landroid/support/v7/widget/d$b;->d:I

    add-int/2addr p1, v2

    goto :goto_1

    :cond_1
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-ne v3, p1, :cond_2

    iget p1, v2, Landroid/support/v7/widget/d$b;->d:I

    goto :goto_1

    :cond_2
    iget v3, v2, Landroid/support/v7/widget/d$b;->b:I

    if-ge v3, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v2, v2, Landroid/support/v7/widget/d$b;->d:I

    if-gt v2, p1, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget-object v4, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/d$b;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/d$a;->b(Landroid/support/v7/widget/d$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->a(Ljava/util/List;)V

    iput v1, p0, Landroid/support/v7/widget/d;->h:I

    return-void
.end method

.method c(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Landroid/support/v7/widget/d;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/d$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroid/support/v7/widget/d;->h:I

    or-int/2addr p1, v4

    iput p1, p0, Landroid/support/v7/widget/d;->h:I

    iget-object p1, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method e()V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/d;->c()V

    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/d$b;

    iget v4, v3, Landroid/support/v7/widget/d$b;->a:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/d$a;->b(Landroid/support/v7/widget/d$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v5, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v3, v3, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/d$a;->a(II)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/d$a;->b(Landroid/support/v7/widget/d$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v5, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v3, v3, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/d$a;->c(II)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/d$a;->b(Landroid/support/v7/widget/d$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v5, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v3, v3, Landroid/support/v7/widget/d$b;->d:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/d$a;->d(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/d$a;->b(Landroid/support/v7/widget/d$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/d;->c:Landroid/support/v7/widget/d$a;

    iget v5, v3, Landroid/support/v7/widget/d$b;->b:I

    iget v6, v3, Landroid/support/v7/widget/d$b;->d:I

    iget-object v3, v3, Landroid/support/v7/widget/d$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Landroid/support/v7/widget/d$a;->a(IILjava/lang/Object;)V

    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/d;->d:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->a(Ljava/util/List;)V

    iput v1, p0, Landroid/support/v7/widget/d;->h:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
