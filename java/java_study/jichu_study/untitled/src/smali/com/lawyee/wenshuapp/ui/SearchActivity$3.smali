.class Lcom/lawyee/wenshuapp/ui/SearchActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter$OnRecyclerItemClickListener;


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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClickListener(Landroid/view/View;ILcom/lawyee/wenshuapp/vo/SuggestVO;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$3;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void
.end method
