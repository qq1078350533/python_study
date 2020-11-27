.class public Lcom/lawyee/wenshuapp/ui/ListActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# instance fields
.field private k:Lcom/lawyee/wenshuapp/vo/SearchVO;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ListView;

.field private p:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private s:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/WenShuListVO;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/ListActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/ListActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/WenShuListVO;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->q()V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->v:Z

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->s:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/ListActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->o()V

    return-void
.end method

.method static synthetic e(Lcom/lawyee/wenshuapp/ui/ListActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/lawyee/wenshuapp/ui/ListActivity;)I
    .locals 2

    iget v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->u:I

    return v0
.end method

.method static synthetic g(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->p()V

    return-void
.end method

.method static synthetic h(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->q()V

    return-void
.end method

.method static synthetic i(Lcom/lawyee/wenshuapp/ui/ListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/lawyee/wenshuapp/ui/ListActivity;)I
    .locals 2

    iget v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->u:I

    return v0
.end method

.method private n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->v:Z

    return v0
.end method

.method private o()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->u:I

    new-instance v0, Lcom/lawyee/wenshuapp/a/b;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/a/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/Boolean;)V

    const-string v2, "\u6b63\u5728\u8f7d\u5165..."

    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/a/b;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->generateCondition(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/lawyee/wenshuapp/ui/ListActivity$3;

    invoke-direct {v3, p0}, Lcom/lawyee/wenshuapp/ui/ListActivity$3;-><init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    const/16 v4, 0x14

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/util/List;IILcom/lawyee/wenshuapp/a/a$a;)V

    return-void
.end method

.method private p()V
    .locals 5

    new-instance v0, Lcom/lawyee/wenshuapp/a/b;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/a/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->generateCondition(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->u:I

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/lawyee/wenshuapp/ui/ListActivity$4;

    invoke-direct {v3, p0}, Lcom/lawyee/wenshuapp/ui/ListActivity$4;-><init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/util/List;IILcom/lawyee/wenshuapp/a/a$a;)V

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->s:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->s:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->s:Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->t:Ljava/util/List;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->setData(Ljava/util/List;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private r()Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;
    .locals 1

    new-instance v0, Lcom/lawyee/wenshuapp/ui/ListActivity$5;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/ListActivity$5;-><init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "searchvo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    const-string v0, "parentissearch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->m:Ljava/lang/Boolean;

    const p1, 0x7f090028

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->n:Landroid/view/View;

    const p1, 0x7f090029

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->o:Landroid/widget/ListView;

    new-instance p1, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->r()Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;-><init>(Landroid/content/Context;Lcom/lawyee/wenshuapp/vo/SearchVO;Lcom/lawyee/wenshuapp/adapter/SearchListAdapter$SearchVOChangeListener;)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->p:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->o:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->p:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f090027

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->q:Landroid/widget/ImageView;

    const p1, 0x7f09002a

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->m()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/ListActivity$1;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/ListActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    invoke-virtual {p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->o()V

    return-void
.end method

.method public a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 3

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    const-string v0, "\u5168\u6587\u68c0\u7d22"

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOListWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->l:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, p1, v0

    return-void
.end method

.method public m()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/lawyee/wenshuapp/ui/ListActivity$2;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/ListActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x271b

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "searchvo"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->p:Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/adapter/SearchListAdapter;->setData(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    :cond_0
    const-string p1, "parentissearch"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->m:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->o()V

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onShowSearch(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->onHomeClick(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "searchvo"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "parentislist"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x271b

    invoke-virtual {p0, p1, v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onShowSearchList(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->n:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->n:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f080078

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->n:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f080076

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
