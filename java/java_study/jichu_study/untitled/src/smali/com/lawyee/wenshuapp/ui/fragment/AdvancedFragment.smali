.class public Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

.field private b:I

.field private c:I

.field private d:Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)Lcom/lawyee/wenshuapp/ui/SearchActivity;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    return-object p0
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)I
    .locals 0

    iget p0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->b:I

    return p0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)I
    .locals 0

    iget p0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->c:I

    return p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0c0039

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/lawyee/wenshuapp/ui/SearchActivity;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    const p2, 0x7f090085

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iget-object p3, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p3

    sget-object v0, Lcom/lawyee/wenshuapp/vo/SearchVO;->CSTR_KEY_SPCX:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findIndexWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->b:I

    sget-object v0, Lcom/lawyee/wenshuapp/vo/SearchVO;->CSTR_KEY_AJLX:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findIndexWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->c:I

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->d:Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->d:Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;

    invoke-direct {v0, p0, p3}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;-><init>(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f090086

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090087

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x271a

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "index"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "searchvo"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object p3, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->c:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setLevel(I)V

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->d:Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/SearchVO;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setLevel(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->d:Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/adapter/AdvancedSelAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->m()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090086
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
