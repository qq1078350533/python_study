.class public Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;,
        Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;

.field private mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lawyee/wenshuapp/vo/SearchVO;Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iput-object p3, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mListener:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->delSearchList(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void
.end method

.method private buildHolder(Landroid/view/View;)Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;
    .locals 2

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0900b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;->tvKey:Landroid/widget/TextView;

    const v1, 0x7f0900b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;->tvValue:Landroid/widget/TextView;

    return-object v0
.end method

.method private delSearchList(Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mListener:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;->onChange()V

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSearchVO()Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0042

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->buildHolder(Landroid/view/View;)Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p3, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v0, p3, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;->tvKey:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$ViewHolder;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$1;-><init>(Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setData(Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->mSearchVO:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->notifyDataSetChanged()V

    return-void
.end method
