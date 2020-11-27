.class public Lcom/lawyee/wenshuapp/ui/BrowserActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# instance fields
.field private k:Landroid/webkit/WebView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->n:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->l:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/ui/BrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    return-object p0
.end method

.method private m()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;-><init>(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;-><init>(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->setContentView(I)V

    const p1, 0x7f09004c

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    const p1, 0x7f09004d

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->l:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_browser_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "extr_browser_screen_landscape"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->n:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->setRequestedOrientation(I)V

    :goto_0
    const-string v0, "extra_browser_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m:Ljava/lang/String;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/empty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onHomeClick(Landroid/view/View;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lawyee/wenshuapp/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
