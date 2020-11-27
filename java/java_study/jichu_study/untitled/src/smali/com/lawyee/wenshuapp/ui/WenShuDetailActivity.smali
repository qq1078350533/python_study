.class public Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Landroid/webkit/WebView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ListView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Ljava/lang/Boolean;

.field private v:Ljava/lang/Boolean;

.field private w:I

.field private x:Landroid/app/Dialog;

.field private y:I

.field private z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->u:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->v:Ljava/lang/Boolean;

    iput v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->y:I

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->B:Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;Lcom/lawyee/wenshuapp/vo/DocInfoVo;)Lcom/lawyee/wenshuapp/vo/DocInfoVo;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    return-object p1
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->u:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->A:Ljava/util/List;

    return-object p1
.end method

.method private b(I)V
    .locals 1

    iget v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    const-string p1, "contentfontsize"

    iget v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    invoke-static {p0, p1, v0}, Lcom/lawyee/wenshuapp/util/h;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->n()V

    return-void
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->l:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/vo/DocInfoVo;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    return-object p0
.end method

.method static synthetic d(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->A:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->o()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->n()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->u:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->C:Z

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->o()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lawyee/wenshuapp/a/b;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/Boolean;)V

    const-string v0, "\u6587\u4e66\u6b63\u6587\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v1, v0}, Lcom/lawyee/wenshuapp/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->k:Ljava/lang/String;

    new-instance v2, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Lcom/lawyee/wenshuapp/a/a$a;)V

    :goto_0
    return-void
.end method

.method private o()V
    .locals 14

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getQwContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getS32()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t<br/><br/><div style=\"text-align: center;font-weight: bold;TEXT-ALIGN: center; LINE-HEIGHT: 23px; MARGIN: 0.5pt 0cm; FONT-FAMILY: \u5fae\u8f6f\u96c5\u9ed1; FONT-SIZE: 25px;\">\n\u4e0d\u516c\u5f00\u7406\u7531\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getS32()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0d\u516c\u5f00\u7406\u7531"

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</div><br/><br/><br/><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    const-string v9, "file:///android_asset/"

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    iget v2, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    iget-object v3, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->l:[Ljava/lang/String;

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->D:Ljava/lang/String;

    iget-object v6, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getViewCount()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->generateHtml(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "text/html"

    const-string v12, "utf-8"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    const-string v9, "file:///android_asset/"

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    iget v2, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    iget-object v3, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->l:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getQwContent()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->D:Ljava/lang/String;

    iget-object v6, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->z:Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getViewCount()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->generateHtml(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u65e0\u5173\u8054\u6587\u4e66"

    invoke-static {p0, v0}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->p:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private q()V
    .locals 2

    const-string v0, "contentfontsize"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/lawyee/wenshuapp/util/h;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    return-void
.end method

.method private r()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    :goto_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$3;-><init>(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private s()V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f0001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->x:Landroid/app/Dialog;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    const/4 v2, 0x1

    const v3, 0x7f060050

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const v1, 0x7f090072

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    const v1, 0x7f090071

    goto :goto_0

    :cond_1
    const v1, 0x7f090073

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->x:Landroid/app/Dialog;

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

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    const p1, 0x7f0c0027

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "docid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->k:Ljava/lang/String;

    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->l:[Ljava/lang/String;

    const-string v0, "caseName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->D:Ljava/lang/String;

    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->E:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->q()V

    const p1, 0x7f090167

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->r:Landroid/widget/TextView;

    const p1, 0x7f09016b

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->n:Landroid/widget/TextView;

    const p1, 0x7f09016d

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->o:Landroid/widget/TextView;

    const p1, 0x7f09016e

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->p:Landroid/widget/ImageView;

    const p1, 0x7f090168

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->q:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->q:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance p1, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->B:Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->q:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->B:Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->q:Landroid/widget/ListView;

    new-instance v0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f090166

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->s:Landroid/view/View;

    const p1, 0x7f090169

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->t:Landroid/view/View;

    const p1, 0x7f09016f

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->r()V

    const p1, 0x7f09016a

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->onChangeContent(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onChangeContent(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09016a

    if-eq p1, v0, :cond_1

    const v0, 0x7f09016c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->p()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m()V

    :goto_0
    return-void
.end method

.method public onFontSizeClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->w:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    :goto_1
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->b(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090071
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->m:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onHomeClick(Landroid/view/View;)V

    return-void
.end method

.method public onSetFontSizeClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->s()V

    return-void
.end method
