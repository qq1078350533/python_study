.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field private a:F

.field protected b:J

.field final synthetic c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;FI)V
    .locals 2

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->d:F

    int-to-float p1, p3

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->a:F

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->d:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    mul-float/2addr p3, v1

    div-float p3, v0, p3

    iput p3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->h:F

    iput p3, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->e:F

    sub-float p3, p1, v0

    mul-float/2addr p3, p2

    div-float p2, p1, p3

    iput p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->f:F

    sub-float p1, v0, p1

    div-float/2addr v0, p1

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->g:F

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->d:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->e:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->f:F

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->g:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->h:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    return v1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->i:Z

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->a()V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->i:Z

    return-void
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->a:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    invoke-virtual {p0, v1, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->a(FF)V

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->a(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->a(FF)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$n;->c:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
