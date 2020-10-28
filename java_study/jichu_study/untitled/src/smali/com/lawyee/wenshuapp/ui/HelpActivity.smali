.class public Lcom/lawyee/wenshuapp/ui/HelpActivity;
.super Lcom/lawyee/wenshuapp/ui/BaseActivity;


# instance fields
.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/HelpActivity;->setContentView(I)V

    const p1, 0x7f090097

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/HelpActivity;->l:Landroid/widget/EditText;

    const p1, 0x7f090098

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/HelpActivity;->k:Landroid/widget/EditText;

    return-void
.end method

.method public onDe(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/HelpActivity;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/HelpActivity;->k:Landroid/widget/EditText;

    invoke-static {}, Lcom/lawyee/wenshuapp/util/j;->a()Lcom/lawyee/wenshuapp/util/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEn(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/HelpActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method
