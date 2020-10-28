.class Landroid/support/v7/widget/RecyclerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/bb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$v;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$o;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$o;->c(Landroid/support/v7/widget/RecyclerView$v;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$v;->setIsRecyclable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->c(Landroid/support/v7/widget/RecyclerView$v;Landroid/support/v7/widget/RecyclerView$f$c;Landroid/support/v7/widget/RecyclerView$f$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$4;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->p()V

    :cond_1
    return-void
.end method
