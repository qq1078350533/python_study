.class public Lcom/lawyee/wenshuapp/config/ApplicationSet;
.super Landroid/app/Application;


# static fields
.field private static h:Lcom/lawyee/wenshuapp/config/ApplicationSet;


# instance fields
.field private a:Lcom/lawyee/wenshuapp/vo/SearchVO;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Jiean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Cls;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Spcx;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/lawyee/wenshuapp/vo/DevInfoVO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a()Lcom/lawyee/wenshuapp/config/ApplicationSet;
    .locals 2

    const-class v0, Lcom/lawyee/wenshuapp/config/ApplicationSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h:Lcom/lawyee/wenshuapp/config/ApplicationSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static b()V
    .locals 1

    const-string v0, "com.lawyee.wenshuapp.vo."

    sput-object v0, Lnet/lawyee/mobilelib/a/b;->a:Ljava/lang/String;

    const-string v0, "wenshuapp"

    sput-object v0, Lcom/lawyee/wenshuapp/config/a;->b:Ljava/lang/String;

    return-void
.end method

.method private j()V
    .locals 4

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->dataFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->loadVO(Ljava/lang/String;)Lnet/lawyee/mobilelib/vo/BaseVO;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/DevInfoVO;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-instance v1, Lcom/lawyee/wenshuapp/vo/DevInfoVO;

    invoke-direct {v1}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;-><init>()V

    invoke-static {}, Lnet/lawyee/mobilelib/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->setDevid(Ljava/lang/String;)V

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a(Lcom/lawyee/wenshuapp/vo/DevInfoVO;Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/lawyee/wenshuapp/vo/DevInfoVO;Z)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g:Lcom/lawyee/wenshuapp/vo/DevInfoVO;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g:Lcom/lawyee/wenshuapp/vo/DevInfoVO;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->dataFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->saveVO(Lnet/lawyee/mobilelib/vo/BaseVO;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g:Lcom/lawyee/wenshuapp/vo/DevInfoVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/DevInfoVO;->getDevid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/Anyou;->getAllAnyouWithAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Jiean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->c:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/Jiean;->getAllJieanWithAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a:Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSearchVOWithAssets(Landroid/content/Context;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a:Lcom/lawyee/wenshuapp/vo/SearchVO;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a:Lcom/lawyee/wenshuapp/vo/SearchVO;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Cls;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getSearchTypeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->d:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Spcx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lawyee/wenshuapp/vo/Spcx;->getAllSpcxWithAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->e:Ljava/util/List;

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/lawyee/wenshuapp/config/ApplicationSet;->h:Lcom/lawyee/wenshuapp/config/ApplicationSet;

    invoke-direct {p0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->j()V

    return-void
.end method
