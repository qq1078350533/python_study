.class Lcom/lawyee/wenshuapp/ui/ListActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/ListActivity;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/ui/ListActivity;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/ui/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->j(Lcom/lawyee/wenshuapp/ui/ListActivity;)I

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u66f4\u591a\u6587\u4e66\u5217\u8868\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u66f4\u591a\u6587\u4e66\u5217\u8868\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->checkError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->j(Lcom/lawyee/wenshuapp/ui/ListActivity;)I

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u66f4\u591a\u6587\u4e66\u5217\u8868\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u66f4\u591a\u6587\u4e66\u5217\u8868\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/ui/ListActivity;Z)V

    const-class v0, Lcom/lawyee/wenshuapp/vo/EncryptVO;

    invoke-static {p2, v0}, Lcom/lawyee/wenshuapp/util/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/EncryptVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lawyee/wenshuapp/util/l;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lawyee/wenshuapp/util/l;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u6587\u4e66\u5217\u8868\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u6587\u4e66\u5217\u8868\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_4
    const-class p1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->parserVOs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->parserGuanlianVOs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    move v0, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getWenshuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getWenshuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lawyee/wenshuapp/vo/WenShuListVO;

    invoke-virtual {v4}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->getRelatewenshus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lawyee/wenshuapp/vo/WenShuListVO;->setRelatewenshus(Ljava/util/ArrayList;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p2, p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/ui/ListActivity;Ljava/util/List;)V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-static {p2, v1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->a(Lcom/lawyee/wenshuapp/ui/ListActivity;Z)V

    :cond_9
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/ListActivity;->b(Lcom/lawyee/wenshuapp/ui/ListActivity;)Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/ListActivity;->i(Lcom/lawyee/wenshuapp/ui/ListActivity;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/ListActivity$4;->a:Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/ListActivity;->c(Lcom/lawyee/wenshuapp/ui/ListActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/lawyee/wenshuapp/adapter/WenShuListAdapter;->setData(Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method
