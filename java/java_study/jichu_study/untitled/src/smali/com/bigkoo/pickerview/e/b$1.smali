.class Lcom/bigkoo/pickerview/e/b$1;
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

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    iput-object p2, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/bigkoo/pickerview/e/b$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    add-int v2, p1, v0

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1, v2}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;I)I

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->c(Lcom/bigkoo/pickerview/e/b;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/a/a;

    iget-object v4, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v4

    iget-object v5, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v5}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result p1

    sub-int/2addr p1, v3

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    add-int v3, p1, v0

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result p1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->f(Lcom/bigkoo/pickerview/e/b;)I

    move-result v4

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->g(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result p1

    if-ne v3, p1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->f(Lcom/bigkoo/pickerview/e/b;)I

    move-result v4

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    new-instance v4, Lcom/bigkoo/pickerview/a/a;

    iget-object v5, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v5}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    invoke-direct {v4, v5, v1}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result p1

    sub-int/2addr p1, v3

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    :cond_4
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    add-int v3, p1, v0

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->d(Lcom/bigkoo/pickerview/e/b;)I

    move-result p1

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->c(Lcom/bigkoo/pickerview/e/b;)I

    move-result v0

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    new-instance v1, Lcom/bigkoo/pickerview/a/a;

    iget-object v4, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v4}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_6

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getAdapter()Lcom/bigkoo/pickerview/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bigkoo/pickerview/a/b;->a()I

    move-result p1

    sub-int/2addr p1, v3

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v0}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    :cond_6
    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->e(Lcom/bigkoo/pickerview/e/b;)I

    move-result p1

    if-ne v3, p1, :cond_2

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    const/4 v4, 0x1

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->g(Lcom/bigkoo/pickerview/e/b;)I

    move-result v5

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object p1

    new-instance v0, Lcom/bigkoo/pickerview/a/a;

    invoke-direct {v0, v3, v1}, Lcom/bigkoo/pickerview/a/a;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/b;)V

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b$1;->c:Lcom/bigkoo/pickerview/e/b;

    invoke-static {v1}, Lcom/bigkoo/pickerview/e/b;->b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result p1

    add-int/2addr v3, p1

    :goto_1
    const/4 v4, 0x1

    :goto_2
    const/16 v5, 0x1f

    :goto_3
    iget-object v6, p0, Lcom/bigkoo/pickerview/e/b$1;->a:Ljava/util/List;

    iget-object v7, p0, Lcom/bigkoo/pickerview/e/b$1;->b:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/e/b;->a(Lcom/bigkoo/pickerview/e/b;IIIILjava/util/List;Ljava/util/List;)V

    return-void
.end method
