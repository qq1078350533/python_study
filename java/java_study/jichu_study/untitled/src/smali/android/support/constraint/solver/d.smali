.class public Landroid/support/constraint/solver/d;
.super Landroid/support/constraint/solver/b;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/b;-><init>(Landroid/support/constraint/solver/c;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/constraint/solver/b;->d(Landroid/support/constraint/solver/SolverVariable;)V

    iget v0, p1, Landroid/support/constraint/solver/SolverVariable;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/solver/SolverVariable;->i:I

    return-void
.end method
