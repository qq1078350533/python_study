.class public Lnet/lawyee/mobilelib/filedownloader/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lawyee/mobilelib/filedownloader/c$a;,
        Lnet/lawyee/mobilelib/filedownloader/c$b;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Lnet/lawyee/mobilelib/filedownloader/a/a;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/lawyee/mobilelib/filedownloader/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lnet/lawyee/mobilelib/filedownloader/c$a;

.field private m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

.field private n:Lnet/lawyee/mobilelib/filedownloader/c$b;

.field private o:J

.field private p:J

.field private q:I

.field private r:I

.field private s:Z

.field private t:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/lawyee/mobilelib/filedownloader/a/a/a;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->d:I

    const/4 v1, 0x3

    iput v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->e:I

    const/4 v2, 0x4

    iput v2, p0, Lnet/lawyee/mobilelib/filedownloader/c;->f:I

    iput-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/lawyee/mobilelib/filedownloader/c;->o:J

    iput-wide v2, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    iput v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->q:I

    iput v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->r:I

    iput-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->s:Z

    new-instance v0, Lnet/lawyee/mobilelib/filedownloader/c$1;

    invoke-direct {v0, p0}, Lnet/lawyee/mobilelib/filedownloader/c$1;-><init>(Lnet/lawyee/mobilelib/filedownloader/c;)V

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->a:Landroid/os/Handler;

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->h:Landroid/content/Context;

    iput-boolean p5, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    iput-object p3, p0, Lnet/lawyee/mobilelib/filedownloader/c;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p4, p0, Lnet/lawyee/mobilelib/filedownloader/c;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->f()J

    move-result-wide p3

    iput-wide p3, p0, Lnet/lawyee/mobilelib/filedownloader/c;->o:J

    invoke-virtual {p2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->g()J

    move-result-wide p3

    iput-wide p3, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    new-instance p3, Lnet/lawyee/mobilelib/filedownloader/a/a;

    invoke-direct {p3, p1}, Lnet/lawyee/mobilelib/filedownloader/a/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lnet/lawyee/mobilelib/filedownloader/c;->j:Lnet/lawyee/mobilelib/filedownloader/a/a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    iput-object p2, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    if-eqz p6, :cond_0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->g()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->q:I

    return p0
.end method

.method static synthetic a(Lnet/lawyee/mobilelib/filedownloader/c;I)I
    .locals 0

    iput p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->q:I

    return p1
.end method

.method static synthetic a(Lnet/lawyee/mobilelib/filedownloader/c;J)J
    .locals 0

    iput-wide p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->o:J

    return-wide p1
.end method

.method static synthetic a(Lnet/lawyee/mobilelib/filedownloader/c;Lnet/lawyee/mobilelib/filedownloader/c$b;)Lnet/lawyee/mobilelib/filedownloader/c$b;
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->n:Lnet/lawyee/mobilelib/filedownloader/c$b;

    return-object p1
.end method

.method static synthetic a(Lnet/lawyee/mobilelib/filedownloader/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->s:Z

    return p1
.end method

.method static synthetic b(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->r:I

    return p0
.end method

.method static synthetic b(Lnet/lawyee/mobilelib/filedownloader/c;J)J
    .locals 0

    iput-wide p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    return-wide p1
.end method

.method static synthetic c(Lnet/lawyee/mobilelib/filedownloader/c;)J
    .locals 2

    iget-wide v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    return-wide v0
.end method

.method static synthetic d(Lnet/lawyee/mobilelib/filedownloader/c;)J
    .locals 2

    iget-wide v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->o:J

    return-wide v0
.end method

.method static synthetic e(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->d:I

    return p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->h:Landroid/content/Context;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/a/a/a;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    return-object p0
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->h:Landroid/content/Context;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic g(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    iget-wide v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b(J)V

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->j:Lnet/lawyee/mobilelib/filedownloader/a/a;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v0, v1}, Lnet/lawyee/mobilelib/filedownloader/a/a;->a(Lnet/lawyee/mobilelib/filedownloader/a/a/a;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lawyee/mobilelib/filedownloader/a;

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->c()Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a;->a(Lnet/lawyee/mobilelib/filedownloader/a/a/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->g()V

    return-void
.end method

.method static synthetic i(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->f:I

    return p0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lawyee/mobilelib/filedownloader/a;

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->c()Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v2

    iget-boolean v3, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    invoke-interface {v1, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a;->a(Lnet/lawyee/mobilelib/filedownloader/a/a/a;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic j(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->e:I

    return p0
.end method

.method private j()V
    .locals 4

    iget-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lawyee/mobilelib/filedownloader/a;

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->c()Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v2

    iget-boolean v3, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    invoke-interface {v1, v2, v3}, Lnet/lawyee/mobilelib/filedownloader/a;->b(Lnet/lawyee/mobilelib/filedownloader/a/a/a;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lawyee/mobilelib/filedownloader/a;

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->c()Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a;->b(Lnet/lawyee/mobilelib/filedownloader/a/a/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic l(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/a/a;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->j:Lnet/lawyee/mobilelib/filedownloader/a/a;

    return-object p0
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lawyee/mobilelib/filedownloader/a;

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->c()Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a;->c(Lnet/lawyee/mobilelib/filedownloader/a/a/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->l:Lnet/lawyee/mobilelib/filedownloader/c$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/lawyee/mobilelib/filedownloader/c$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic m(Lnet/lawyee/mobilelib/filedownloader/c;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->g:Z

    return p0
.end method

.method static synthetic n(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 2

    iget v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->q:I

    return v0
.end method

.method static synthetic o(Lnet/lawyee/mobilelib/filedownloader/c;)Lnet/lawyee/mobilelib/filedownloader/c$b;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->n:Lnet/lawyee/mobilelib/filedownloader/c$b;

    return-object p0
.end method

.method static synthetic p(Lnet/lawyee/mobilelib/filedownloader/c;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic q(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->c:I

    return p0
.end method

.method static synthetic r(Lnet/lawyee/mobilelib/filedownloader/c;)Z
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lnet/lawyee/mobilelib/filedownloader/c;)I
    .locals 0

    iget p0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->b:I

    return p0
.end method

.method static synthetic t(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->h()V

    return-void
.end method

.method static synthetic u(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->j()V

    return-void
.end method

.method static synthetic v(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->i()V

    return-void
.end method

.method static synthetic w(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->k()V

    return-void
.end method

.method static synthetic x(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->l()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lnet/lawyee/mobilelib/filedownloader/a;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public a(Lnet/lawyee/mobilelib/filedownloader/c$a;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->l:Lnet/lawyee/mobilelib/filedownloader/c$a;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->n:Lnet/lawyee/mobilelib/filedownloader/c$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->s:Z

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/filedownloader/c$b;->a()V

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->t:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->n:Lnet/lawyee/mobilelib/filedownloader/c$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->n:Lnet/lawyee/mobilelib/filedownloader/c$b;

    :cond_0
    return-void
.end method

.method public c()Lnet/lawyee/mobilelib/filedownloader/a/a/a;
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    iget-wide v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->p:J

    invoke-virtual {v0, v1, v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->b(J)V

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    return-object v0
.end method

.method public d()Z
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v1}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lnet/lawyee/mobilelib/filedownloader/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/c;->m:Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    invoke-virtual {v2}, Lnet/lawyee/mobilelib/filedownloader/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
