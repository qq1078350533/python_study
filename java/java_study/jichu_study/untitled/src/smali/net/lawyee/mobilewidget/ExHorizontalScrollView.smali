.class public Lnet/lawyee/mobilewidget/ExHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;


# instance fields
.field private a:Lnet/lawyee/mobilewidget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/ExHorizontalScrollView;->a:Lnet/lawyee/mobilewidget/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/ExHorizontalScrollView;->a:Lnet/lawyee/mobilewidget/b;

    return-void
.end method


# virtual methods
.method public scrollTo(II)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/ExHorizontalScrollView;->a:Lnet/lawyee/mobilewidget/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/lawyee/mobilewidget/b;->a(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public setOnTouchClick(Lnet/lawyee/mobilewidget/b;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/ExHorizontalScrollView;->a:Lnet/lawyee/mobilewidget/b;

    return-void
.end method
