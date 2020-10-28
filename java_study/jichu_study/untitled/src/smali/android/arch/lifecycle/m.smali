.class public Landroid/arch/lifecycle/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/m$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/arch/lifecycle/m$a;

.field private final b:Landroid/arch/lifecycle/n;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/n;Landroid/arch/lifecycle/m$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/m$a;

    iput-object p1, p0, Landroid/arch/lifecycle/m;->b:Landroid/arch/lifecycle/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroid/arch/lifecycle/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/l;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/arch/lifecycle/m;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/l;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/m;->b:Landroid/arch/lifecycle/n;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/n;->a(Ljava/lang/String;)Landroid/arch/lifecycle/l;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/m$a;

    invoke-interface {v0, p2}, Landroid/arch/lifecycle/m$a;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/l;

    move-result-object p2

    iget-object v0, p0, Landroid/arch/lifecycle/m;->b:Landroid/arch/lifecycle/n;

    invoke-virtual {v0, p1, p2}, Landroid/arch/lifecycle/n;->a(Ljava/lang/String;Landroid/arch/lifecycle/l;)V

    return-object p2
.end method
