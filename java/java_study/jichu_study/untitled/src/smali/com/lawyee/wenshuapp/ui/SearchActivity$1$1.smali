.class Lcom/lawyee/wenshuapp/ui/SearchActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/SearchActivity$1;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/SearchActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u5173\u952e\u8bcd\u63a8\u8350\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/lawyee/wenshuapp/vo/SmartTipVo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/SmartTipVo;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->getkeyList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity$1;

    iget-object p2, p2, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->d(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity$1;

    iget-object v0, v0, Lcom/lawyee/wenshuapp/ui/SearchActivity$1;->a:Lcom/lawyee/wenshuapp/ui/SearchActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/SearchActivity;->a(Lcom/lawyee/wenshuapp/ui/SearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/lawyee/wenshuapp/adapter/SuggestListAdapter;->setData(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u5173\u952e\u8bcd\u63a8\u8350\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
