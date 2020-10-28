.class Landroid/support/v4/app/Fragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$3;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/Lifecycle;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment$3;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ad:Landroid/arch/lifecycle/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment$3;->a:Landroid/support/v4/app/Fragment;

    new-instance v1, Landroid/arch/lifecycle/e;

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->ae:Landroid/arch/lifecycle/d;

    invoke-direct {v1, v2}, Landroid/arch/lifecycle/e;-><init>(Landroid/arch/lifecycle/d;)V

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->ad:Landroid/arch/lifecycle/e;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment$3;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ad:Landroid/arch/lifecycle/e;

    return-object v0
.end method
