.class public Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/WenShuListVO;",
            ">;"
        }
    .end annotation
.end field

.field private mKeywords:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/WenShuListVO;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mData:Ljava/util/List;

    iput-object p3, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mKeywords:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mKeywords:[Ljava/lang/String;

    return-object p0
.end method

.method private buildHolder(Landroid/view/View;)Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;
    .locals 2

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0900b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCaseName:Landroid/widget/TextView;

    const v1, 0x7f0900b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCourtName:Landroid/widget/TextView;

    const v1, 0x7f0900b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCaseno:Landroid/widget/TextView;

    const v1, 0x7f0900ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvPublicdate:Landroid/widget/TextView;

    const v1, 0x7f0900be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->vRelate:Landroid/view/View;

    const v1, 0x7f0900bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvRelate1:Landroid/widget/TextView;

    const v1, 0x7f0900bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvRelate2:Landroid/widget/TextView;

    const v1, 0x7f0900bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvRelate3:Landroid/widget/TextView;

    return-object v0
.end method

.method private static setTextViewKeyWordRed(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    if-eqz v0, :cond_4

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    invoke-static {v3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    :goto_1
    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x10000

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v5, v4

    const/16 v8, 0x21

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0c0045

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->buildHolder(Landroid/view/View;)Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p3, v0

    :goto_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCaseName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCasename()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v0, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCaseName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCasename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mKeywords:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->setTextViewKeyWordRed(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCourtName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCourtname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvCaseno:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCaseno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvPublicdate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getJudgmentdate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getRelatewenshus()Ljava/util/ArrayList;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v1, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->vRelate:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v3, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvRelate1:Landroid/widget/TextView;

    aput-object v3, v1, v2

    iget-object v3, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvRelate2:Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    iget-object p3, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->tvRelate3:Landroid/widget/TextView;

    aput-object p3, v1, v3

    move p3, v2

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_4

    array-length v3, v1

    if-ge p3, v3, :cond_4

    aget-object v3, v1, p3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCasetype()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lawyee/wenshuapp/vo/Jiean;->findJieanuWithId(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/Jiean;

    move-result-object v3

    aget-object v4, v1, p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v6}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getCaseno()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v6}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getJudgmentdate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/Jiean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getWenshuid()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, p3

    new-instance v6, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;

    invoke-direct {v6, p0, v4, v3}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$1;-><init>(Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;Ljava/lang/String;Lcom/lawyee/wenshuapp/vo/WenShuListVO;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    array-length p3, v1

    if-ge p1, p3, :cond_6

    aget-object p3, v1, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object p1, p3, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter$ViewHolder;->vRelate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-object p2
.end method

.method public setData(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/WenShuListVO;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mData:Ljava/util/List;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->mKeywords:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->notifyDataSetChanged()V

    return-void
.end method
