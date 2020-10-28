.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$2;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$2;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-static {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->b(Lnet/lawyee/mobilewidget/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$2;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$2;->a()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$2;->a()V

    return-void
.end method
