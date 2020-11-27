.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;
.super Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;FI)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0, p1, p2, p3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;-><init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;FI)V

    return-void
.end method

.method private e()I
    .locals 4

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->i(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    iget v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->d:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->d:I

    iget v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->e:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->j(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->d()V

    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->g(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->d:I

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->h(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->e:I

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->f:F

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->g:F

    return-void
.end method

.method public a(FF)V
    .locals 3

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->e()I

    move-result p1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->f:F

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v2, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->g:F

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p2

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->f:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getPaddingLeft()I

    move-result p2

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->g:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$g;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->k(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V

    return-void
.end method
