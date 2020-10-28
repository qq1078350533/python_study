.class public Lnet/lawyee/mobilewidget/SubChannelTabView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lnet/lawyee/mobilelib/vo/BaseVO;

.field private b:I

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/lawyee/mobilewidget/SubChannelTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lnet/lawyee/mobilewidget/c$c;->widget_subchannel_tab:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lnet/lawyee/mobilewidget/c$b;->subchannel_tab_icon:I

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/SubChannelTabView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->e:Landroid/widget/ImageView;

    sget p1, Lnet/lawyee/mobilewidget/c$b;->subchannel_tab_text:I

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilewidget/SubChannelTabView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getDataVO()Lnet/lawyee/mobilelib/vo/BaseVO;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->a:Lnet/lawyee/mobilelib/vo/BaseVO;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->b:I

    return v0
.end method

.method public getTabImg()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTabTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmMinwidth()I
    .locals 1

    iget v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->c:I

    return v0
.end method

.method public setDataVO(Lnet/lawyee/mobilelib/vo/BaseVO;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->a:Lnet/lawyee/mobilelib/vo/BaseVO;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->b:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/lawyee/mobilewidget/SubChannelTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    sget p1, Lnet/lawyee/mobilewidget/c$a;->subchanneltab_sel_textcolor:I

    goto :goto_0

    :cond_0
    sget p1, Lnet/lawyee/mobilewidget/c$a;->subchanneltab_textcolor:I

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTabImg(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->e:Landroid/widget/ImageView;

    return-void
.end method

.method public setTabText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setmMinwidth(I)V
    .locals 0

    iput p1, p0, Lnet/lawyee/mobilewidget/SubChannelTabView;->c:I

    return-void
.end method
