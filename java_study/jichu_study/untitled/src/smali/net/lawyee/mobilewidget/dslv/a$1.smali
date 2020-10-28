.class Lnet/lawyee/mobilewidget/dslv/a$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilewidget/dslv/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/a;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/dslv/a;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/a;->a(Lnet/lawyee/mobilewidget/dslv/a;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/a;->b(Lnet/lawyee/mobilewidget/dslv/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/a;->c(Lnet/lawyee/mobilewidget/dslv/a;)Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iget-object p4, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p4}, Lnet/lawyee/mobilewidget/dslv/a;->d(Lnet/lawyee/mobilewidget/dslv/a;)F

    move-result p4

    cmpl-float p4, p3, p4

    const/4 v0, 0x1

    if-lez p4, :cond_0

    iget-object p4, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p4}, Lnet/lawyee/mobilewidget/dslv/a;->e(Lnet/lawyee/mobilewidget/dslv/a;)I

    move-result p4

    neg-int p1, p1

    if-le p4, p1, :cond_1

    :goto_0
    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p1}, Lnet/lawyee/mobilewidget/dslv/a;->c(Lnet/lawyee/mobilewidget/dslv/a;)Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a(ZF)Z

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p4}, Lnet/lawyee/mobilewidget/dslv/a;->d(Lnet/lawyee/mobilewidget/dslv/a;)F

    move-result p4

    neg-float p4, p4

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    iget-object p4, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p4}, Lnet/lawyee/mobilewidget/dslv/a;->e(Lnet/lawyee/mobilewidget/dslv/a;)I

    move-result p4

    if-ge p4, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lnet/lawyee/mobilewidget/dslv/a$1;->a:Lnet/lawyee/mobilewidget/dslv/a;

    invoke-static {p1, p2}, Lnet/lawyee/mobilewidget/dslv/a;->a(Lnet/lawyee/mobilewidget/dslv/a;Z)Z

    :cond_2
    return p2
.end method
