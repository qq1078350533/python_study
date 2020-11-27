.class Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->n()V
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

    iput-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->checkError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_1
    const-class v0, Lcom/lawyee/wenshuapp/vo/EncryptVO;

    invoke-static {p2, v0}, Lcom/lawyee/wenshuapp/util/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/EncryptVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lawyee/wenshuapp/util/l;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lawyee/wenshuapp/util/l;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getData()Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/EncryptVO$DataBean;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_3
    const-class p1, Lcom/lawyee/wenshuapp/ui/ListActivity;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/EncryptVO;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/util/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;Lcom/lawyee/wenshuapp/vo/DocInfoVo;)Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->c(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->getDocInfoVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->getRelWenshu()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->a(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {v0}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->d(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/adapter/RelateWenShuListAdapter;->setData(Ljava/util/List;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->c(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    const-string v0, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:\u65e0\u6cd5\u89e3\u6790\u8fd4\u56de\u7684\u5185\u5bb9"

    invoke-static {p1, v0}, Lcom/lawyee/wenshuapp/util/k;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-class p1, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7d\u6587\u4e66\u6b63\u6587\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->c(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Lcom/lawyee/wenshuapp/vo/DocInfoVo;

    move-result-object p1

    iget-object p2, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p2}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->e(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lawyee/wenshuapp/vo/DocInfoVo;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity$2;->a:Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;

    invoke-static {p1}, Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;->f(Lcom/lawyee/wenshuapp/ui/WenShuDetailActivity;)V

    return-void
.end method
