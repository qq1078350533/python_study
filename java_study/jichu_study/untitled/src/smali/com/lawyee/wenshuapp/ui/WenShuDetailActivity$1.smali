.class Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

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

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;

    if-nez p2, :cond_1

    return-void

    :cond_1
    check-cast p1, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;->getS5()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    const-class p5, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "docid"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "keyword"

    iget-object p4, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p4}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->b(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "caseName"

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;->getS1()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "time"

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;->getS31()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$1;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-virtual {p1, p3}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
