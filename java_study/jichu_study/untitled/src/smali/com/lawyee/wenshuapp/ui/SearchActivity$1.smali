.class Lcom/lawyee/wenshuapp/ui/SearchActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->b(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->c(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->c(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    new-instance v1, Lcom/lawyee/wenshuapp/a/b;

    invoke-direct {v1, v0}, Lcom/lawyee/wenshuapp/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;Lcom/lawyee/wenshuapp/a/b;)Lcom/lawyee/wenshuapp/a/b;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->e(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/a/b;

    move-result-object v0

    new-instance v1, Lcom/lawyee/wenshuapp/ui/SearchActivity$1$1;

    invoke-direct {v1, p0}, Lcom/lawyee/wenshuapp/ui/SearchActivity$1$1;-><init>(Lcom/lawyee/wenshuapp/ui/SearchActivity$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Lcom/lawyee/wenshuapp/a/a$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
