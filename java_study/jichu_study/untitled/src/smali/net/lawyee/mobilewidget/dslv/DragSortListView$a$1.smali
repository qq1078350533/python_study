.class Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;-><init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

.field final synthetic b:Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;Lnet/lawyee/mobilewidget/dslv/DragSortListView;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;->b:Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;

    iput-object p2, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;->a:Lnet/lawyee/mobilewidget/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;->b:Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a$1;->b:Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;

    invoke-virtual {v0}, Lnet/lawyee/mobilewidget/dslv/DragSortListView$a;->notifyDataSetInvalidated()V

    return-void
.end method
