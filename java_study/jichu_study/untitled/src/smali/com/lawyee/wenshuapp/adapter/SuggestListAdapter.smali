.class public Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;,
        Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;
    }
.end annotation


# instance fields
.field private mAllData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SuggestVO;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SuggestVO;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;

.field private onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SuggestVO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mAllData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mAllData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mData:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 4

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SuggestListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mFilter:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;-><init>(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mFilter:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mFilter:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$SuggestFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mData:Ljava/util/List;

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

.method public getOnRecyclerItemClickListener()Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0044

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900b5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0900b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->getSortIndex()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;

    invoke-direct {p3, p0, p1, v1}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$1;-><init>(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;ILcom/lawyee/wenshuapp/vo/SuggestVO;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SuggestVO;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->mAllData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnRecyclerItemClickListener(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;

    return-void
.end method
