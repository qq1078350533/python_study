.class Lcom/lawyee/wenshuapp/ui/SearchActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$2;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$2;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->b(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/vo/SearchVO;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
