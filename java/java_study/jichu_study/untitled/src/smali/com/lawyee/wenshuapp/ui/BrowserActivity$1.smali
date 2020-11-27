.class Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/BrowserActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->a(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->b(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->c(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->a(Lcom/lawyee/wenshuapp/ui/BrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->a(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, ".pdf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$1;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
