.class public Lcom/lawyee/wenshuapp/a/b;
.super Lcom/lawyee/wenshuapp/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/lawyee/wenshuapp/a/a$a;)V
    .locals 3

    const-string v0, "WenShuService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAllFileInfoByIDNew fileId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "docInfoSearch"

    iput-object v0, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;)Lnet/lawyee/mobilelib/a/a;

    move-result-object v0

    const-string v1, "docId"

    invoke-virtual {v0, v1, p1}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ciphertext"

    invoke-static {}, Lcom/lawyee/wenshuapp/util/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/lawyee/wenshuapp/a/b;->a(Lcom/lawyee/wenshuapp/a/a$a;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lnet/lawyee/mobilelib/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/lawyee/wenshuapp/a/a$b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;)Lnet/lawyee/mobilelib/a/a;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "cpws"

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "smartTipSearch"

    iput-object v1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lnet/lawyee/mobilelib/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/lawyee/wenshuapp/a/b;->a(Lcom/lawyee/wenshuapp/a/a$b;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/lawyee/wenshuapp/a/b;->a(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/lawyee/wenshuapp/a/b;->a(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;IILcom/lawyee/wenshuapp/a/a$a;)V
    .locals 3

    const-string v0, "WenShuService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "condition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "queryDoc"

    iput-object v0, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;)Lnet/lawyee/mobilelib/a/a;

    move-result-object v0

    const-string v1, "ciphertext"

    invoke-static {}, Lcom/lawyee/wenshuapp/util/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sortFields"

    const-string v2, "s50:desc"

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "queryCondition"

    invoke-virtual {v0, v1, p1}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "pageNum"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "pageSize"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, p4}, Lcom/lawyee/wenshuapp/a/b;->a(Lcom/lawyee/wenshuapp/a/a$a;)V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lnet/lawyee/mobilelib/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/lawyee/wenshuapp/a/a$b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;)Lnet/lawyee/mobilelib/a/a;

    move-result-object v0

    const-string v1, "app"

    const-string v2, "cpws"

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wsCountSearch"

    iput-object v1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/lawyee/mobilelib/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/a/b;->a(Lcom/lawyee/wenshuapp/a/a$b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/a/b;->a(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/a/b;->a(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/lawyee/wenshuapp/a/a$b;)V
    .locals 4

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;)Lnet/lawyee/mobilelib/a/a;

    move-result-object v0

    const-string v1, "mpUpdateData"

    iput-object v1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    const-string v1, "devtype"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/lawyee/mobilelib/a/a;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/lawyee/mobilelib/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/a/b;->a(Lcom/lawyee/wenshuapp/a/a$b;)V

    invoke-virtual {p0, v2}, Lcom/lawyee/wenshuapp/a/b;->a(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lawyee/wenshuapp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
