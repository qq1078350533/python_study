.class public Landroid/support/constraint/solver/c;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/support/constraint/solver/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/g$a<",
            "Landroid/support/constraint/solver/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/constraint/solver/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/solver/g$a<",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field c:[Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/solver/g$b;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/g$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/c;->a:Landroid/support/constraint/solver/g$a;

    new-instance v0, Landroid/support/constraint/solver/g$b;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/g$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/c;->b:Landroid/support/constraint/solver/g$a;

    const/16 v0, 0x20

    new-array v0, v0, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v0, p0, Landroid/support/constraint/solver/c;->c:[Landroid/support/constraint/solver/SolverVariable;

    return-void
.end method
