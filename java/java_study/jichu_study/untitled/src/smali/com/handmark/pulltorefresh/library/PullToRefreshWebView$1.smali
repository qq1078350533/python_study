.class final Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$c<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
