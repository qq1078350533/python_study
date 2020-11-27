.class public Lcom/lawyee/wenshuapp/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/a/a$b;,
        Lcom/lawyee/wenshuapp/a/a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "a"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Landroid/content/Context;

.field private g:Ljava/lang/Boolean;

.field private h:Lcom/lawyee/wenshuapp/a/a$a;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lawyee/wenshuapp/a/a$b;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/lawyee/wenshuapp/a/a;->g:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->e:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/a/a;->a(Z)V

    const-string p1, ""

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->b:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->a:Ljava/lang/String;

    const/16 p1, 0xa

    iput p1, p0, Lcom/lawyee/wenshuapp/a/a;->d:I

    iput-boolean v0, p0, Lcom/lawyee/wenshuapp/a/a;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->i:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/lawyee/wenshuapp/a/a;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lawyee/wenshuapp/a/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/lawyee/wenshuapp/a/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->e()Lcom/lawyee/wenshuapp/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->e()Lcom/lawyee/wenshuapp/a/a$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/lawyee/wenshuapp/a/a$a;->a(ZLjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/lawyee/wenshuapp/a/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->e()Lcom/lawyee/wenshuapp/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->e()Lcom/lawyee/wenshuapp/a/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/lawyee/wenshuapp/a/a$a;->a(ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Lcom/lawyee/wenshuapp/a/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lawyee/wenshuapp/a/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/lawyee/wenshuapp/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->h:Lcom/lawyee/wenshuapp/a/a$a;

    return-void
.end method

.method public a(Lcom/lawyee/wenshuapp/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->m:Lcom/lawyee/wenshuapp/a/a$b;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v0

    const-string v1, "\u7f3a\u5c11\u6570\u636e\u5185\u5bb9"

    invoke-interface {v0, v1, p1}, Lcom/lawyee/wenshuapp/a/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lnet/lawyee/mobilelib/vo/a;

    invoke-direct {v2}, Lnet/lawyee/mobilelib/vo/a;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {p1, v2, v4}, Lnet/lawyee/mobilelib/a/b;->b(Ljava/lang/String;Lnet/lawyee/mobilelib/vo/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :pswitch_1
    invoke-static {p1, v2, v4}, Lnet/lawyee/mobilelib/a/b;->a(Ljava/lang/String;Lnet/lawyee/mobilelib/vo/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :pswitch_2
    invoke-static {p1, v2}, Lnet/lawyee/mobilelib/a/b;->a(Ljava/lang/String;Lnet/lawyee/mobilelib/vo/a;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-virtual {v2}, Lnet/lawyee/mobilelib/vo/a;->b()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v0

    invoke-virtual {v2}, Lnet/lawyee/mobilelib/vo/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lawyee/wenshuapp/a/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/lawyee/wenshuapp/a/a$b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_4
    invoke-static {p1}, Lnet/lawyee/mobilelib/a/b;->a(Ljava/lang/String;)Lnet/lawyee/mobilelib/vo/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/vo/a;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/lawyee/wenshuapp/a/a$b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->d()Lcom/lawyee/wenshuapp/a/a$b;

    move-result-object v1

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/vo/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/lawyee/wenshuapp/a/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u7f3a\u5c11\u8bf7\u6c42\u6570\u636e"

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/a/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/lawyee/wenshuapp/a/a;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/lawyee/wenshuapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_response_data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/lawyee/wenshuapp/a/a;->b:Ljava/lang/String;

    invoke-static {p2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/lawyee/wenshuapp/a/a;->c:Z

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    iget v0, p0, Lcom/lawyee/wenshuapp/a/a;->d:I

    int-to-double v2, v0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_response_data_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lcom/lawyee/wenshuapp/a/a;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lnet/lawyee/mobilelib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "\u7f3a\u5c11\u5185\u5bb9\u6570\u636e"

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/a/a;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/lawyee/wenshuapp/a/a;->a(ZLjava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/c;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    sget-object p1, Lcom/lawyee/wenshuapp/a/a;->f:Ljava/lang/String;

    const-string p2, "\u5f53\u524d\u65e0\u53ef\u7528\u7f51\u7edc"

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5f53\u524d\u65e0\u53ef\u7528\u7f51\u7edc"

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/a/a;->c(Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sget-object v2, Lcom/lawyee/wenshuapp/a/a;->f:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/lawyee/wenshuapp/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-static {}, Lcom/lawyee/wenshuapp/util/c;->a()Lcom/lawyee/wenshuapp/util/c$a;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/lawyee/wenshuapp/util/c$a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/lawyee/wenshuapp/util/a/a;

    const-string v2, "utf-8"

    new-instance v3, Lcom/lawyee/wenshuapp/a/a$1;

    invoke-direct {v3, p0}, Lcom/lawyee/wenshuapp/a/a$1;-><init>(Lcom/lawyee/wenshuapp/a/a;)V

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/lawyee/wenshuapp/util/a/a;-><init>(Ljava/util/Hashtable;Ljava/lang/String;ILcom/lawyee/wenshuapp/util/a/a$a;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/util/a/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/util/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/a/a;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/util/a/a;->a(Z)V

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p2, p0, Lcom/lawyee/wenshuapp/a/a;->e:Landroid/content/Context;

    const v2, 0x7f0e0160

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_7
    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/util/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/a/a;->n:Z

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Lcom/lawyee/wenshuapp/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->m:Lcom/lawyee/wenshuapp/a/a$b;

    return-object v0
.end method

.method public e()Lcom/lawyee/wenshuapp/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->h:Lcom/lawyee/wenshuapp/a/a$a;

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a;->j:Ljava/lang/String;

    return-object v0
.end method
