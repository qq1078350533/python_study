.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;
.super Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;FI)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0, p1, p2, p3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;-><init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;FI)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->g:I

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->g:I

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->h:I

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->l(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->i:I

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->m(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->j:I

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->d:F

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->n(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    iget v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->d:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v3, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;F)F

    goto :goto_1

    :cond_1
    mul-float/2addr v1, v3

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v0

    neg-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0, v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;F)F

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;F)F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->p(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(FF)V
    .locals 10

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result p2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->i:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->n(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->b:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v5

    mul-float/2addr v5, v1

    iget-object v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v6}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v8

    iget-object v9, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v9}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->o(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v9

    cmpl-float v4, v9, v4

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    int-to-float v4, v4

    mul-float/2addr v4, v1

    int-to-float v1, v6

    mul-float/2addr v4, v1

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;F)F

    iget v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->d:F

    add-float/2addr v4, v5

    iput v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->d:F

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v4

    iget v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->d:F

    float-to-int v7, v5

    iput v7, v4, Landroid/graphics/Point;->x:I

    cmpg-float v1, v5, v1

    if-gez v1, :cond_2

    neg-int v1, v6

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->b:J

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {p1, v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->g:I

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    iget v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->i:I

    invoke-static {v4, v5, v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v4

    iput v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->e:F

    :cond_3
    iget v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->e:F

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->g:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->j:I

    iget v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->i:I

    if-eq v0, v4, :cond_6

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    sub-int/2addr v0, p2

    invoke-virtual {v4, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->h:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->j:I

    invoke-static {v0, v2, p2, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->h:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->h:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->f:F

    :cond_5
    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->f:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->h:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$l;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->q(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V

    return-void
.end method
