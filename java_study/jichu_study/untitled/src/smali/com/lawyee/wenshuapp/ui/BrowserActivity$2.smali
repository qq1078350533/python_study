.class Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;
.super Landroid/webkit/WebChromeClient;


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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->a(Lcom/lawyee/wenshuapp/ui/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/BrowserActivity$2;->a:Lcom/lawyee/wenshuapp/ui/BrowserActivity;

    invoke-virtual {v0, p2}, Lcom/lawyee/wenshuapp/ui/BrowserActivity;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
