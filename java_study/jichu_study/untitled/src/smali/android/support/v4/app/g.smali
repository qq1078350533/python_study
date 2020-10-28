.class public abstract Landroid/support/v4/app/g;
.super Landroid/support/v4/app/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/e;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/support/v4/app/i;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    new-instance v0, Landroid/support/v4/app/i;

    invoke-direct {v0}, Landroid/support/v4/app/i;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/i;

    iput-object p1, p0, Landroid/support/v4/app/g;->a:Landroid/app/Activity;

    const-string p1, "context == null"

    invoke-static {p2, p1}, Landroid/support/v4/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/support/v4/app/g;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {p3, p1}, Landroid/support/v4/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroid/support/v4/app/g;->d:Landroid/os/Handler;

    iput p4, p0, Landroid/support/v4/app/g;->e:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/g;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/g;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/g;->e:I

    return v0
.end method

.method f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/app/Activity;

    return-object v0
.end method

.method g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method h()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->d:Landroid/os/Handler;

    return-object v0
.end method

.method i()Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/i;

    return-object v0
.end method
