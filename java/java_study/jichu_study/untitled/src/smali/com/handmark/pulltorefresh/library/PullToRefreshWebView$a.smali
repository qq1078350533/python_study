.class final Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;
.super Landroid/webkit/WebView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()I
    .locals 4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    iget-object v1, v1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11

    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    move-object v1, p0

    iget-object v2, v1, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$a;->a()I

    move-result v7

    const/4 v8, 0x2

    const/high16 v9, 0x3fc00000    # 1.5f

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    move/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/handmark/pulltorefresh/library/c;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V

    return v0
.end method
