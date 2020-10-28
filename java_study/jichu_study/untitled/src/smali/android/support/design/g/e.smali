.class public Landroid/support/design/g/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/design/g/a;

.field private static final b:Landroid/support/design/g/b;


# instance fields
.field private c:Landroid/support/design/g/a;

.field private d:Landroid/support/design/g/a;

.field private e:Landroid/support/design/g/a;

.field private f:Landroid/support/design/g/a;

.field private g:Landroid/support/design/g/b;

.field private h:Landroid/support/design/g/b;

.field private i:Landroid/support/design/g/b;

.field private j:Landroid/support/design/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/design/g/a;

    invoke-direct {v0}, Landroid/support/design/g/a;-><init>()V

    sput-object v0, Landroid/support/design/g/e;->a:Landroid/support/design/g/a;

    new-instance v0, Landroid/support/design/g/b;

    invoke-direct {v0}, Landroid/support/design/g/b;-><init>()V

    sput-object v0, Landroid/support/design/g/e;->b:Landroid/support/design/g/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/design/g/e;->a:Landroid/support/design/g/a;

    iput-object v0, p0, Landroid/support/design/g/e;->c:Landroid/support/design/g/a;

    iput-object v0, p0, Landroid/support/design/g/e;->d:Landroid/support/design/g/a;

    iput-object v0, p0, Landroid/support/design/g/e;->e:Landroid/support/design/g/a;

    iput-object v0, p0, Landroid/support/design/g/e;->f:Landroid/support/design/g/a;

    sget-object v0, Landroid/support/design/g/e;->b:Landroid/support/design/g/b;

    iput-object v0, p0, Landroid/support/design/g/e;->g:Landroid/support/design/g/b;

    iput-object v0, p0, Landroid/support/design/g/e;->h:Landroid/support/design/g/b;

    iput-object v0, p0, Landroid/support/design/g/e;->i:Landroid/support/design/g/b;

    iput-object v0, p0, Landroid/support/design/g/e;->j:Landroid/support/design/g/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/g/a;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->c:Landroid/support/design/g/a;

    return-object v0
.end method

.method public a(Landroid/support/design/g/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/g/e;->g:Landroid/support/design/g/b;

    return-void
.end method

.method public b()Landroid/support/design/g/a;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->d:Landroid/support/design/g/a;

    return-object v0
.end method

.method public c()Landroid/support/design/g/a;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->e:Landroid/support/design/g/a;

    return-object v0
.end method

.method public d()Landroid/support/design/g/a;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->f:Landroid/support/design/g/a;

    return-object v0
.end method

.method public e()Landroid/support/design/g/b;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->g:Landroid/support/design/g/b;

    return-object v0
.end method

.method public f()Landroid/support/design/g/b;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->h:Landroid/support/design/g/b;

    return-object v0
.end method

.method public g()Landroid/support/design/g/b;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->i:Landroid/support/design/g/b;

    return-object v0
.end method

.method public h()Landroid/support/design/g/b;
    .locals 1

    iget-object v0, p0, Landroid/support/design/g/e;->j:Landroid/support/design/g/b;

    return-object v0
.end method
