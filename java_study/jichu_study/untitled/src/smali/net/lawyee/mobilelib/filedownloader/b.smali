.class public Lnet/lawyee/mobilelib/filedownloader/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/lawyee/mobilelib/filedownloader/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Lnet/lawyee/mobilelib/filedownloader/c$a;

.field private e:Z

.field private f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/SharedPreferences;

.field private i:Lnet/lawyee/mobilelib/filedownloader/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x5

    iput v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->d:Lnet/lawyee/mobilelib/filedownloader/c$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->e:Z

    const-string v0, "luffy"

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->g:Ljava/lang/String;

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lnet/lawyee/mobilelib/filedownloader/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lnet/lawyee/mobilelib/filedownloader/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x7d0

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0x1e

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Lnet/lawyee/mobilelib/filedownloader/b$1;

    invoke-direct {p1, p0}, Lnet/lawyee/mobilelib/filedownloader/b$1;-><init>(Lnet/lawyee/mobilelib/filedownloader/b;)V

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->d:Lnet/lawyee/mobilelib/filedownloader/c$a;

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->a:Landroid/content/Context;

    const-string v0, "UserInfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->h:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->h:Landroid/content/SharedPreferences;

    const-string v0, "UserID"

    invoke-static {}, Lnet/lawyee/mobilelib/filedownloader/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->g:Ljava/lang/String;

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lnet/lawyee/mobilelib/filedownloader/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/filedownloader/b;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->b:Ljava/util/ArrayList;

    new-instance v0, Lnet/lawyee/mobilelib/filedownloader/a/a;

    invoke-direct {v0, p1}, Lnet/lawyee/mobilelib/filedownloader/a/a;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lnet/lawyee/mobilelib/filedownloader/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/lawyee/mobilelib/filedownloader/a/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lnet/lawyee/mobilelib/filedownloader/a/a/a;

    new-instance v3, Lnet/lawyee/mobilelib/filedownloader/c;

    iget-object v7, p0, Lnet/lawyee/mobilelib/filedownloader/b;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-boolean v9, p0, Lnet/lawyee/mobilelib/filedownloader/b;->e:Z

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lnet/lawyee/mobilelib/filedownloader/c;-><init>(Landroid/content/Context;Lnet/lawyee/mobilelib/filedownloader/a/a/a;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;ZZ)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/b;->d:Lnet/lawyee/mobilelib/filedownloader/c$a;

    invoke-virtual {v3, v4}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Lnet/lawyee/mobilelib/filedownloader/c$a;)V

    const-string v4, "public"

    iget-object v5, p0, Lnet/lawyee/mobilelib/filedownloader/b;->i:Lnet/lawyee/mobilelib/filedownloader/a;

    invoke-virtual {v3, v4, v5}, Lnet/lawyee/mobilelib/filedownloader/c;->a(Ljava/lang/String;Lnet/lawyee/mobilelib/filedownloader/a;)V

    iget-object v4, p0, Lnet/lawyee/mobilelib/filedownloader/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lnet/lawyee/mobilelib/filedownloader/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-virtual {v2}, Lnet/lawyee/mobilelib/filedownloader/c;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
