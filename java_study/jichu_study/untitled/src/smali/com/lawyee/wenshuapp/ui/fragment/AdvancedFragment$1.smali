.class Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/vo/SearchVO;

.field final synthetic b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;Lcom/lawyee/wenshuapp/vo/SearchVO;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    iput-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->a:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)Lcom/lawyee/wenshuapp/ui/SearchActivity;

    move-result-object p2

    const-class p4, Lcom/lawyee/wenshuapp/ui/AdvancedInputActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "index"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "searchvo"

    iget-object p4, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->a:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p4}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/Serializable;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->b(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)I

    move-result p2

    if-ne p3, p2, :cond_1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->a:Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    invoke-static {p3}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->c(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a(Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;)Lcom/lawyee/wenshuapp/ui/SearchActivity;

    move-result-object p1

    const-string p2, "\u8bf7\u5148\u9009\u62e9\u6848\u4ef6\u7c7b\u578b"

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p3, "ajlx"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment$1;->b:Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;

    const/16 p3, 0x271a

    invoke-virtual {p2, p1, p3}, Lcom/lawyee/wenshuapp/ui/fragment/AdvancedFragment;->a(Landroid/content/Intent;I)V

    return-void
.end method
