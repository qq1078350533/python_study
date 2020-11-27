.class public Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;,
        Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;)Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOnRecyclerItemClickListener()Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    check-cast p1, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->onBindViewHolder(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p1, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;->rlContent:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$1;-><init>(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;
    .locals 3

    new-instance p2, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$ViewHolder;-><init>(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnRecyclerItemClickListener(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->onRecyclerItemClickListener:Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;

    return-void
.end method
