.class public Lnet/lawyee/mobilewidget/ExViewFlipper;
.super Landroid/widget/ViewFlipper;


# instance fields
.field private a:Lnet/lawyee/mobilewidget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/ExViewFlipper;->a:Lnet/lawyee/mobilewidget/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/ExViewFlipper;->a:Lnet/lawyee/mobilewidget/a;

    return-void
.end method


# virtual methods
.method public setDisplayedChild(I)V
    .locals 2

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/ExViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    iget-object v1, p0, Lnet/lawyee/mobilewidget/ExViewFlipper;->a:Lnet/lawyee/mobilewidget/a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lnet/lawyee/mobilewidget/a;->a(II)V

    :cond_0
    return-void
.end method

.method public setOnDisplayerChildChangeListener(Lnet/lawyee/mobilewidget/a;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/ExViewFlipper;->a:Lnet/lawyee/mobilewidget/a;

    return-void
.end method
