.class public Lnet/lawyee/mobilewidget/dslv/a;
.super Lnet/lawyee/mobilewidget/dslv/b;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:Landroid/view/GestureDetector;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field private x:I

.field private y:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;IIIII)V
    .locals 4

    invoke-direct {p0, p1}, Lnet/lawyee/mobilewidget/dslv/b;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->b:Z

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->j:I

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->k:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->l:[I

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->q:Z

    const/high16 v1, 0x43fa0000    # 500.0f

    iput v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->r:F

    new-instance v1, Lnet/lawyee/mobilewidget/dslv/a$1;

    invoke-direct {v1, p0}, Lnet/lawyee/mobilewidget/dslv/a$1;-><init>(Lnet/lawyee/mobilewidget/dslv/a;)V

    iput-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->y:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->f:Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/a;->y:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->g:Landroid/view/GestureDetector;

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->g:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->h:I

    iput p2, p0, Lnet/lawyee/mobilewidget/dslv/a;->s:I

    iput p5, p0, Lnet/lawyee/mobilewidget/dslv/a;->t:I

    iput p6, p0, Lnet/lawyee/mobilewidget/dslv/a;->u:I

    invoke-virtual {p0, p4}, Lnet/lawyee/mobilewidget/dslv/a;->b(I)V

    invoke-virtual {p0, p3}, Lnet/lawyee/mobilewidget/dslv/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lnet/lawyee/mobilewidget/dslv/a;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    return p0
.end method

.method static synthetic a(Lnet/lawyee/mobilewidget/dslv/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    return p1
.end method

.method static synthetic b(Lnet/lawyee/mobilewidget/dslv/a;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    return p0
.end method

.method static synthetic c(Lnet/lawyee/mobilewidget/dslv/a;)Lnet/lawyee/mobilewidget/dslv/DragSortListView;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    return-object p0
.end method

.method static synthetic d(Lnet/lawyee/mobilewidget/dslv/a;)F
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilewidget/dslv/a;->r:F

    return p0
.end method

.method static synthetic e(Lnet/lawyee/mobilewidget/dslv/a;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilewidget/dslv/a;->x:I

    return p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/dslv/a;->c(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;I)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->pointToPosition(II)I

    move-result v0

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/a;->l:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lnet/lawyee/mobilewidget/dslv/a;->l:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v2, v6, :cond_1

    const/4 v6, 0x1

    aget v7, v3, v6

    if-le p1, v7, :cond_1

    aget v3, v3, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->l:[I

    aget v2, v2, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->n:I

    return v0

    :cond_1
    return v4
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->a:I

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    if-eqz p1, :cond_0

    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->x:I

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->b:Z

    return-void
.end method

.method public a(III)Z
    .locals 3

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1, v0, p2, p3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(IIII)Z

    move-result p1

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->q:Z

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->q:Z

    return p1
.end method

.method public b(Landroid/view/MotionEvent;)I
    .locals 2

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/dslv/a;->d(Landroid/view/MotionEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)I
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->s:I

    invoke-virtual {p0, p1, v0}, Lnet/lawyee/mobilewidget/dslv/a;->a(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public d(Landroid/view/MotionEvent;)I
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->u:I

    invoke-virtual {p0, p1, v0}, Lnet/lawyee/mobilewidget/dslv/a;->a(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->t:I

    invoke-virtual {p0, p1, v0}, Lnet/lawyee/mobilewidget/dslv/a;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->k:I

    :cond_0
    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/dslv/a;->a(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->a:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->m:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lnet/lawyee/mobilewidget/dslv/a;->n:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lnet/lawyee/mobilewidget/dslv/a;->a(III)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->v:Z

    iput v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->x:I

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/dslv/a;->b(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->j:I

    return v1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->performHapticFeedback(I)Z

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->o:I

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->m:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->p:I

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->n:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lnet/lawyee/mobilewidget/dslv/a;->a(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->m:I

    sub-int v0, p4, v0

    iget v1, p0, Lnet/lawyee/mobilewidget/dslv/a;->n:I

    sub-int v1, p2, v1

    iget-boolean v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->v:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->q:Z

    if-nez v2, :cond_4

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->j:I

    if-eq v2, v4, :cond_4

    :cond_0
    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->a:I

    if-ne v2, v5, :cond_1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lnet/lawyee/mobilewidget/dslv/a;->h:I

    if-le p1, p2, :cond_1

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->b:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->i:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->a:I

    if-eqz p1, :cond_4

    sub-int/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lnet/lawyee/mobilewidget/dslv/a;->h:I

    if-le p1, p2, :cond_4

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_2
    iget v2, p0, Lnet/lawyee/mobilewidget/dslv/a;->j:I

    if-eq v2, v4, :cond_4

    sub-int/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lnet/lawyee/mobilewidget/dslv/a;->h:I

    if-le p3, p4, :cond_3

    iget-boolean p3, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz p3, :cond_3

    :goto_0
    iput-boolean v5, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->j:I

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lnet/lawyee/mobilewidget/dslv/a;->a(III)Z

    goto :goto_2

    :cond_3
    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lnet/lawyee/mobilewidget/dslv/a;->h:I

    if-le p1, p2, :cond_4

    iput-boolean v3, p0, Lnet/lawyee/mobilewidget/dslv/a;->v:Z

    :cond_4
    :goto_2
    return v3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->c:I

    if-nez p1, :cond_0

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->k:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->c()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->f:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->q:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->c:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->g:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->d:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->x:I

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    neg-int p1, p1

    :goto_0
    iget-object p2, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->w:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(ZF)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->o:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lnet/lawyee/mobilewidget/dslv/a;->p:I

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->e:Z

    iput-boolean v0, p0, Lnet/lawyee/mobilewidget/dslv/a;->q:Z

    :cond_4
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
