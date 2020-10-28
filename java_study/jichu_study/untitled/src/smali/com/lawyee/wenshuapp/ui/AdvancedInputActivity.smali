.class public Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# instance fields
.field private k:Lcom/lawyee/wenshuapp/vo/SearchVO;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Cls;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/unnamed/b/atv/view/AndroidTreeView;

.field private w:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private A()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "index"

    iget v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "searchvo"

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->onHomeClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->w:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Lcom/unnamed/b/atv/view/AndroidTreeView;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    return-object p0
.end method

.method static synthetic e(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->u:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    return-object p0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "\u6cd5\u5f8b\u4f9d\u636e"

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    const-string v1, "\u4f8b\u5982:\u8bf7\u8f93\u5165\u300a\u4e2d\u534e\u4eba\u6c11\u5171\u548c\u56fd\u6c11\u4e8b\u8bc9\u8bbc\u6cd5\u300b\u7b2c\u4e00\u6761"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/Cls;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Cls;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$1;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$2;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private q()V
    .locals 7

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/unnamed/b/atv/model/TreeNode;->root()Lcom/unnamed/b/atv/model/TreeNode;

    move-result-object v0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lawyee/wenshuapp/vo/Spcx;->getSubListWithAJLX(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/Spcx;

    new-instance v5, Lcom/unnamed/b/atv/model/TreeNode;

    new-instance v6, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    invoke-direct {v6, v3, v4}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;-><init>(Lnet/lawyee/mobilelib/vo/BaseVO;Z)V

    invoke-direct {v5, v6}, Lcom/unnamed/b/atv/model/TreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-direct {v2, p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;-><init>(Landroid/content/Context;Lcom/unnamed/b/atv/model/TreeNode;)V

    iput-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultAnimation(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    const v1, 0x7f0f019c

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultContainerStyle(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    const-class v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultViewHolder(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$3;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$3;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultNodeClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-virtual {v0, v4}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setSelectionModeEnabled(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private r()V
    .locals 7

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/unnamed/b/atv/model/TreeNode;->root()Lcom/unnamed/b/atv/model/TreeNode;

    move-result-object v0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lawyee/wenshuapp/vo/Anyou;->getSubList(Ljava/util/List;Lcom/lawyee/wenshuapp/vo/Anyou;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/Anyou;

    new-instance v5, Lcom/unnamed/b/atv/model/TreeNode;

    new-instance v6, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    invoke-direct {v6, v3, v4}, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;-><init>(Lnet/lawyee/mobilelib/vo/BaseVO;Z)V

    invoke-direct {v5, v6}, Lcom/unnamed/b/atv/model/TreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lcom/unnamed/b/atv/model/TreeNode;->addChild(Lcom/unnamed/b/atv/model/TreeNode;)Lcom/unnamed/b/atv/model/TreeNode;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-direct {v2, p0, v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;-><init>(Landroid/content/Context;Lcom/unnamed/b/atv/model/TreeNode;)V

    iput-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultAnimation(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    const v1, 0x7f0f019c

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultContainerStyle(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    const-class v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder;

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultViewHolder(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$4;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$4;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setDefaultNodeClickListener(Lcom/unnamed/b/atv/model/TreeNode$TreeNodeClickListener;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-virtual {v0, v4}, Lcom/unnamed/b/atv/view/AndroidTreeView;->setSelectionModeEnabled(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    invoke-virtual {v1}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getCls()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/vo/Cls;->getClsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$5;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u6b64\u7c7b\u578b\u65e0\u76f8\u5e94\u9009\u62e9\u9879"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    const-string v1, "\u6b64\u7c7b\u578b\u65e0\u76f8\u5e94\u9009\u62e9\u9879"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u9009\u62e9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u8f93\u5165"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u9009\u62e9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u8f93\u5165"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u9009\u62e9\u5f00\u59cb\u65e5\u671f\u6216\u7ed3\u675f\u65e5\u671f"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v3, v2}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u6709\u6548\u5f00\u59cb\u65e5\u671f\u6216\u7ed3\u675f\u65e5\u671f"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_2

    const-string v0, "\u7ed3\u675f\u65e5\u671f\u4e0d\u80fd\u5c0f\u4e8e\u5f00\u59cb\u65e5\u671f"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "\u5f00\u59cb\u65e5\u671f\u4e0d\u80fd\u5927\u4e8e\u5f53\u524d\u65e5\u671f"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void
.end method

.method private y()V
    .locals 4

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    iget-object v2, v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    instance-of v2, v2, Lcom/lawyee/wenshuapp/vo/Anyou;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    check-cast v1, Lcom/lawyee/wenshuapp/vo/Anyou;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setLevel(I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "\u8bf7\u9009\u62e9\u6848\u7531"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v:Lcom/unnamed/b/atv/view/AndroidTreeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/unnamed/b/atv/view/AndroidTreeView;->getSelected()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unnamed/b/atv/model/TreeNode;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;

    iget-object v2, v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    instance-of v2, v2, Lcom/lawyee/wenshuapp/vo/Spcx;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v1, Lcom/lawyee/wenshuapp/adapter/IconTreeItemHolder$IconTreeItem;->text:Lnet/lawyee/mobilelib/vo/BaseVO;

    check-cast v1, Lcom/lawyee/wenshuapp/vo/Spcx;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Spcx;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Spcx;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/unnamed/b/atv/model/TreeNode;->getLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setLevel(I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "\u8bf7\u9009\u62e9\u5ba1\u5224\u7a0b\u5e8f"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    new-instance v0, Lcom/bigkoo/pickerview/TimePickerView$a;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity$6;-><init>(Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;Landroid/widget/TextView;)V

    invoke-direct {v0, p1, v1}, Lcom/bigkoo/pickerview/TimePickerView$a;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/TimePickerView$b;)V

    sget-object p1, Lcom/bigkoo/pickerview/TimePickerView$Type;->YEAR_MONTH_DAY:Lcom/bigkoo/pickerview/TimePickerView$Type;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(Lcom/bigkoo/pickerview/TimePickerView$Type;)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->b(Ljava/lang/String;)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(Ljava/lang/String;)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->b(I)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(I)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->b(Z)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->a(Z)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->c(I)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView$a;->c(Z)Lcom/bigkoo/pickerview/TimePickerView$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/TimePickerView$a;->a()Lcom/bigkoo/pickerview/TimePickerView;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bigkoo/pickerview/TimePickerView;->a(Ljava/util/Calendar;)V

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/TimePickerView;->f()V

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->setResult(I)V

    iput-object p0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->w:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "searchvo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/SearchVO;

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ajlx"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->l:I

    const p1, 0x7f09000a

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->n:Landroid/view/View;

    const p1, 0x7f090009

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p:Landroid/widget/EditText;

    const p1, 0x7f090006

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q:Landroid/widget/EditText;

    const p1, 0x7f090007

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->r:Landroid/view/View;

    const p1, 0x7f09000b

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->s:Landroid/widget/EditText;

    const p1, 0x7f090008

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t:Landroid/widget/EditText;

    const p1, 0x7f09000c

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->t()V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f090023

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->m:Ljava/lang/String;

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8bf7\u5148\u9009\u62e9\u6848\u4ef6\u7c7b\u578b"

    invoke-static {p0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->q()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->r()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->p()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->o()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->n()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->m()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClear(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setLevel(I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->A()V

    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/lawyee/wenshuapp/util/e;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onHomeClick(Landroid/view/View;)V

    return-void
.end method

.method public onOK(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->k:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->z()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->y()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->x()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->w()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->v()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;->u()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
