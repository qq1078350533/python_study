.class public Lnet/lawyee/mobilewidget/MoreButton;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/lawyee/mobilewidget/MoreButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lnet/lawyee/mobilewidget/c$c;->widget_morebutton:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 2

    sget v0, Lnet/lawyee/mobilewidget/c$b;->morebutton_tv:I

    invoke-virtual {p0, v0}, Lnet/lawyee/mobilewidget/MoreButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/lawyee/mobilewidget/MoreButton;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lnet/lawyee/mobilewidget/c$b;->morebotton_pb:I

    invoke-virtual {p0, v0}, Lnet/lawyee/mobilewidget/MoreButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lnet/lawyee/mobilewidget/MoreButton;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setShowButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/MoreButton;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/MoreButton;->b:Z

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/MoreButton;->a()V

    return-void
.end method

.method public setShowProgress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/MoreButton;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/lawyee/mobilewidget/MoreButton;->b:Z

    invoke-direct {p0}, Lnet/lawyee/mobilewidget/MoreButton;->a()V

    return-void
.end method
