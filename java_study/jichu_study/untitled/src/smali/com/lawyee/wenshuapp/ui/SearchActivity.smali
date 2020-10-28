.class public Lcom/lawyee/wenshuapp/ui/SearchActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# instance fields
.field private k:Lcom/lawyee/wenshuapp/vo/SearchVO;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/AutoCompleteTextView;

.field private r:Lcom/lawyee/wenshuapp/a/b;

.field private s:Ljava/lang/String;

.field private t:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/SearchActivity;Lcom/lawyee/wenshuapp/a/b;)Lcom/lawyee/wenshuapp/a/b;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->r:Lcom/lawyee/wenshuapp/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/lawyee/wenshuapp/vo/SearchVO;Z)V
    .locals 3

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->generateSearch(Lcom/lawyee/wenshuapp/vo/SearchVO;Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/util/List;Ljava/util/List;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u67e5\u8be2\u6761\u4ef6"

    invoke-static {p0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/lawyee/wenshuapp/util/i;->a(Landroid/content/Context;)Lcom/lawyee/wenshuapp/util/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/util/i;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "searchvo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "parentissearch"

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    return-object p0
.end method

.method private b(Lcom/lawyee/wenshuapp/vo/SearchVO;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v3

    move-object v4, v2

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findIndexWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->t:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    return-object p0
.end method

.method static synthetic e(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/a/b;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->r:Lcom/lawyee/wenshuapp/a/b;

    return-object p0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->n:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m:Landroid/view/View;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/util/e;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->n:Landroid/view/View;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    const p1, 0x7f0c0024

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->setContentView(I)V

    const p1, 0x7f090116

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->n:Landroid/view/View;

    const p1, 0x7f090117

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m:Landroid/view/View;

    const p1, 0x7f09010b

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->p:Landroid/view/View;

    const p1, 0x7f090113

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->o:Landroid/view/View;

    const p1, 0x7f09011a

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/d;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lnet/lawyee/mobilelib/b/d;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p1, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->t:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->q:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->t:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->t:Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;-><init>(Lcom/lawyee/wenshuapp/ui/SearchActivity;)V

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->setOnRecyclerItemClickListener(Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "searchvo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->b(Lcom/lawyee/wenshuapp/vo/SearchVO;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parentislist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->l:Z

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->f()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()Landroid/support/v4/app/k;

    move-result-object v0

    new-instance v1, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;

    invoke-direct {v1}, Lcom/lawyee/wenshuapp/ui/fragment/HistoryFragment;-><init>()V

    const v2, 0x7f090112

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/k;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/k;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    invoke-direct {v1}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;-><init>()V

    const v2, 0x7f09010a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/k;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->b()I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->n:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->onSel(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 3

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->generateSearch(Lcom/lawyee/wenshuapp/vo/SearchVO;Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/util/List;Ljava/util/List;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u67e5\u8be2\u6761\u4ef6"

    invoke-static {p0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/lawyee/wenshuapp/util/i;->a(Landroid/content/Context;)Lcom/lawyee/wenshuapp/util/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/util/i;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "searchvo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Landroid/content/Context;Lcom/lawyee/wenshuapp/vo/SearchVO;Z)V

    :goto_0
    return-void
.end method

.method public m()Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getShowSearchVO(Lcom/lawyee/wenshuapp/vo/SearchVO;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    return-object v0
.end method

.method public onChanel(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->finish()V

    return-void
.end method

.method public onSearch(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void
.end method

.method public onSel(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->n()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->o()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090116
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
