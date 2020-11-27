.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;
.super Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private d:F

.field private e:F


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->c(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->d:F

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->d(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->e:F

    return-void
.end method

.method public a(FF)V
    .locals 2

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->d()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->e:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    iget p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->d:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    invoke-static {p1, p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;I)I

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->e(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->f(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result p2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->c(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$k;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Z)V

    :goto_0
    return-void
.end method
