.class Lcom/bigkoo/pickerview/e/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bigkoo/pickerview/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/e/b;->a(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/bigkoo/pickerview/e/b;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/e/b;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    iput-object p2, p0, Lcom/bigkoo/pickerview/e/b$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/e/b$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 18

    move-object/from16 v0, p0

    add-int/lit8 v3, p1, 0x1

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v2}, Lcom/bigkoo/pickerview/e/b;->c(Lcom/bigkoo/pickerview/e/b;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v6, v3, -0x1

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v2}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v4, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->f(Lcom/bigkoo/pickerview/e/b;)I

    move-result v7

    :goto_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->g(Lcom/bigkoo/pickerview/e/b;)I

    move-result v8

    :goto_1
    iget-object v9, v0, Lcom/bigkoo/pickerview/e/b$2;->a:Ljava/util/List;

    iget-object v10, v0, Lcom/bigkoo/pickerview/e/b$2;->b:Ljava/util/List;

    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;IIIILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v4, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    goto :goto_4

    :cond_2
    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v2}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v6, v3, -0x1

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    if-ne v6, v1, :cond_3

    :goto_2
    iget-object v4, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->f(Lcom/bigkoo/pickerview/e/b;)I

    move-result v7

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    const/4 v7, 0x1

    :goto_3
    const/16 v8, 0x1f

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    iget-object v2, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v2}, Lcom/bigkoo/pickerview/e/b;->c(Lcom/bigkoo/pickerview/e/b;)I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    if-ne v3, v1, :cond_5

    iget-object v4, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v11, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v11}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v12

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    const/4 v14, 0x1

    const/16 v15, 0x1f

    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->a:Ljava/util/List;

    iget-object v2, v0, Lcom/bigkoo/pickerview/e/b$2;->b:Ljava/util/List;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v11 .. v17}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lcom/bigkoo/pickerview/e/b$2;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->h(Lcom/bigkoo/pickerview/e/b;)I

    move-result v2

    const/4 v4, 0x1

    const/16 v5, 0x1f

    iget-object v6, v0, Lcom/bigkoo/pickerview/e/b$2;->a:Ljava/util/List;

    iget-object v7, v0, Lcom/bigkoo/pickerview/e/b$2;->b:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;IIIILjava/util/List;Ljava/util/List;)V

    :goto_5
    return-void
.end method
