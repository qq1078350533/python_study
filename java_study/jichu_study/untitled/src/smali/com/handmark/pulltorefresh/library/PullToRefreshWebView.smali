.class public Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {p1, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;)V

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast p1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {p1, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;)V

    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    sget p1, Lcom/handmark/pulltorefresh/library/d$d;->webview:I

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setId(I)V

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected d()Z
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected e()Z
    .locals 6

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v4, Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
