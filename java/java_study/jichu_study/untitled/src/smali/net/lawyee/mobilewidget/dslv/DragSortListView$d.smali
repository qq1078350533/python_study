.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I

.field private f:F

.field private g:J

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->g:J

    iget-wide v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->g:J

    iput-wide v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->c:J

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->h:I

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p1, p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->b:Z

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->h:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public run()V
    .locals 12

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return-void

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v4}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v5}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v6}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v6}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->f(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->r(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v8}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->d(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->f(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v8}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->r(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v8

    iget-object v9, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v9}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->d(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->h:I

    const/4 v9, 0x1

    if-nez v8, :cond_3

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v3, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v4, :cond_2

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return-void

    :cond_2
    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->u(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Lnet/lawyee/mobilewidget/dslv/DragSortListView$c;

    move-result-object v3

    iget-object v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v6}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->s(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v6

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->t(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->c:J

    invoke-interface {v3, v6, v7, v8}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$c;->a(FJ)F

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    sub-int v8, v2, v0

    invoke-virtual {v7, v8}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return-void

    :cond_4
    sub-int/2addr v3, v9

    if-ne v2, v3, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v7, v5, v4

    if-gt v3, v7, :cond_5

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->j:Z

    return-void

    :cond_5
    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->u(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)Lnet/lawyee/mobilewidget/dslv/DragSortListView$c;

    move-result-object v3

    int-to-float v6, v6

    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->v(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v7}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->w(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)F

    move-result v7

    div-float/2addr v6, v7

    iget-wide v7, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->c:J

    invoke-interface {v3, v6, v7, v8}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$c;->a(FJ)F

    move-result v3

    neg-float v3, v3

    :goto_0
    iput v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->i:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->d:J

    iget-wide v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->d:J

    iget-wide v10, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->c:J

    sub-long/2addr v6, v10

    long-to-float v3, v6

    iput v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->f:F

    iget v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->i:F

    iget v6, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->f:F

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->e:I

    iget v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->e:I

    if-ltz v3, :cond_6

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->e:I

    move v2, v0

    goto :goto_1

    :cond_6
    neg-int v5, v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->e:I

    :goto_1
    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->e:I

    add-int/2addr v3, v5

    if-nez v2, :cond_7

    if-le v3, v4, :cond_7

    move v3, v4

    :cond_7
    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v5, v9}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Z)Z

    iget-object v5, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v2, v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->setSelectionFromTop(II)V

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->layoutChildren()V

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->invalidate()V

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v3, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Z)Z

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v3, v2, v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->c(Lnet/lawyee/mobilewidget/dslv/DragSortListView;ILandroid/view/View;Z)V

    iget-wide v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->d:J

    iput-wide v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->c:J

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$d;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
