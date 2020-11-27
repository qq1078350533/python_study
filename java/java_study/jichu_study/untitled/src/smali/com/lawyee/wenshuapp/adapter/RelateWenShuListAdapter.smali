.class public Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private buildHolder(Landroid/view/View;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;
    .locals 2

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0900b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;->tvRelate:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mData:Ljava/util/List;

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

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mData:Ljava/util/List;

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
    .locals 3

    const p3, 0x7f0c0041

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->buildHolder(Landroid/view/View;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p3, v0

    :goto_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;->getS46()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/vo/Jiean;->findJieanuWithId(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/Jiean;

    move-result-object v0

    iget-object p3, p3, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter$ViewHolder;->tvRelate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;->getS7()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;->getS31()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/Jiean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->mData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->notifyDataSetChanged()V

    return-void
.end method
