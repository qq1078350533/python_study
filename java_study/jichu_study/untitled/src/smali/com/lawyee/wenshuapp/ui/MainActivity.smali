.class public Lcom/lawyee/wenshuapp/ui/MainActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# static fields
.field private static final l:Ljava/lang/String; = "MainActivity"


# instance fields
.field k:[Ljava/lang/String;

.field private m:Landroid/app/Dialog;

.field private n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

.field private o:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/lawyee/wenshuapp/widget/a;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/content/Context;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcom/lawyee/wenshuapp/widget/a$a;

.field private w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    const-string v0, "\u7ba1\u8f96\u6848\u4ef6"

    const-string v1, "\u533a\u9645\u53f8\u6cd5\u534f\u52a9"

    const-string v2, "\u56fd\u9645\u53f8\u6cd5\u534f\u52a9"

    const-string v3, "\u975e\u8bc9\u4fdd\u5168"

    const-string v4, "\u53f8\u6cd5\u5236\u88c1"

    const-string v5, "\u5f3a\u5236\u6e05\u7b97\u4e0e\u7834\u4ea7"

    const-string v6, "\u5176\u4ed6"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->k:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;Lcom/lawyee/wenshuapp/vo/WsCountVo;)Lcom/lawyee/wenshuapp/vo/WsCountVo;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->q()V

    const v0, 0x7f090094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/widget/MyGridLayoutManager;->c(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v0, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->s:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->t:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    new-instance v1, Lcom/lawyee/wenshuapp/ui/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/MainActivity$7;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/adapter/GridViewAdapter;->setOnRecyclerItemClickListener(Lcom/lawyee/wenshuapp/adapter/GridViewAdapter$OnRecyclerItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->t:Landroid/content/Context;

    const/16 v1, 0xd0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/lawyee/wenshuapp/widget/b;->a(Landroid/content/Context;II)Lcom/lawyee/wenshuapp/widget/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->t:Landroid/content/Context;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/lawyee/wenshuapp/widget/b;->b(Landroid/content/Context;II)Lcom/lawyee/wenshuapp/widget/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->n()V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/MainActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "searchvo"

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v2

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/lawyee/wenshuapp/vo/SearchVO;->generateSearch(Lcom/lawyee/wenshuapp/vo/SearchVO;Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/util/List;Ljava/util/List;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    new-instance v2, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-direct {v2, v1, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;-><init>([I[I)V

    iput-object v2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    :cond_0
    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f09003a

    const v2, 0x7f090039

    const v3, 0x7f090033

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAJLXS(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {v0, v4}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeViewResIds(I)I

    move-result v0

    aget-object v5, p1, v4

    if-eqz p2, :cond_1

    const-string v6, "\u52a0\u8f7d\u4e2d..."

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    invoke-direct {p0, v0, v5, v6}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {v0, v4}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeAddViewResId(I)I

    move-result v0

    aget-object v5, p1, v4

    if-eqz p2, :cond_2

    const-string v6, "\u52a0\u8f7d\u4e2d..."

    goto :goto_2

    :cond_2
    const-string v6, ""

    :goto_2
    invoke-direct {p0, v0, v5, v6}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string p1, ""

    if-eqz p2, :cond_4

    const-string v0, "\u52a0\u8f7d\u4e2d..."

    goto :goto_3

    :cond_4
    const-string v0, ""

    :goto_3
    invoke-direct {p0, v3, p1, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    if-eqz p2, :cond_5

    const-string v0, "\u52a0\u8f7d\u4e2d..."

    goto :goto_4

    :cond_5
    const-string v0, ""

    :goto_4
    invoke-direct {p0, v2, p1, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    if-eqz p2, :cond_6

    const-string p2, "\u52a0\u8f7d\u4e2d..."

    goto :goto_5

    :cond_6
    const-string p2, ""

    :goto_5
    invoke-direct {p0, v1, p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-static {p1}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->checkError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, ""

    invoke-direct {p0, p1, v4}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Ljava/lang/String;Z)V

    return-void

    :cond_8
    invoke-static {p0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAJLXS(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {p2, v4}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeAddViewResId(I)I

    move-result p2

    aget-object v0, p1, v4

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_txsaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, ""

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_txsaj()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-direct {p0, p2, v0, v5}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {p2, v4}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeViewResIds(I)I

    move-result p2

    aget-object v0, p1, v4

    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_xsaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ""

    goto :goto_7

    :cond_a
    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_xsaj()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-direct {p0, p2, v0, v4}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeAddViewResId(I)I

    move-result p2

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_tmsaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, ""

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_tmsaj()Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-direct {p0, p2, v4, v5}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeViewResIds(I)I

    move-result p2

    aget-object v0, p1, v0

    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_msaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, ""

    goto :goto_9

    :cond_c
    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_msaj()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-direct {p0, p2, v0, v4}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeAddViewResId(I)I

    move-result p2

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_txzaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, ""

    goto :goto_a

    :cond_d
    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_txzaj()Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-direct {p0, p2, v4, v5}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeViewResIds(I)I

    move-result p2

    aget-object v0, p1, v0

    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_xzaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, ""

    goto :goto_b

    :cond_e
    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_xzaj()Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-direct {p0, p2, v0, v4}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeAddViewResId(I)I

    move-result p2

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_tpcaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, ""

    goto :goto_c

    :cond_f
    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_tpcaj()Ljava/lang/String;

    move-result-object v5

    :goto_c
    invoke-direct {p0, p2, v4, v5}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeViewResIds(I)I

    move-result p2

    aget-object v0, p1, v0

    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_pcaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, ""

    goto :goto_d

    :cond_10
    iget-object v4, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_pcaj()Ljava/lang/String;

    move-result-object v4

    :goto_d
    invoke-direct {p0, p2, v0, v4}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeAddViewResId(I)I

    move-result p2

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_tzxaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, ""

    goto :goto_e

    :cond_11
    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v5}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_tzxaj()Ljava/lang/String;

    move-result-object v5

    :goto_e
    invoke-direct {p0, p2, v4, v5}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->n:Lcom/lawyee/wenshuapp/vo/WenShuCountVO;

    invoke-virtual {p2, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getTypeViewResIds(I)I

    move-result p2

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_zxaj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ""

    goto :goto_f

    :cond_12
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_zxaj()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-direct {p0, p2, p1, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_taj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ""

    goto :goto_10

    :cond_13
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_T_taj()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u7bc7"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v3, p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, ""

    goto :goto_11

    :cond_14
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWS_C_aj()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u7bc7"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWZ_Z_zfwl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, ""

    goto :goto_12

    :cond_15
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->w:Lcom/lawyee/wenshuapp/vo/WsCountVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/WsCountVo;->getWZ_Z_zfwl()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6b21"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void

    nop

    :array_0
    .array-data 4
        0x7f090034
        0x7f090035
        0x7f090036
        0x7f090037
        0x7f090038
    .end array-data

    :array_1
    .array-data 4
        0x7f09002e
        0x7f09002f
        0x7f090030
        0x7f090031
        0x7f090032
    .end array-data
.end method

.method private a(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/lawyee/wenshuapp/a/b;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/a/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/lawyee/wenshuapp/ui/MainActivity$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity$4;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;ZZ)V

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/a/b;->b(Lcom/lawyee/wenshuapp/a/a$b;)V

    return-void
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->o:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object p0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/MainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->t:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/lawyee/wenshuapp/ui/MainActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/lawyee/wenshuapp/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->q()V

    return-void
.end method

.method static synthetic f(Lcom/lawyee/wenshuapp/ui/MainActivity;)Lcom/lawyee/wenshuapp/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->r:Lcom/lawyee/wenshuapp/widget/a;

    return-object p0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lawyee/wenshuapp/ui/MainActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f0001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->m:Landroid/app/Dialog;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->m:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lnet/lawyee/mobilelib/b/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private o()V
    .locals 2

    new-instance v0, Lcom/lawyee/wenshuapp/a/b;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/a/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/lawyee/wenshuapp/ui/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/MainActivity$5;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/a/b;->c(Lcom/lawyee/wenshuapp/a/a$b;)V

    return-void
.end method

.method private p()V
    .locals 8

    new-instance v0, Lcom/lawyee/wenshuapp/widget/a$a;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Lcom/lawyee/wenshuapp/widget/a$a;-><init>(I)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->v:Lcom/lawyee/wenshuapp/widget/a$a;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/MainActivity$6;

    const v5, 0x7f0c005b

    const/4 v6, -0x1

    const/4 v7, -0x2

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/lawyee/wenshuapp/ui/MainActivity$6;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->r:Lcom/lawyee/wenshuapp/widget/a;

    return-void
.end method

.method private q()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->s:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->k:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->s:Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    const p1, 0x7f0c0023

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->t:Landroid/content/Context;

    const p1, 0x7f090021

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->o:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    const p1, 0x7f0900a9

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->p:Landroid/widget/ImageView;

    const p1, 0x7f0900c3

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->q:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->o:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const p1, 0x7f090040

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->u:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->o:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/MainActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$d;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(ZZ)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->o()V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->q:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/MainActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->p:Landroid/widget/ImageView;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/MainActivity$3;-><init>(Lcom/lawyee/wenshuapp/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->p()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->x:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->x:J

    const v0, 0x7f0e0142

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onDataClick(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAjlxFull(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v1

    const-string v2, "\u6848\u4ef6\u7c7b\u578b"

    invoke-static {v1, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getAJLXStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v1

    const-string v2, "\u4e0a\u7f51\u65f6\u95f4"

    invoke-static {v1, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-static {v2, v3}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setList(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09002e
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMZYYClick(Landroid/view/View;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f0e0157

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0e0156

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0e0155

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0e0154

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0e0153

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->m:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f090074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onModuleClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f090040

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->r:Lcom/lawyee/wenshuapp/widget/a;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lawyee/wenshuapp/ui/MainActivity;->v:Lcom/lawyee/wenshuapp/widget/a$a;

    invoke-virtual {p1, v0, v2, v1, v1}, Lcom/lawyee/wenshuapp/widget/a;->a(Landroid/view/View;Lcom/lawyee/wenshuapp/widget/a$a;II)V

    return-void

    :cond_0
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f()Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    const-string v2, "\u6848\u4ef6\u7c7b\u578b"

    invoke-static {v0, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "\u65e0\u6548\u6570\u636e\u6587\u4ef6"

    invoke-static {p0, p1}, Lcom/lawyee/wenshuapp/util/k;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x4

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object p1

    aget-object v1, v2, v1

    :goto_0
    invoke-static {p1, v1}, Lcom/lawyee/wenshuapp/vo/Cls;->getAJLXStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/lawyee/wenshuapp/ui/MainActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f09003b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowSearch(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
