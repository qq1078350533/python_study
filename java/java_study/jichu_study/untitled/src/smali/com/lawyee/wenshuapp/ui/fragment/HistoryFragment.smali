.class public Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/lawyee/wenshuapp/util/i;

.field private e:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

.field private f:Lcom/lawyee/wenshuapp/util/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;)Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->e:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void
.end method

.method private a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Landroid/content/Context;Lcom/lawyee/wenshuapp/vo/SearchVO;Z)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0c003a

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a:Landroid/view/View;

    const p2, 0x7f09009a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->c:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->c:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a:Landroid/view/View;

    const p3, 0x7f090099

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/util/i;->a(Landroid/content/Context;)Lcom/lawyee/wenshuapp/util/i;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->d:Lcom/lawyee/wenshuapp/util/i;

    new-instance p1, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->d:Lcom/lawyee/wenshuapp/util/i;

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/util/i;->a()Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->e:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->c:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->e:Lcom/lawyee/wenshuapp/adapter/SearchHistoryAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->c:Landroid/widget/ListView;

    new-instance p2, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$1;

    invoke-direct {p2, p0}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$1;-><init>(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$2;

    invoke-direct {p1, p0}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment$2;-><init>(Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->f:Lcom/lawyee/wenshuapp/util/i$a;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->a:Landroid/view/View;

    return-object p1
.end method

.method public s()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->d:Lcom/lawyee/wenshuapp/util/i;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->f:Lcom/lawyee/wenshuapp/util/i$a;

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/util/i;->a(Lcom/lawyee/wenshuapp/util/i$a;)V

    return-void
.end method

.method public t()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->t()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->d:Lcom/lawyee/wenshuapp/util/i;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;->f:Lcom/lawyee/wenshuapp/util/i$a;

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/util/i;->b(Lcom/lawyee/wenshuapp/util/i$a;)V

    return-void
.end method
