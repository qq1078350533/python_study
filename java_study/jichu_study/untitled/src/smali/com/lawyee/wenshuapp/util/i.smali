.class public Lcom/lawyee/wenshuapp/util/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/util/i$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "i"

.field private static c:Ljava/lang/String; = "/searchhistory.dat"

.field private static e:Lcom/lawyee/wenshuapp/util/i;


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lawyee/wenshuapp/util/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/lawyee/wenshuapp/util/i;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/i;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/i;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/lawyee/wenshuapp/util/i;
    .locals 1

    sget-object v0, Lcom/lawyee/wenshuapp/util/i;->e:Lcom/lawyee/wenshuapp/util/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lawyee/wenshuapp/util/i;

    invoke-direct {v0, p0}, Lcom/lawyee/wenshuapp/util/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lawyee/wenshuapp/util/i;->e:Lcom/lawyee/wenshuapp/util/i;

    :cond_0
    sget-object p0, Lcom/lawyee/wenshuapp/util/i;->e:Lcom/lawyee/wenshuapp/util/i;

    return-object p0
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->f:Landroid/content/Context;

    invoke-static {v1}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lawyee/wenshuapp/util/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/vo/BaseVO;->loadVOList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->f:Landroid/content/Context;

    invoke-static {v1}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lawyee/wenshuapp/util/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lnet/lawyee/mobilelib/vo/BaseVO;->saveVOList(Ljava/util/ArrayList;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/util/i;->b()V

    return-void
.end method


# virtual methods
.method public a(Lnet/lawyee/mobilelib/vo/BaseVO;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/lawyee/mobilelib/vo/BaseVO;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/lawyee/wenshuapp/util/i$a;)V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(IZ)Z
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/i;->e()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/lawyee/wenshuapp/vo/SearchVO;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lawyee/wenshuapp/util/i;->a(Lnet/lawyee/mobilelib/vo/BaseVO;Z)Z

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/lawyee/wenshuapp/util/i;->d:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/i;->e()V

    return v3

    :cond_2
    :goto_0
    return v0
.end method

.method public a(Lnet/lawyee/mobilelib/vo/BaseVO;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lawyee/wenshuapp/util/i;->a(Lnet/lawyee/mobilelib/vo/BaseVO;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/lawyee/wenshuapp/util/i;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/util/i$a;

    invoke-interface {v1}, Lcom/lawyee/wenshuapp/util/i$a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/lawyee/wenshuapp/util/i$a;)V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/util/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/util/i;->e()V

    :cond_1
    :goto_0
    return-void
.end method
