.class Landroid/support/transition/x;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a<",
            "Landroid/view/View;",
            "Landroid/support/transition/w;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/f<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/support/v4/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/transition/x;->a:Landroid/support/v4/e/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/transition/x;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/e/f;

    invoke-direct {v0}, Landroid/support/v4/e/f;-><init>()V

    iput-object v0, p0, Landroid/support/transition/x;->c:Landroid/support/v4/e/f;

    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0}, Landroid/support/v4/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/transition/x;->d:Landroid/support/v4/e/a;

    return-void
.end method
